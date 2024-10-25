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

module Ledger.Conway.Conformance.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.ScriptValidation txs abs
open import Ledger.Fees txs using (scriptsCost)
open import Ledger.Conway.Conformance.Certs govStructure

open PParams

instance
  _ = +-0-monoid

updateCertDeposits  : PParams → List DCert → Deposits → Deposits
updateCertDeposits pp [] deposits = deposits
updateCertDeposits pp (delegate c vd khs v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (delegate c vd khs v) pp)
updateCertDeposits pp (regpool kh p ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ ❴ PoolDeposit kh , pp .poolDeposit ❵)
updateCertDeposits pp (regdrep c v a ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (regdrep c v a) pp)
updateCertDeposits pp (dereg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (dereg c v)ᶜ)
updateCertDeposits pp (deregdrep c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (deregdrep c v)ᶜ)
updateCertDeposits pp (_ ∷ certs) deposits
  = updateCertDeposits pp certs deposits

-- -- Unchanged/defined in Utxo module:
updateProposalDeposits : List GovProposal → TxId → Coin → Deposits → Deposits
updateProposalDeposits []        _     _      deposits  = deposits
updateProposalDeposits (_ ∷ ps)  txid  gaDep  deposits  =
  updateProposalDeposits ps txid gaDep deposits
  ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵

updateDeposits : PParams → TxBody → Deposits → Deposits
updateDeposits pp txb = updateCertDeposits pp txcerts
                        ∘ updateProposalDeposits txprop txid (pp .govActionDeposit)
  where open TxBody txb

open import Ledger.Utxo txs abs public
  using (UTxOEnv; UTxOState; ⟦_,_,_,_⟧ᵘ)

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

open PParams

_*↓_ : ℚ.ℚ → ℕ → ℕ
q *↓ n = ℤ.∣ ℚ.⌊ q ℚ.* (ℤ.+ n ℚ./ 1) ⌋ ∣

isTwoPhaseScriptAddress : Tx → UTxO → Addr → Bool
isTwoPhaseScriptAddress tx utxo a =
  if isScriptAddr a then
    (λ {p} → if lookupScriptHash (getScriptHash a p) tx utxo
                 then (λ {s} → isP2Script s)
                 else false)
  else
    false

opaque
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

module _ (let open Tx; open TxBody; open TxWitnesses) where opaque
  outs : TxBody → UTxO
  outs tx = mapKeys (tx .txid ,_) (tx .txouts)

  balance : UTxO → Value
  balance utxo = ∑[ x ← mapValues txOutHash utxo ] getValueʰ x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)

  refScriptsSize : UTxO → Tx → ℕ
  refScriptsSize utxo tx = ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x

  minfee : (pp : PParams) → UTxO → Tx → Coin
  minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits tx)
                     + scriptsCost pp (refScriptsSize utxo tx)

data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where
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
                              , deposits
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

data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Type where
  both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)

instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance

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

feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo =  (  minfee pp utxo tx ≤ᵇ txfee ∧ not (≟-∅ᵇ (txrdmrs ˢ))
                        =>ᵇ  ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                             ∧ isAdaOnlyᵇ bal
                             ∧ (coin bal * 100) ≥ᵇ (txfee * pp .collateralPercentage)
                             ∧ not (≟-∅ᵇ collateral)
                             )
                     )
  where
    open Tx tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)

depositsChange : PParams → TxBody → Deposits → ℤ
depositsChange pp txb deposits =
  getCoin (updateDeposits pp txb deposits) - getCoin deposits

module _ (let open UTxOState; open TxBody) where
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
  produced pp st txb
    =  balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)

utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOutʰ → MemoryEstimate
utxoEntrySize o = utxoEntrySizeWithoutVal + size (getValueʰ o)

data _≡?_ {A : Type} : Maybe A → A → Type where
  ≡?-nothing : ∀ {x : A} → nothing  ≡? x
  ≡?-just    : ∀ {x : A} → (just x) ≡? x

instance
  ≟? : {A : Type} {x : Maybe A} {y : A} → ⦃ DecEq A ⦄ → (x ≡? y) ⁇
  ≟? {x = just x} {y} with x ≟ y
  ... | yes refl = ⁇ yes ≡?-just
  ... | no ¬p    = ⁇ no λ where ≡?-just → ¬p refl
  ≟? {x = nothing} = ⁇ yes ≡?-nothing

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where

  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
        txoutsʰ = (mapValues txOutHash txouts)
        overhead = 160
    in
    ∙ txins ≢ ∅                              ∙ txins ∪ refInputs ⊆ dom utxo
    ∙ txins ∩ refInputs ≡ ∅                  ∙ inInterval slot txvldt
    ∙ feesOK pp tx utxo ≡ true               ∙ consumed pp s txb ≡ produced pp s txb
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
    ∙ txNetworkId ≡? NetworkId
    ∙ curTreasury ≡? treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'

pattern UTXO-inductive⋯ tx Γ s x y z w k l m v j n o p q r t u h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , v , j , n , o , p , q , r , t , u , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
