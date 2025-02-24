\section{UTxO}
\label{sec:utxo}
\modulenote{\LedgerModule{Utxo}}

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
open import Ledger.Fees txs using (scriptsCost)
open import Ledger.Certs govStructure

instance
  _ = +-0-monoid

infixl 7 _*↓_

-- multiply a natural number with a fraction, rounding down and taking the absolute value
_*↓_ : ℚ.ℚ → ℕ → ℕ
q *↓ n = ℤ.∣ ℚ.⌊ q ℚ.* (ℤ.+ n ℚ./ 1) ⌋ ∣
\end{code}

\begin{NoConway}
\begin{figure*}[ht]
\begin{code}
isTwoPhaseScriptAddress : Tx → UTxO → Addr → Type
isTwoPhaseScriptAddress tx utxo a =
  if isScriptAddr a then
    (λ {p} → if lookupScriptHash (getScriptHash a p) tx utxo
                 then (λ {s} → isP2Script s)
                 else ⊥)
  else
    ⊥
\end{code}
\begin{code}[hide]
isTwoPhaseScriptAddress? : ∀ {tx utxo a} → isTwoPhaseScriptAddress tx utxo a ⁇
isTwoPhaseScriptAddress? {tx} {utxo} {a} .dec
  with decide (isScriptAddr a)
... | inj₂ _ = no λ ()
... | inj₁ p
  with decide (lookupScriptHash (getScriptHash a p) tx utxo)
... | inj₂ _ = no λ ()
... | inj₁ s = isP2Script? {s} .dec

record isTwoPhaseScriptAddress′ (tx : Tx) (utxo : UTxO) (a : Addr) : Type where
  constructor wrap
  field unwrap : isTwoPhaseScriptAddress tx utxo a

instance
  isTwoPhaseScriptAddress′? : ∀ {tx utxo a} → isTwoPhaseScriptAddress′ tx utxo a ⁇
  isTwoPhaseScriptAddress′? {tx} {utxo} {a} = ⁇ (map′ wrap unwrap (isTwoPhaseScriptAddress? {tx} {utxo} {a} .dec))
    where open isTwoPhaseScriptAddress′
\end{code}
\begin{code}[hide]
opaque
\end{code}
\begin{code}
  getDataHashes : ℙ TxOut → ℙ DataHash
  getDataHashes txo = mapPartial isInj₂ (mapPartial (proj₁ ∘ proj₂ ∘ proj₂) txo)

  getInputHashes : Tx → UTxO → ℙ DataHash
  getInputHashes tx utxo = getDataHashes
    (filterˢ (λ (a , _ ) → isTwoPhaseScriptAddress′ tx utxo a)
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
Figures~\ref{fig:ts-types:utxo}--\ref{fig:functions:utxo-conway}
define types and functions needed for the UTxO transition system.
\end{Conway}
%
\ Note the special multiplication symbol \AgdaFunction{*↓} used in
Figure~\ref{fig:functions:utxo}: it means multiply and take the absolute value of the
result, rounded down to the nearest integer.

\begin{NoConway}
Figure~\ref{fig:ts-types:utxo} defines the types needed for the UTxO transition system.
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
\deposits field of \UTxOState (the type \Deposits{} is defined in
Figure~\ref{fig:certs:deposit-types}). \updateDeposits is responsible for
updating this map, which is split into \updateCertDeposits and
\updateProposalDeposits, responsible for certificates and proposals
respectively. Both of these functions iterate over the relevant fields
of the transaction body and insert or remove deposits depending on the
information seen.  Note that some deposits can only be
refunded at the epoch boundary and are not removed by these functions.

There are two equivalent ways to introduce this tracking of the
deposits. One option would be to populate the \deposits field of
\UTxOState with the correct keys and values that can be extracted from
the state of the previous era at the transition into the Conway era.
Alternatively, we can effectively treat the old handling of deposits
as an erratum in the Shelley specification, which we fix by implementing
the new deposits logic in older eras and then replaying the chain.
(The handling of deposits in the Shelley era is discussed
in~\cite[Sec.~8]{shelley-ledger-spec}
and~\cite[Sec.~B.2]{shelley-delegation-design}.)

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{NoConway}
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Type where
  field
    slot      : Slot
    pparams   : PParams
    treasury  : Coin
\end{code}
\end{NoConway}
\emph{UTxO states}
\begin{code}
record UTxOState : Type where
  constructor ⟦_,_,_,_⟧ᵘ
  field
    utxo       : UTxO
    fees       : Coin
    deposits   : Deposits
    donations  : Coin
\end{code}
\begin{code}[hide]
instance
  unquoteDecl To-UTxOEnv To-UTxOState = derive-To
    ( (quote UTxOEnv   , To-UTxOEnv  ) ∷
    [ (quote UTxOState , To-UTxOState) ])
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
\label{fig:ts-types:utxo}
\end{figure*}

\begin{figure*}[htbp]
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
  refScriptsSize : UTxO → Tx → ℕ
  refScriptsSize utxo tx = sum $ map scriptSize (refScripts tx utxo)

  minfee : PParams → UTxO → Tx → Coin
  minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits tx)
                     + scriptsCost pp (refScriptsSize utxo tx)

