\documentclass{article}
\usepackage{unicode-math}
\setsansfont{XITSMath-Regular.otf}[
Path = /Library/Fonts/ ,
]

\usepackage{newunicodechar}
\newunicodechar{ᵇ}{\ensuremath{^b}}
\newunicodechar{₁}{\ensuremath{_1}}
\newunicodechar{₂}{\ensuremath{_2}}

\usepackage{float}
\floatstyle{boxed}
\restylefloat{figure}

\usepackage{iohk}

\usepackage[hidelinks]{hyperref}
\usepackage[links]{agda}

\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\Tx}{\type{Tx}}
\newcommand{\Ix}{\type{Ix}}
\newcommand{\TxId}{\type{TxId}}
\newcommand{\Addr}{\type{Addr}}
\newcommand{\UTxO}{\type{UTxO}}
\newcommand{\Coin}{\type{Coin}}
\newcommand{\TxIn}{\type{TxIn}}
\newcommand{\TxOut}{\type{TxOut}}
\newcommand{\UTxOEnv}{\type{UTxOEnv}}
\newcommand{\UTxOState}{\ensuremath{\type{UTxOState}}}

%%
%% Functions
%%
\newcommand{\txins}[1]{\fun{txins}~ \var{#1}}
\newcommand{\txouts}[1]{\fun{txouts}~ \var{#1}}
\newcommand{\txid}[1]{\fun{txid}~ \var{#1}}
\newcommand{\outs}[1]{\fun{outs}~ \var{#1}}
\newcommand{\balance}[1]{\fun{balance}~ \var{#1}}
\newcommand{\txfee}[1]{\fun{txfee}~ \var{#1}}

\newcommand{\wcard}[0]{\rule[-.5mm]{2mm}{.2mm}}
\newcommand{\leteq}{\ensuremath{\mathrel{\mathop:}=}}

\newtheorem{property}{Property}[section]


\begin{document}

\begin{code}[hide]

--{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}
{-# OPTIONS -v allTactics:100 #-}

open import Prelude

open import Algebra using (CommutativeMonoid)

import Function.Related.Propositional as FP

open import Data.List.Membership.Propositional
open import Data.List.Relation.Unary.All using (All; all?)
open import Data.Maybe.Properties using (just-injective)
open import Data.Maybe.Relation.Unary.Any using (dec)
open import Data.Nat using (_≤?_; _≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid; +-comm)
open import Data.Product.Properties

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Nullary.Product
open import Relation.Binary
open import Relation.Binary.PropositionalEquality

open import DecEq
open import FinMap renaming (FinMap to _↦_)
open import FinSet hiding (∅) renaming (FinSet to ℙ_)
open import FinSet.Properties
open import FinSet.Properties.Equality

open import PreludeImports
import PreludeImportsDecEq as P hiding (DecEq-Σ)

open import ComputationalRelation

open import DeriveComp
open import Reflection hiding (_≟_)
open import Tactic.Helpers
open import Tactic.MonoidSolver
open import TacticReasoning

open import MyDebugOptions
--open import Tactic.Defaults

module Ledger (
\end{code}

\section{Transactions}
\label{sec:transactions}

Transactions are defined in Figure~\ref{fig:defs:utxo-shelley}.
A transaction is made up of three pieces:

\begin{itemize}
  \item A set of transaction inputs.
    This derived type identifies an output from a previous transaction.
    It consists of a transaction id and an index to uniquely identify the output.
  \item An indexed collection of transaction outputs.
    The $\TxOut$ type is an address paired with a coin value.
  \item A transaction fee. This value will be added to the fee pot.
\end{itemize}

Finally, $\fun{txid}$ computes the transaction id of a given transaction.
This function must produce a unique id for each unique transaction body.
\textbf{We assume that} $\fun{txid}$ \textbf{is injective.}

\AgdaTarget{Ix, TxId, Addr, Coin, TxIn, TxOut, UTxO, Tx, txins, txouts, txfee, txid}
\begin{figure*}[h]
\emph{Abstract types}
\begin{code}
  Ix           -- index
  TxId         -- transaction id
  Addr         -- address
\end{code}
\emph{Derived types}
\begin{code}[hide]
  : Set) {{_ : DecEq TxId}} {{_ : DecEq Ix}} {{_ : DecEq Addr}} where
_≤ᵇ_ : ℕ → ℕ → Bool
n ≤ᵇ m = ⌊ n ≤? m ⌋

_≠_ : {A : Set} → A → A → Set
a ≠ b = ¬ a ≡ b

_⟨$⟩_ : {A B : Set} → A ↣ B → A → B
_⟨$⟩_ = FP.⇒→ {k = FP.injection}

instance
  _ = +-0-commutativeMonoid

  ≤-⁇ : _≤_ P.⁇²
  ≤-⁇ {x = x} {y} = P.⁇ (x ≤? y)

  convertDecEq : ∀ {A} ⦃ _ : DecEq A ⦄ → P.DecEq A
  convertDecEq ⦃ dec ⦄ = record { _≟_ = _≟_ }

Coin Slot TxIn TxOut UTxO : Set
\end{code}
\begin{code}
Coin    = ℕ
Slot    = ℕ -- TODO: make this abstract?
TxIn    = TxId × Ix
TxOut   = Addr × Coin
UTxO    = TxIn ↦ TxOut

record PParams : Set where
  field
    a : ℕ
    b : ℕ
\end{code}
\emph{Transaction types}
\begin{code}
record Tx : Set where
  field
    txins  : ℙ TxIn
    txouts : Ix ↦ TxOut
    txfee  : Coin
    txvldt : Maybe ℕ × Maybe ℕ
    txsize : ℕ
\end{code}
\emph{Abstract functions}
\begin{code}[hide]
open Tx
module _ (
\end{code}
\begin{code}
  txid : Tx ↣ TxId -- an injective function
\end{code}
\begin{code}[hide]
  ) where
\end{code}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\section{UTxO}
\label{sec:utxo}

Figure~\ref{fig:functions:utxo} defines functions needed for the UTxO transition system.
Figure~\ref{fig:ts-types:utxo-shelley} defines the types needed for the UTxO transition system.
The UTxO transition system is given in Figure~\ref{fig:rules:utxo-shelley}.

\begin{itemize}

  \item
    The function $\fun{outs}$ creates the unspent outputs generated by a transaction.
    It maps the transaction id and output index to the output.

  \item
    The $\fun{balance}$ function calculates sum total of all the coin in a given UTxO.
\end{itemize}

\AgdaTarget{outs, balance}
\begin{figure*}[h]
\begin{code}
  outs : Tx → UTxO
  outs tx = mapKeys (txid ⟨$⟩ tx ,_) $ txouts tx

  minfee : PParams → Tx → Coin
  minfee pp tx = PParams.a pp * txsize tx + PParams.b pp

  -- this has to be a type definition for inference to work
  data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Set where
    both  : ∀ {l r} → l ≤ slot × slot ≤ r → inInterval slot (just l  , just r)
    lower : ∀ {l}   → l ≤ slot            → inInterval slot (just l  , nothing)
    upper : ∀ {r}   → slot ≤ r            → inInterval slot (nothing , just r)
    none  :                                 inInterval slot (nothing , nothing)

  balance : UTxO → Coin
  balance utxo = Σ[ v ← utxo ] proj₂ (proj₂ v)
\end{code}
\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\AgdaTarget{UTxOEnv, UTxOState, \_⊢\_⇀⦇\_,UTXO⦈\_}
\begin{figure*}[h]
\emph{UTxO environment}
\begin{code}[hide]
  UTxOEnv UTxOState : Set
\end{code}
\begin{code}
  UTxOEnv = Slot
          × PParams
\end{code}
\emph{UTxO states}
\begin{code}
  UTxOState = UTxO -- UTxO
            × Coin -- fee pot
\end{code}
\emph{UTxO transitions}

\begin{code}[hide]
  variable
    tx : Tx
    utxo utxo' utxo1 utxo2 : UTxO
    fee fee' fees fees' : Coin
    utxoState utxoState' utxoState1 utxoState2 : UTxOState
    Γ : UTxOEnv
    s s' : UTxOState

  ⟦_⟧ : {A : Set} → A → A
  ⟦_⟧ = id

  instance
    _ : {a : ℙ TxIn} → (a ≡ ∅) P.⁇
    _ = P.⁇ ≟-∅

    ⁇-inInterval : {slot : Slot} {I : Maybe Slot × Maybe Slot} → inInterval slot I P.⁇
    ⁇-inInterval {slot} {just x  , just y } with x ≤? slot | slot ≤? y
    ... | no ¬p₁ | no ¬p₂ = P.⁇ no λ where (both (h₁ , h₂)) → ¬p₁ h₁
    ... | no ¬p₁ | yes p₂ = P.⁇ no λ where (both (h₁ , h₂)) → ¬p₁ h₁
    ... | yes p₁ | no ¬p₂ = P.⁇ no λ where (both (h₁ , h₂)) → ¬p₂ h₂
    ... | yes p₁ | yes p₂ = P.⁇ yes (both (p₁ , p₂))
    ⁇-inInterval {slot} {just x  , nothing} with x ≤? slot
    ... | no ¬p = P.⁇ no  (λ where (lower h) → ¬p h)
    ... | yes p = P.⁇ yes (lower p)
    ⁇-inInterval {slot} {nothing , just x } with slot ≤? x
    ... | no ¬p = P.⁇ no  (λ where (upper h) → ¬p h)
    ... | yes p = P.⁇ yes (upper p)
    ⁇-inInterval {slot} {nothing , nothing} = P.⁇ yes none

  data
\end{code}
\begin{code}
    _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
\end{code}
\caption{UTxO transition-system types}
\label{fig:ts-types:utxo-shelley}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
  data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}
\begin{code}
    UTXO-inductive :
      ∀ {Γ} {s} {tx}
      → let slot = proj₁ Γ
            pp   = proj₂ Γ
            utxo = proj₁ s
            fees = proj₂ s
        in
        txins tx ≠ ∅
      → inInterval slot (txvldt tx)
      → txins tx ⊆ dom utxo
      → let f = txfee tx in minfee pp tx ≤ f
      → balance (txins tx ◃ utxo) ≡ balance (outs tx) + f
      ────────────────────────────────
      Γ
        ⊢ s
        ⇀⦇ tx ,UTXO⦈
        ((txins tx ⋪ utxo) ∪ outs tx , fees + f)
\end{code}
\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}

\begin{code}[hide]

  unquoteDecl Computational-UTXO = deriveComputational (quote _⊢_⇀⦇_,UTXO⦈_) Computational-UTXO

  balance-∪ : utxo ∩ utxo' ≡ᵉ ∅ → balance (utxo ∪ utxo') ≡ balance utxo + balance utxo'
  balance-∪ {utxo} {utxo'} = indexedSum-∪ {s = utxo} {s' = utxo'}

  balance-cong : utxo ≡ᵉ utxo' → balance utxo ≡ balance utxo'
  balance-cong {utxo} {utxo'} = indexedSum-cong {s = utxo} {s' = utxo'}

  open TacticReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))
\end{code}

\begin{property}[\textbf{Preserve Balance}]
For all $\var{env}\in\UTxOEnv$, $\var{utxo},\var{utxo'}\in\UTxO$, $\var{fee},\var{fee'}\in\Coin$ and $\var{tx}\in\Tx$, if
\begin{code}[hide]
  pov :
\end{code}
\begin{code}[inline*]
    utxo ∩ outs tx ≡ ∅
\end{code}
and
\begin{code}[hide]
    →
\end{code}
\begin{code}[inline*]
        Γ ⊢ (utxo , fee) ⇀⦇ tx ,UTXO⦈ (utxo' , fee')
\end{code}
then
\begin{code}[hide]
    →
\end{code}
\begin{code}
        balance utxo + fee ≡ balance utxo' + fee'
\end{code}
\begin{code}[hide]
  pov {utxo} {tx} {_} {fee} h' (UTXO-inductive y x z x₁ x₂) =
    let
      h : utxo ∩ outs tx ≡ᵉ ∅
      h = subst ((utxo ∩ outs tx) ≡ᵉ_) h' (IsEquivalence.refl ≡ᵉ-isEquivalence {utxo ∩ outs tx})

      balance-eq : balance utxo ≡ balance ((txins tx ⋪ utxo) ∪ outs tx) + txfee tx
      balance-eq = begin
        balance utxo
          ≡˘⟨ balance-cong {utxo = (txins tx ⋪ utxo) ∪ (txins tx ◃ utxo)} {utxo' = utxo} (dom-res-ex-∪ (txins tx) utxo) ⟩
        balance ((txins tx ⋪ utxo) ∪ (txins tx ◃ utxo))
          ≡⟨ balance-∪ {txins tx ⋪ utxo} {txins tx ◃ utxo} (dom-res-ex-∩ (txins tx) utxo) ⟩
        balance (txins tx ⋪ utxo) + balance (txins tx ◃ utxo)
          ≡⟨ cong (balance (txins tx ⋪ utxo) +_) x₂ ⟩
        balance (txins tx ⋪ utxo) + (balance (outs tx) + txfee tx)
          ≡t⟨⟩
        balance (txins tx ⋪ utxo) + balance (outs tx) + txfee tx
          ≡˘⟨ cong (_+ txfee tx) (balance-∪ {txins tx ⋪ utxo} {outs tx} (dom-res-∩-empty (txins tx) utxo (outs tx) h)) ⟩
        balance ((txins tx ⋪ utxo) ∪ outs tx) + txfee tx ∎
    in begin
    balance utxo + fee                                        ≡⟨ cong (_+ fee) balance-eq ⟩
    balance ((txins tx ⋪ utxo) ∪ outs tx) + txfee tx + fee    ≡t⟨⟩
    balance ((txins tx ⋪ utxo) ∪ outs tx) + (txfee tx + fee)
              ≡˘⟨ cong (balance ((txins tx ⋪ utxo) ∪ outs tx) +_) (+-comm fee (txfee tx)) ⟩
    balance ((txins tx ⋪ utxo) ∪ outs tx) + (fee + txfee tx) ∎
\end{code}
\end{property}

\pagebreak
Note that this is not a function, but a relation. To make this
definition executable, we need to define a function that computes
the transition. We also prove that this indeed computes the
relation. Luckily, this can be automated.

\begin{figure*}[h]
\begin{code}
  UTXO-step : UTxOEnv → UTxOState → Tx → Maybe UTxOState
  UTXO-step = Computational.compute Computational-UTXO

  UTXO-step-computes-UTXO :
    UTXO-step Γ utxoState tx ≡ just utxoState'
    ⇔ Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
  UTXO-step-computes-UTXO = Computational.≡-just⇔STS Computational-UTXO
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}
\end{document}
