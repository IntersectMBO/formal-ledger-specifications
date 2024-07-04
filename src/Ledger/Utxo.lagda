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
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
isTwoPhaseScriptAddress : Tx → UTxO → Addr → Bool
isTwoPhaseScriptAddress tx utxo a =
  if isScriptAddr a then
    (λ {p} → if lookupScriptHash (getScriptHash a p) tx utxo
                 then (λ {s} → isP2Script s)
                 else false)
  else
    false
\end{code}
\begin{code}[hide]
opaque
\end{code}
\begin{code}
  getDataHashes : ℙ TxOut → ℙ DataHash
  getDataHashes txo = mapPartial isInj₂ (mapPartial (proj₁ ∘ proj₂ ∘ proj₂) txo)

  getInputHashes : Tx → UTxO → ℙ DataHash
  getInputHashes tx utxo = getDataHashes
    (filterˢ (λ (a , _ ) → isTwoPhaseScriptAddress tx utxo a ≡ true)
            (range (utxo ∣ txins)))
    where open Tx; open TxBody (tx .body)

totExUnits : Tx → ExUnits
totExUnits tx = ∑[ (_ , eu) ← tx .wits .txrdmrs ] eu
  where open Tx; open TxWitnesses
\end{code}
\caption{Functions supporting UTxO rules}
\label{fig:supportfunctions:utxo}
\end{figure*}

\begin{code}[hide]
-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOutʰ → MemoryEstimate
utxoEntrySize o = utxoEntrySizeWithoutVal + size (getValueʰ o)


open PParams
\end{code}

Figures~\ref{fig:supportfunctions:utxo},~\ref{fig:functions:utxo},
and~\ref{fig:functions:utxo2} define functions needed for the UTxO transition system.
\end{NoConway}
%
\begin{Conway}
Figure~\ref{fig:functions:utxo} defines functions needed for the UTxO transition system.
\end{Conway}
%
\ Note the special multiplication symbol \AgdaFunction{*↓} used in
Figure~\ref{fig:functions:utxo}: it means multiply and take the absolute value of the
result, rounded down to the nearest integer.

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

The deposits have been reworked since the original Shelley design. We
now track the amount of every deposit individually. This fixes an
issue in the original design: An increase in deposit amounts would
allow an attacker to make lots of deposits before that change and
refund them after the change. The additional funds necessary would
have been provided by the treasury. Since changes to protocol
parameters were (and still are) known publicly and guaranteed before
they are enacted, this comes at zero risk for an attacker. This means
the deposit amounts could realistically never be increased. This issue
is gone with the new design.

Similar to \ScriptPurpose, \DepositPurpose carries the information
what the deposit is being made for. The deposits are stored in the
\deposits field of \UTxOState. \updateDeposits is responsible for
updating this map, which is split into \updateCertDeposits and
\updateProposalDeposits, responsible for certificates and proposals
respectively. Both of these functions iterate over the relevant fields
of the transaction body and insert or remove deposits depending on the
information seen. Note that some deposits can only be refunded at the
epoch boundary and are not removed by these functions.

There are two equivalent ways to introduce this tracking of the
deposits. One option would be to populate the \deposits field of
\UTxOState with the correct keys and values that can be extracted from
the state of the previous era at the transition into the Conway
era. Alternatively, this logic can be implemented in older eras and
replaying the chain with that implementation, effectively treating it
as an erratum to the Shelley specification.

\begin{figure*}[h]
\emph{Derived types}
\begin{AgdaMultiCode}
\begin{code}
data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits = DepositPurpose ⇀ Coin

\end{code}
\begin{NoConway}
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Type where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    slot      : Slot
    pparams   : PParams
    treasury  : Coin
\end{code}
\end{NoConway}
\emph{UTxO states}
\begin{code}
record UTxOState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_⟧ᵘ
  field
\end{code}
\begin{code}
    utxo       : UTxO
    fees       : Coin
    deposits   : Deposits
    donations  : Coin
\end{code}
\begin{NoConway}
\emph{UTxO transitions}

\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{UTxO transition-system types}
\label{fig:ts-types:utxo-shelley}
\end{figure*}

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
  balance utxo = ∑[ x ← mapValues txOutHash utxo ] getValueʰ x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)
\end{code}
\end{NoConway}
\begin{code}
  minfee : PParams → UTxO → Tx → Coin
  minfee pp utxo tx  =
    pp .a * tx .body .txsize + pp .b
    + txscriptfee (pp .prices) (totExUnits tx)
    + pp .minFeeRefScriptCoinsPerByte
    *↓ ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x

\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
\end{code}
\begin{code}
certDeposit : DCert → PParams → DepositPurpose ⇀ Coin
certDeposit (delegate c _ _ v) _  = ❴ CredentialDeposit c , v                ❵
certDeposit (regpool kh _)     pp = ❴ PoolDeposit      kh , pp .poolDeposit  ❵
certDeposit (regdrep c v _)    _  = ❴ DRepDeposit       c , v                ❵
certDeposit _                  _  = ∅