\end{code}
\begin{code}[hide]
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
\end{code}
\begin{code}
certDeposit : DCert → PParams → Deposits
certDeposit (delegate c _ _ v) _   = ❴ CredentialDeposit c , v ❵
certDeposit (reg c _)          pp  = ❴ CredentialDeposit c , pp .keyDeposit ❵
certDeposit (regpool kh _)     pp  = ❴ PoolDeposit kh , pp .poolDeposit ❵
certDeposit (regdrep c v _)    _   = ❴ DRepDeposit c , v ❵
certDeposit _                  _   = ∅

certRefund : DCert → ℙ DepositPurpose
certRefund (dereg c _)      = ❴ CredentialDeposit c ❵
certRefund (deregdrep c _)  = ❴ DRepDeposit c ❵
certRefund _                = ∅

data ValidCertDeposits (pp : PParams) (deps : Deposits) : List DCert → Set
\end{code}
\begin{code}[hide]
  where
  []         : ValidCertDeposits pp deps []
  delegate   : ∀ {c del kh v certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ CredentialDeposit c , v ❵) certs
             → ValidCertDeposits pp deps (delegate c del kh v ∷ certs)
  regpool    : ∀ {kh p certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ PoolDeposit kh , pp .poolDeposit ❵) certs
             → ValidCertDeposits pp deps (regpool kh p ∷ certs)
  regdrep    : ∀ {c v a certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ DRepDeposit c , v ❵) certs
             → ValidCertDeposits pp deps (regdrep c v a ∷ certs)
  reg        : ∀ {c v certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ CredentialDeposit c , pp .keyDeposit ❵) certs
             → ValidCertDeposits pp deps (reg c v ∷ certs)
  dereg      : ∀ {c md d certs}
             → (CredentialDeposit c , d) ∈ deps
             → md ≡ nothing ⊎ md ≡ just d
             → ValidCertDeposits pp (deps ∣ ❴ CredentialDeposit c ❵ ᶜ) certs
             → ValidCertDeposits pp deps (dereg c md ∷ certs)
  deregdrep  : ∀ {c d certs}
             → (DRepDeposit c , d) ∈ deps
             → ValidCertDeposits pp (deps ∣ ❴ DRepDeposit c ❵ ᶜ) certs
             → ValidCertDeposits pp deps (deregdrep c d ∷ certs)
  ccreghot   : ∀ {c v certs}
             → ValidCertDeposits pp deps certs
             → ValidCertDeposits pp deps (ccreghot c v ∷ certs)
  retirepool : ∀ {kh e certs}
             → ValidCertDeposits pp deps certs
             → ValidCertDeposits pp deps (retirepool kh e  ∷ certs)

