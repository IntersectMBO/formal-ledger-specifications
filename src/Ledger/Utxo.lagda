\section{UTxO}
\label{sec:utxo}

\subsection{Accounting}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Integer.Ext     using (posPart; negPart)
open import Data.Nat.Properties  using (+-0-monoid)
import Data.Maybe as M
import Data.Sum.Relation.Unary.All as Sum

import Data.Integer as ℤ
import Data.Rational as ℚ

open import Tactic.Derive.DecEq

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.ScriptValidation txs abs

instance
  _ = +-0-monoid

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

infixl 7 _*↓_

-- multiply a natural number with a fraction, rounding down and taking the absolute value
_*↓_ : ℚ.ℚ → ℕ → ℕ
q *↓ n = ℤ.∣ ℚ.⌊ q ℚ.* (ℤ.+ n ℚ./ 1) ⌋ ∣

isPhaseTwoScriptAddress : Tx → Addr → Bool
isPhaseTwoScriptAddress tx a =
  if isScriptAddr a then
    (λ {p} → if lookupScriptHash (getScriptHash a p) tx
                 then (λ {s} → isP2Script s)
                 else false)
  else
    false

totExUnits : Tx → ExUnits
totExUnits tx = ∑[ (_ , eu) ← tx .wits .txrdmrs ] eu
  where open Tx; open TxWitnesses

-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOut → MemoryEstimate
utxoEntrySize o = utxoEntrySizeWithoutVal + size (getValue o)

refScripts : Tx → UTxO → ℙ Script
refScripts tx utxo = ∅ -- TODO: implement when we do Babbage

open PParams
\end{code}

Figures~\ref{fig:functions:utxo} and~\ref{fig:functions:utxo2} define
functions needed for the UTxO transition system. Note the special
multiplication symbol \AgdaFunction{*↓} used in
Figure~\ref{fig:functions:utxo}: it means multiply and round down
the result.

\begin{NoConway}
Figure~\ref{fig:ts-types:utxo-shelley} defines the types needed for the UTxO transition system.
The UTxO transition system is given in Figure~\ref{fig:rules:utxo-shelley}.

\begin{itemize}

  \item
    The function $\fun{outs}$ creates the unspent outputs generated by a transaction.
    It maps the transaction id and output index to the output.

  \item
    The $\fun{balance}$ function calculates sum total of all the coin in a given UTxO.
\end{itemize}
\end{NoConway}

\begin{figure*}[h]
\begin{code}[hide]
module _ (let open Tx; open TxBody; open TxWitnesses) where opaque
\end{code}
\begin{AgdaMultiCode}
\begin{NoConway}
\begin{code}
  outs : TxBody → UTxO
  outs tx = mapKeys (tx .txid ,_) (tx .txouts)

  balance : UTxO → Value
  balance utxo = ∑[ x ← utxo ] getValue x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)
\end{code}
\end{NoConway}
\begin{code}
  minfee : PParams → UTxO → Tx → Coin
  minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits tx)
                     + pp .minFeeRefScriptCoinsPerByte
                       *↓ ∑ˢ[ x ← refScripts tx utxo ] scriptSize x

\end{code}
\begin{code}[hide]
module _ where
\end{code}
\begin{code}
  data DepositPurpose : Set where
    CredentialDeposit  : Credential   → DepositPurpose
    PoolDeposit        : Credential   → DepositPurpose
    DRepDeposit        : Credential   → DepositPurpose
    GovActionDeposit   : GovActionID  → DepositPurpose
\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance

module _ (let open TxBody) where
\end{code}
\begin{code}

  updateDeposits : PParams → TxBody → DepositPurpose ⇀ Coin → DepositPurpose ⇀ Coin
  updateDeposits pp txb
    = updateCertDeposits (txb .txcerts) ∘ updateProposalDeposits (txb .txprop)
    where
      certDeposit : DCert → DepositPurpose ⇀ Coin
      certDeposit  (delegate c _ _ v)  = ❴ CredentialDeposit c , v                ❵
      certDeposit  (regpool c _)       = ❴ PoolDeposit       c , pp .poolDeposit  ❵
      certDeposit  (regdrep c v _)     = ❴ DRepDeposit       c , v                ❵
      certDeposit  _                   = ∅

      propDeposit : GovActionID → DepositPurpose ⇀ Coin
      propDeposit gaid = ❴ GovActionDeposit gaid , pp .govActionDeposit ❵

      certRefund : DCert → ℙ DepositPurpose
      certRefund (dereg c)      = ❴ CredentialDeposit c ❵
      certRefund (deregdrep c)  = ❴ DRepDeposit c ❵
      certRefund _              = ∅

      updateCertDeposits : List DCert → DepositPurpose ⇀ Coin → DepositPurpose ⇀ Coin
      updateCertDeposits []              deposits = deposits
      updateCertDeposits (cert ∷ certs)  deposits
        = updateCertDeposits certs deposits ∪⁺ certDeposit cert ∣ certRefund cert ᶜ

      updateProposalDeposits : List GovProposal → DepositPurpose ⇀ Coin
        → DepositPurpose ⇀ Coin
      updateProposalDeposits [] deposits = deposits
      updateProposalDeposits (_ ∷ props) deposits
        = updateProposalDeposits props deposits ∪⁺ propDeposit (txb .txid , length props)

  depositsChange : PParams → TxBody → DepositPurpose ⇀ Coin → ℤ
  depositsChange pp txb deposits
    = getCoin (updateDeposits pp txb deposits) - getCoin deposits
\end{code}
\end{AgdaMultiCode}
\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\begin{NoConway}
\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Set where
  both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)
