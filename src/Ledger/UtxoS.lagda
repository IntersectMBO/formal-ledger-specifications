\section{UTxO}
\label{sec:utxo}

\subsection{Accounting}

\begin{code}[hide]
{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}
{-# OPTIONS -v allTactics:100 #-}

open import Ledger.Prelude

open import Algebra using (CommutativeMonoid)

open import Data.Nat using (_≤?_; _≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid; +-comm)

open import Relation.Binary

open import Interface.Decidable.Instance

open import Tactic.Helpers
open import Tactic.MonoidSolver
open import Tactic.EquationalReasoning
open import Tactic.DeriveComp

open import MyDebugOptions
--open import Tactic.Defaults

open import PreludeImports

open import Ledger.Transaction
open import Ledger.TokenAlgebra

-- where should I define getValue

module Ledger.UtxoS (txs : TransactionStructure) where

instance
  _ = +-0-commutativeMonoid
  _ = Decidable²⇒Dec _≤?_


open TransactionStructure txs
open import Ledger.PParams Epoch
open import Ledger.Crypto

open TxBody
open TxWitnesses
open Tx

{-instance
  decTx : DecEq TxIn
  decTx = {!!} -}


-- Is This Wrong
-- getValue : TxOut → TokenAlgebra
-- getValue (fst , snd) = {!!}
--
-- _≥ᵗ_ : TokenAlgebra → TokenAlgebra → Set
-- m ≥ᵗ n = {!!}

-- this is easy to define (moved to transaction structure)
-- getValue : TxOut → ValueC
-- getValue (fst , snd) = snd

-- is this what we want?
--
--At this point I need to know that ValueC is an AssetId mapped to a Quantity
-- Or we could add this to the abstract definition of a token algebra
_≥ᵗ_ : ValueC → ValueC → Set
m ≥ᵗ n = {!!}

--scaledMinDeposit : TokenAlgebra → Coin → Coin
--scaledMinDeposit b mv = {!!}

utxoEntrySize : TxOut → MemoryEstimate
utxoEntrySize = {!!}

-- Same issue for serSize as getValue
--serSize : TokenAlgebra → MemoryEstimate
--serSize v = {!!}
--
--

serSize : ValueC → MemoryEstimate
serSize = {!!}

\end{code}

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

\AgdaTarget{outs, minfee, inInterval, balance}
\begin{figure*}[h]
\begin{code}
Slot : Set
Slot = ℕ

outs : TxBody → UTxO
outs tx = mapKeys (txid tx ,_) (λ where refl → refl) $ txouts tx

balance : UTxO → Coin
balance utxo = indexedSumᵐ (λ where (_ , (_ , x)) → coin x) (toFinMap utxo (finiteness (proj₁ utxo)))


-- Again would need to know that valueC is a map to a quantity to define this
-- am I changing pov here
--ubalance : UTxO → ValueC
--ubalance utxo = indexedSumᵐ (λ where (_ , (_ , x)) → x) (toFinMap utxo (finiteness (proj₁ utxo)))

-- TODO: figure out why this syntax makes Agda loop
-- balance' : UTxO → Coin
-- balance' utxo = Σᵐ'[ v ← utxo ] proj₂ v

minfee : PParams → TxBody → Coin
minfee pp tx = a * txsize tx + b
  where open PParams pp

-- this has to be a type definition for inference to work
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Set where
  both  : ∀ {l r} → l ≤ slot × slot ≤ r  →  inInterval slot (just l  , just r)
  lower : ∀ {l}   → l ≤ slot             →  inInterval slot (just l  , nothing)
  upper : ∀ {r}   → slot ≤ r             →  inInterval slot (nothing , just r)
  none  :                                   inInterval slot (nothing , nothing)

\end{code}

\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\AgdaTarget{UTxOEnv, UTxOState, \_⊢\_⇀⦇\_,UTXO⦈\_}
\begin{figure*}[h]
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Set where
  field slot    : Slot
        pparams : PParams
\end{code}
\emph{UTxO states}
\begin{code}
record UTxOState : Set where
  field utxo : UTxO
        fees : Coin
\end{code}
\emph{UTxO transitions}

\begin{code}[hide]
private variable
  tx : TxBody
  utxo utxo' utxo1 utxo2 : UTxO
  fee fee' fees fees' : Coin
  utxoState utxoState' utxoState1 utxoState2 : UTxOState
  Γ : UTxOEnv
  s s' : UTxOState

⟦_⟧ : {A : Set} → A → A
⟦_⟧ = id

instance
  _ = ≟-∅

  Dec-inInterval : {slot : Slot} {I : Maybe Slot × Maybe Slot} → Dec (inInterval slot I)
  Dec-inInterval {slot} {just x  , just y } with x ≤? slot | slot ≤? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} with x ≤? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } with slot ≤? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} = yes none

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TxBody → UTxOState → Set
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
    → let slot = UTxOEnv.slot Γ
          pp   = UTxOEnv.pparams Γ
          utxo = UTxOState.utxo s
          fees = UTxOState.fees s
      in
    --  txins tx ≢ ∅
     inInterval slot (txvldt tx) -- ma
    -- → txins tx ⊆ dom utxo
    -- this is currently broken because of https://github.com/agda/agda/issues/5982
    → let f = txfee tx in minfee pp tx ≤ f
    → balance (utxo ∣ txins tx) ≡ balance (outs tx) + f
    → coin (mint tx) ≡ 0 -- ma: tx seems to be txb according to txins tx ≢ ∅


    → ∀ txout → txout ∈ proj₁ (txouts tx)
    -- where is this v coming from
              → (getValue (proj₂ txout)) ≥ᵗ (inject (utxoEntrySize (proj₂ txout) * PParams.minUtxOValue pp)) 

    → ∀ txout → txout ∈ proj₁ (txouts tx)
              → (serSize (getValue (proj₂ txout))) ≤ PParams.maxValSize pp


    -- PPUP
    -- same with anything that uses FinSet.All
    -- → ∀ˢ (λ { (inj₂ a , _) → BootstrapAddr.attrsSize a ≤ 64 ; _ → ⊤ }) (values' (txouts tx))
    -- → ∀ˢ (λ where (a , _) → netId a ≡ networkId) (values' (txouts tx))
    -- → ∀ˢ (λ where record { net = net } → net ≡ networkId) (dom (txwdrls tx))
    → txsize tx ≤ PParams.maxTxSize pp
    ────────────────────────────────
    Γ
      ⊢ s
      ⇀⦇ tx ,UTXO⦈
      record { utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx ; fees = fees + f }
\end{code}

\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}
\begin{code}[hide]
open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

_ᶠᵐ : {A B : Set} → A ↛ B → FinMap A B
(R , uniq) ᶠᵐ = (R , uniq , finiteness _)

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≡ balance utxo'
balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ)) → balance (utxo ∪ᵐˡ utxo') ≡ balance utxo + balance utxo'
balance-∪ {utxo} {utxo'} h = begin
  balance (utxo ∪ᵐˡ utxo') ≡⟨ indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id) ⟩
  indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)) ≡⟨ indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h ⟩
  balance utxo + balance utxo' ∎

import Relation.Binary.PropositionalEquality as P
import Data.List
import Data.Product

open Properties
open Equivalence
open import Tactic.Cong

newTxid⇒disj : txid tx ∉ map proj₁ (dom (utxo ˢ)) → disjoint' (dom (utxo ˢ)) (dom ((outs tx) ˢ))
newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
  (-, (case from ∈-map h' of λ where (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)
\end{code}

\begin{property}[\textbf{Preserve Balance}]
For all $\var{env}\in\UTxOEnv$, $\var{utxo},\var{utxo'}\in\UTxO$, $\var{fee},\var{fee'}\in\Coin$ and $\var{tx}\in\TxBody$, if
\begin{code}[hide]
pov :
\end{code}
\begin{code}[inline*]
  txid tx ∉ map proj₁ (dom (utxo ˢ))
\end{code}
and
\begin{code}[hide]
  →
\end{code}
\begin{code}[inline*]
      Γ ⊢ record {utxo = utxo ; fees = fee} ⇀⦇ tx ,UTXO⦈ record {utxo = utxo' ; fees = fee'}
\end{code}
then
\begin{code}[hide]
  →
\end{code}
\begin{code}
      balance utxo + fee ≡ balance utxo' + fee'
\end{code}
\begin{code}[hide]
pov {tx} {utxo} {_} {fee} h' (UTXO-inductive x x₁ bal-eq x₃ txout x₄ x₅ txout₁ x₆ x₇ x₈) =
 let h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
     h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h') $ to ∈-∩ (cores-domᵐ h₁ , h₂)
  in begin
  balance utxo + fee
    ≡tʳ⟨ cong (_+ fee) $ begin
      balance utxo
        ≡˘⟨ balance-cong {utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)} {utxo' = utxo}
              (let open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to _≡ᵉ-∘_)
               in (disjoint-∪ᵐˡ-∪ (disjoint-sym res-ex-disjoint) ≡ᵉ-∘ ∪-sym) ≡ᵉ-∘ res-ex-∪ (_∈? txins tx)) ⟩
      balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx))
        ≡⟨ balance-∪ {utxo ∣ txins tx ᶜ} {utxo ∣ txins tx} (flip (res-ex-disjoint)) ⟩
      balance (utxo ∣ txins tx ᶜ) + balance (utxo ∣ txins tx)
        ≡tʳ⟨ cong (balance (utxo ∣ txins tx ᶜ) +_) bal-eq ⟩
      balance (utxo ∣ txins tx ᶜ) + balance (outs tx) + txfee tx
        ≡˘⟨ cong! (balance-∪ {utxo ∣ txins tx ᶜ} {outs tx} h) ⟩
      balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + txfee tx ∎
    ⟩
  balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (txfee tx + fee)
    ≡˘⟨ cong (balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) +_) (+-comm fee (txfee tx)) ⟩
  balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (fee + txfee tx) ∎

\end{code}

\end{property}

\pagebreak
Note that this is not a function, but a relation. To make this
definition executable, we need to define a function that computes
the transition. We also prove that this indeed computes the
relation. Luckily, this can be automated.

\begin{figure*}[h]
\begin{code}[hide]
--unquoteDecl Computational-UTXO = deriveComputational (quote _⊢_⇀⦇_,UTXO⦈_) Computational-UTXO
\end{code}
\begin{code}
{-
UTXO-step : UTxOEnv → UTxOState → TxBody → Maybe UTxOState
UTXO-step = compute Computational-UTXO

UTXO-step-computes-UTXO :
  UTXO-step Γ utxoState tx ≡ just utxoState' ⇔ Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-just⇔STS Computational-UTXO -}
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}