private
  validCertDeposits? : ∀ {pp} deps certs → Dec (ValidCertDeposits pp deps certs)
  validCertDeposits? deps [] = yes []
  validCertDeposits? deps (delegate _ _ _ _ ∷ certs) =
    mapDec delegate (λ where (delegate p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (regpool _ _ ∷ certs) =
    mapDec regpool (λ where (regpool p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (regdrep _ _ _ ∷ certs) =
    mapDec regdrep (λ where (regdrep p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (retirepool _ _ ∷ certs) =
    mapDec retirepool (λ where (retirepool p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (ccreghot _ _ ∷ certs) =
    mapDec ccreghot (λ where (ccreghot p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (reg _ _ ∷ certs) =
    mapDec reg (λ where (reg p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (dereg c nothing ∷ certs) with ¿ CredentialDeposit c ∈ dom deps ¿ 
  ... | yes p = mapDec (dereg (proj₂ (Equivalence.from dom∈ p)) (inj₁ refl)) (λ { (dereg _ _ p) → p }) (validCertDeposits? _ _)
  ... | no ¬p = no λ { (dereg x _ _) → ¬p (Equivalence.to dom∈ (_ , x)) }
  validCertDeposits? deps (dereg c (just d) ∷ certs) with ¿ (CredentialDeposit c , d) ∈ deps ¿ 
  ... | yes p = mapDec (dereg p (inj₂ refl)) (λ { (dereg _ _ p) → p }) (validCertDeposits? _ _)
  ... | no ¬p = no λ { (dereg x (inj₂ refl) _) → ¬p x }
  validCertDeposits? deps (deregdrep c d ∷ certs) with ¿ (DRepDeposit c , d) ∈ deps ¿
  ... | yes p = mapDec (deregdrep p)  (λ where (deregdrep _ v) → v) (validCertDeposits? _ _)
  ... | no ¬p = no (λ where (deregdrep p _) → ¬p p)

instance
  Dec-ValidCertDeposits : ∀ {pp deps certs} → ValidCertDeposits pp deps certs ⁇
  Dec-ValidCertDeposits = ⁇ (validCertDeposits? _ _)
\end{code}
\begin{code}

updateCertDeposits  : PParams → List DCert → Deposits → Deposits
updateCertDeposits pp [] deposits = deposits
\end{code}
\begin{code}[hide]
updateCertDeposits pp (reg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (reg c v) pp)
\end{code}
\begin{code}
updateCertDeposits pp (delegate c vd khs v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (delegate c vd khs v) pp)
updateCertDeposits pp (regpool kh p ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (regpool kh p) pp)
updateCertDeposits pp (regdrep c v a ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (regdrep c v a) pp)
updateCertDeposits pp (dereg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (dereg c v)ᶜ)
updateCertDeposits pp (deregdrep c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (deregdrep c v)ᶜ)
updateCertDeposits pp (_ ∷ certs) deposits
  = updateCertDeposits pp certs deposits

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

proposalDepositsΔ : List GovProposal → PParams → TxBody → Deposits
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

coinPolicies : ℙ ScriptHash
coinPolicies = policies (inject 1)

isAdaOnly : Value → Type
isAdaOnly v = policies v ≡ᵉ coinPolicies
\end{code}
\begin{code}
feesOK : PParams → Tx → UTxO → Type
feesOK pp tx utxo = ( minfee pp utxo tx ≤ txfee × (txrdmrs ˢ ≢ ∅
                      → ( All (λ (addr , _) → isVKeyAddr addr) collateralRange
                        × isAdaOnly bal
                        × coin bal * 100 ≥ txfee * pp .collateralPercentage
                        × collateral ≢ ∅
                        )
                      )
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

\begin{figure*}[htbp]
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
    +  inject (getCoin (txb .txwdrls))

  produced : PParams → UTxOState → TxBody → Value
  produced pp st txb = balance (outs txb)
                     + inject (txb .txfee)
                     + inject (newDeposits pp st txb)
                     + inject (txb .txdonation)
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}

As seen in Figures~\ref{fig:functions:utxo} and~\ref{fig:functions:utxo-conway},
we redefine \depositRefunds and \newDeposits via \depositsChange,
which computes the difference between the total deposits before and
after their application. This simplifies their definitions and some
correctness proofs. We then add the absolute value of \depositsChange
to \consumed or \produced depending on its sign. This is done via
\negPart and \posPart, which satisfy the key property that their
difference is the identity function.

Figure~\ref{fig:functions:utxo} defines the function \minfee{}. In
Conway, \minfee{} includes the cost for reference scripts. This is
calculated using \scriptsCost{} (see Figure~\ref{fig:scriptsCost}).

Figure~\ref{fig:functions:utxo} also shows the signature of \ValidCertDeposits.
Inhabitants of this type are constructed in one of eight ways, corresponding to
seven certificate types plus one for an empty list of certificates.  Suffice it to
say that \ValidCertDeposits is used to check the validity of the deposits in a
transaction so that the function \updateCertDeposits can correctly register and
deregister deposits in the UTxO state based on the certificates in the transaction.

\begin{figure*}[htbp]
\begin{code}[hide]
open PParams

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

open UTxOEnv
open UTxOState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type
\end{code}
\begin{code}[hide]
data _⊢_⇀⦇_,UTXOS⦈_ where
\end{code}
\begin{AgdaMultiCode}
\begin{code}
  Scripts-Yes :
    let  pp         = Γ .pparams
         utxo       = s .utxo
         fees       = s .fees
         deposits   = s .deposits
         donations  = s .donations
\end{code}
\begin{code}[hide]
         open Tx tx renaming (body to txb); open TxBody txb
\end{code}
\begin{code}
         sLst       = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ ValidCertDeposits pp deposits txcerts
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ true
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ ⟦ (utxo ∣ txins ᶜ) ∪ˡ (outs txb) , fees + txfee , updateDeposits pp txb deposits , donations + txdonation ⟧
  Scripts-No :
    let  pp         = Γ .pparams
         utxo       = s .utxo
         fees       = s .fees
         deposits   = s .deposits
         donations  = s .donations
\end{code}
\begin{code}[hide]
         open Tx tx renaming (body to txb); open TxBody txb
\end{code}
\begin{code}
         sLst       = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ false
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ ⟦ utxo ∣ collateral ᶜ , fees + cbalance (utxo ∣ collateral) , deposits , donations ⟧
\end{code}
\end{AgdaMultiCode}
\caption{UTXOS rule}
\label{fig:utxos-conway}
\end{figure*}

\begin{code}[hide]
unquoteDecl Scripts-Yes-premises = genPremises Scripts-Yes-premises (quote Scripts-Yes)
unquoteDecl Scripts-No-premises  = genPremises Scripts-No-premises  (quote Scripts-No)

data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
  UTXO-inductive :
    let pp        = Γ .pparams
        slot      = Γ .slot
        treasury  = Γ .treasury
        utxo      = s .utxo
\end{code}
\begin{code}[hide]
        open Tx tx renaming (body to txb); open TxBody txb
\end{code}
\begin{code}
        txoutsʰ   = mapValues txOutHash txouts
        overhead  = 160
    in
    ∙ txins ≢ ∅                              ∙ txins ∪ refInputs ⊆ dom utxo
    ∙ txins ∩ refInputs ≡ ∅                  ∙ inInterval slot txvldt
    ∙ feesOK pp tx utxo                      ∙ consumed pp s txb ≡ produced pp s txb
    ∙ coin mint ≡ 0                          ∙ txsize ≤ maxTxSize pp
    ∙ refScriptsSize utxo tx ≤ pp .maxRefScriptSizePerTx
    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        inject ((overhead + utxoEntrySize txout) * coinsPerUTxOByte pp) ≤ᵗ getValueʰ txout
    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        serSize (getValueʰ txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]  netId a         ≡ NetworkId
    ∙ ∀[ a ∈ dom txwdrls ]          a .RwdAddr.net  ≡ NetworkId
    ∙ txNetworkId  ≡? just NetworkId
    ∙ curTreasury  ≡? just treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
\end{code}
\end{AgdaMultiCode}
\begin{code}[hide]
pattern UTXO-inductive⋯ tx Γ s x y z w k l m v j n o p q r t u h
      = UTXO-inductive {Γ = Γ} {s = s} {tx = tx} (x , y , z , w , k , l , m , v , j , n , o , p , q , r , t , u , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
\end{code}
\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}
Figure~\ref{fig:rules:utxo-shelley} ties all the pieces of the UTXO rule together
(The symbol~\AgdaDatatype{≡?} is explained in Sec.~\ref{sec:notation}).