\end{code}
\begin{code}[hide]
-- Note: inInterval has to be a type definition for inference to work

-- Boolean implication
_=>ᵇ_ : Bool → Bool → Bool
a =>ᵇ b = if a then b else true

-- Boolean-valued inequalities on natural numbers
_≤ᵇ_ _≥ᵇ_ : ℕ → ℕ → Bool
m ≤ᵇ n = ¿ m ≤ n ¿ᵇ
_≥ᵇ_ = flip _≤ᵇ_

≟-∅ᵇ : {A : Set} ⦃ _ : DecEq A ⦄ → (X : ℙ A) → Bool
≟-∅ᵇ X = ¿ X ≡ ∅ ¿ᵇ

coinPolicies : ℙ ScriptHash
coinPolicies = policies (inject 1)

isAdaOnlyᵇ : Value → Bool
isAdaOnlyᵇ v = toBool (policies v ≡ᵉ coinPolicies)

-- TODO: this could be a regular property
-- TODO: using this in UTxO rule below
\end{code}
\begin{code}

feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ txfee
                  ∧ not (≟-∅ᵇ (txrdmrs ˢ))
                  =>ᵇ ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                      ∧ isAdaOnlyᵇ bal
                      ∧ (coin bal * 100) ≥ᵇ (txfee * pp .collateralPercentage)
                      ∧ not (≟-∅ᵇ collateral)
                      )
  where
    open Tx tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    (utxo ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
\end{code}
\end{AgdaMultiCode}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo2}
\end{figure*}
\end{NoConway}

\AgdaTarget{UTxOEnv, UTxOState, \_⊢\_⇀⦇\_,UTXO⦈\_}
\begin{figure*}[h]
\emph{Derived types}
\begin{code}
Deposits = DepositPurpose ⇀ Coin
\end{code}
\begin{NoConway}
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Set where
  field slot     : Slot
        pparams  : PParams
\end{code}
\end{NoConway}
\emph{UTxO states}
\begin{code}
record UTxOState : Set where
  constructor ⟦_,_,_,_⟧ᵘ
  field utxo       : UTxO
        fees       : Coin
        deposits   : Deposits
        donations  : Coin
\end{code}
\begin{NoConway}
\emph{UTxO transitions}

\begin{code}[hide]
⟦_⟧ : {A : Set} → A → A
⟦_⟧ = id

instance
  Dec-inInterval : inInterval ⁇²
  Dec-inInterval {slot} {just x  , just y } .dec with x ≤? slot | slot ≤? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} .dec with x ≤? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } .dec with slot ≤? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} .dec = yes none

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOState.utxo s)
                               + (UTxOState.fees s)
                               + getCoin (UTxOState.deposits s)
                               + UTxOState.donations s
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
\end{code}
\end{NoConway}
\caption{UTxO transition-system types}
\label{fig:ts-types:utxo-shelley}
\end{figure*}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState; open TxBody) where
\end{code}
\begin{code}
  depositRefunds : PParams → UTxOState → TxBody → Coin
  depositRefunds pp st txb = negPart (depositsChange pp txb (st .deposits))

  newDeposits : PParams → UTxOState → TxBody → Coin
  newDeposits pp st txb = posPart (depositsChange pp txb (st .deposits))

  consumed : PParams → UTxOState → TxBody → Value
  consumed pp st txb
    =  balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)

  produced : PParams → UTxOState → TxBody → Value
  produced pp st txb
    =  balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-2}
\end{figure*}

\begin{code}[hide]
open PParams
data
  _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set

data _⊢_⇀⦇_,UTXOS⦈_ where
  Scripts-Yes :
    ∀ {Γ} {s} {tx}
    → let open Tx tx renaming (body to txb); open TxBody txb
          open UTxOEnv Γ renaming (pparams to pp)
          open UTxOState s
          sLst = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ true
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ (utxo ∣ txins ᶜ) ∪ˡ (outs txb)
                              , fees + txfee
                              , updateDeposits pp txb deposits
                              , donations + txdonation
                              ⟧ᵘ

  Scripts-No :
    ∀ {Γ} {s} {tx}
    → let open Tx tx renaming (body to txb); open TxBody txb
          open UTxOEnv Γ renaming (pparams to pp)
          open UTxOState s
          sLst = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ false
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ utxo ∣ collateral ᶜ
                              , fees + cbalance (utxo ∣ collateral)
                              , deposits
                              , donations
                              ⟧ᵘ

unquoteDecl Scripts-Yes-premises = genPremises Scripts-Yes-premises (quote Scripts-Yes)
unquoteDecl Scripts-No-premises  = genPremises Scripts-No-premises  (quote Scripts-No)

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
    in
    ∙ txins ≢ ∅                              ∙ txins ⊆ dom utxo
    ∙ inInterval slot txvldt                 ∙ feesOK pp tx utxo ≡ true
    ∙ consumed pp s txb ≡ produced pp s txb  ∙ coin mint ≡ 0
    ∙ txsize ≤ maxTxSize pp

    ∙ ∀[ (_ , txout) ∈ txouts .proj₁ ]
        inject (utxoEntrySize txout * minUTxOValue pp) ≤ᵗ getValue txout
    ∙ ∀[ (_ , txout) ∈ txouts .proj₁ ]
        serSize (getValue txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txouts ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txouts ]  netId a         ≡ networkId
    ∙ ∀[ a ∈ dom  txwdrls ]        a .RwdAddr.net  ≡ networkId
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
\end{code}
\begin{code}[hide]
pattern UTXO-inductive⋯ tx Γ s x y z w k l m n o p q r h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , n , o , p , q , r , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
\end{code}
\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}
\end{NoConway}