certRefund : DCert → ℙ DepositPurpose
certRefund (dereg c)      = ❴ CredentialDeposit c ❵
certRefund (deregdrep c)  = ❴ DRepDeposit c ❵
certRefund _              = ∅

updateCertDeposits  : PParams → List DCert → (DepositPurpose ⇀ Coin)
                    → DepositPurpose ⇀ Coin
updateCertDeposits _   []              deposits = deposits
updateCertDeposits pp  (cert ∷ certs)  deposits
  = (updateCertDeposits pp certs deposits ∪⁺ certDeposit cert pp) ∣ certRefund cert ᶜ

updateProposalDeposits : List GovProposal → TxId → Coin → Deposits → Deposits
updateProposalDeposits []        _     _      deposits  = deposits
updateProposalDeposits (_ ∷ ps)  txid  gaDep  deposits  =
  updateProposalDeposits ps txid gaDep deposits
  ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵

updateDeposits : PParams → TxBody → Deposits → Deposits
updateDeposits pp txb = updateCertDeposits pp txcerts
                        ∘ updateProposalDeposits txprop txid (pp .govActionDeposit)
\end{code}
\begin{code}[hide]
  where open TxBody txb

proposalDepositsΔ : List GovProposal → PParams → TxBody → DepositPurpose ⇀ Coin
proposalDepositsΔ props pp txb = updateProposalDeposits props txid (pp .govActionDeposit) ∅
  where open TxBody txb
\end{code}
\begin{code}

depositsChange : PParams → TxBody → Deposits → ℤ
depositsChange pp txb deposits =
  getCoin (updateDeposits pp txb deposits) - getCoin deposits
\end{code}
\end{AgdaMultiCode}
\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\begin{NoConway}
\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Type where
  both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)
\end{code}
\begin{code}[hide]
-- Note: inInterval has to be a type definition for inference to work
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

-- Boolean implication
_=>ᵇ_ : Bool → Bool → Bool
a =>ᵇ b = if a then b else true

-- Boolean-valued inequalities on natural numbers
_≤ᵇ_ _≥ᵇ_ : ℕ → ℕ → Bool
m ≤ᵇ n = ¿ m ≤ n ¿ᵇ
_≥ᵇ_ = flip _≤ᵇ_

≟-∅ᵇ : {A : Type} ⦃ _ : DecEq A ⦄ → (X : ℙ A) → Bool
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
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
\end{code}
\end{AgdaMultiCode}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo2}
\end{figure*}
\end{NoConway}

We redefine \depositRefunds and \newDeposits via \depositsChange,
which computes the difference between the total deposits before and
after their application. This simplifies their definitions and some
correctness proofs. We then add the absolute value of \depositsChange
to \consumed or \produced depending on its sign. This is done via
\negPart and \posPart, which satisfy the key property that their
difference is the identity function.

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
  _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type

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

data _≡?_ {A : Type} : Maybe A → A → Type where
  ≡?-nothing : ∀ {x : A} → nothing  ≡? x
  ≡?-just    : ∀ {x : A} → (just x) ≡? x

instance
  ≟? : {A : Type} {x : Maybe A} {y : A} → ⦃ DecEq A ⦄ → (x ≡? y) ⁇
  ≟? {x = just x} {y} with x ≟ y
  ... | yes refl = ⁇ yes ≡?-just
  ... | no ¬p    = ⁇ no λ where ≡?-just → ¬p refl
  ≟? {x = nothing} = ⁇ yes ≡?-nothing

data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}

\begin{NoConway}
We write \maybeEq to mean that two potentially optional values are
equal if they are both present.

\begin{figure*}[h]
\begin{code}
  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
        txoutsʰ = (mapValues txOutHash txouts)
    in
    ∙ txins ≢ ∅                              ∙ txins ∪ refInputs ⊆ dom utxo
    ∙ txins ∩ refInputs ≡ ∅                  ∙ inInterval slot txvldt
    ∙ feesOK pp tx utxo ≡ true               ∙ consumed pp s txb ≡ produced pp s txb
    ∙ coin mint ≡ 0                          ∙ txsize ≤ maxTxSize pp

    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        inject (utxoEntrySize txout * minUTxOValue pp) ≤ᵗ getValueʰ txout
    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        serSize (getValueʰ txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]  netId a         ≡ networkId
    ∙ ∀[ a ∈ dom txwdrls ]          a .RwdAddr.net  ≡ networkId
    ∙ txNetworkId ≡? networkId
    ∙ curTreasury ≡? treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
\end{code}
\begin{code}[hide]
pattern UTXO-inductive⋯ tx Γ s x y z w k l m v n o p q r t u h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , v , n , o , p , q , r , t , u , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
\end{code}
\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}
\end{NoConway}
