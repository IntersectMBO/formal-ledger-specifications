---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo.lagda.md
---

# The UTxO Transition System

This is a **work-in-progress** of the Dijkstra-era UTxO transition system.  It
previously formalized just the phase-1 structural checks specific to Dijkstra, but it
now also includes a first pass at formalizing the full batch semantics and phase-2
execution model (see Issues #1006, #1007).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Fees using (scriptsCost)

```
-->

## Functions and Types of the UTxO Transition System

```agda
private variable
  ℓ : TxLevel

totExUnits : Tx ℓ → ExUnits
totExUnits tx = ∑[ (_ , eu) ← RedeemersOf tx ] eu

-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOutʰ → MemoryEstimate
utxoEntrySize o = utxoEntrySizeWithoutVal + size (getValueʰ o)

open PParams

record UTxOEnv : Type where
  field
    slot      : Slot
    pparams   : PParams
    treasury  : Treasury
    utxo₀     : UTxO

record UTxOState : Type where
  constructor ⟦_,_,_,_⟧ᵘ
  field
    utxo       : UTxO
    fees       : Fees
    deposits   : Deposits
    donations  : Donations
```

<!--
```agda
record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState
open HasUTxOState ⦃...⦄ public

instance
  HasPParams-UTxOEnv : HasPParams UTxOEnv
  HasPParams-UTxOEnv .PParamsOf = UTxOEnv.pparams

  HasUTxO-UTxOEnv : HasUTxO UTxOEnv
  HasUTxO-UTxOEnv .UTxOOf = UTxOEnv.utxo₀

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  HasFee-UTxOState : HasFees UTxOState
  HasFee-UTxOState .FeesOf = UTxOState.fees

  HasDeposits-UTxOState : HasDeposits UTxOState
  HasDeposits-UTxOState .DepositsOf = UTxOState.deposits

  HasDonations-UTxOState : HasDonations UTxOState
  HasDonations-UTxOState .DonationsOf = UTxOState.donations

  unquoteDecl HasCast-UTxOEnv HasCast-UTxOState = derive-HasCast
    ( (quote UTxOEnv   , HasCast-UTxOEnv  ) ∷
    [ (quote UTxOState , HasCast-UTxOState) ])
```
-->



```agda
-- We have a 2-UTxO parameterization in #1006 (`utxoSpend₀` vs `utxoRefView`). For #1007,
-- to not get blocked on the "reference inputs vs all-inputs-initially" stuff, we
-- define a placeholder `utxoRefView` in `Utxo` and keep it simple for now (e.g.
-- utxoRefView here as just `utxo s`; we'll refine it later once #1005 is finalized.
utxoRefView : UTxOState → UTxO
utxoRefView = UTxOOf

opaque

  outs : Tx ℓ  → UTxO
  outs tx = mapKeys (TxIdOf tx ,_) (IndexedOutputsOf tx)

  balance : UTxO → Value
  balance utxo = ∑[ x ← mapValues txOutHash utxo ] getValueʰ x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)

  refScriptsSize : Tx ℓ → UTxO → UTxO → ℕ
  refScriptsSize tx utxoSpend₀ utxoRefView = sum (map scriptSize (refScripts tx utxoSpend₀ utxoRefView))

  minfee : PParams → Tx ℓ → UTxO → UTxO → Coin
  minfee pp tx utxoSpend₀ utxoRefView =  pp .a * (SizeOf tx) + pp .b
                                         + txScriptFee (pp .prices) (totExUnits tx)
                                         + scriptsCost pp (refScriptsSize tx utxoSpend₀ utxoRefView)
```
<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
```
-->


```agda
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
```

<!--
```agda
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
```
-->

```agda
updateCertDeposits  : PParams → List DCert → Deposits → Deposits
updateCertDeposits pp [] deposits = deposits
updateCertDeposits pp (reg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (reg c v) pp)
updateCertDeposits pp (delegate c vd khs v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (delegate c vd khs v) pp)
updateCertDeposits pp (regpool kh p ∷ certs) deposits
  -- pool deposits are not added a second time if they are already present
  -- (reregistrations or duplicate certificates).
  = updateCertDeposits pp certs (deposits ∪ˡ certDeposit (regpool kh p) pp)
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

updateDeposits : PParams → Tx ℓ → Deposits → Deposits
updateDeposits pp tx = updateCertDeposits pp (DCertsOf tx)
                        ∘ updateProposalDeposits (GovProposalsOf tx) (TxIdOf tx) (pp .govActionDeposit)

proposalDepositsΔ : List GovProposal → PParams → Tx ℓ → Deposits
proposalDepositsΔ props pp tx = updateProposalDeposits props (TxIdOf tx) (pp .govActionDeposit) ∅

depositsChange : PParams → Tx ℓ → Deposits → ℤ
depositsChange pp tx deposits =
  getCoin (updateDeposits pp tx deposits) - getCoin deposits

data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Type where
  both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)
```

<!--
```agda
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
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s)
                               + (FeesOf s)
                               + getCoin (DepositsOf s)
                               + DonationsOf s

coinPolicies : ℙ ScriptHash
coinPolicies = policies (inject 1)

isAdaOnly : Value → Type
isAdaOnly v = policies v ≡ᵉ coinPolicies
```
-->

```agda
collateralCheck : PParams → TopLevelTx → UTxO → Type
collateralCheck pp txTop utxo =
  All (λ (addr , _) → isVKeyAddr addr) (range (utxo ∣ CollateralInputsOf txTop))
  × isAdaOnly (balance (utxo ∣ CollateralInputsOf txTop))
  × coin (balance (utxo ∣ CollateralInputsOf txTop)) * 100 ≥ (TxFeesOf txTop) * pp .collateralPercentage
  × (CollateralInputsOf txTop) ≢ ∅


consumedSub : UTxOState → SubLevelTx → Value
consumedSub s txSub = balance (UTxOOf s ∣ SpendInputsOf txSub)
                      + MintedValueOf txSub
                      + inject (getCoin (WithdrawalsOf txSub))

producedSub : SubLevelTx → Value
producedSub txSub = balance (outs txSub) + inject (DonationsOf txSub)

module _ (Γ : UTxOEnv) (s : UTxOState) where

  getP2ScriptsWithContextOf : {ℓ : TxLevel} → Tx ℓ → List (P2Script × List Data × ExUnits × CostModel)
  getP2ScriptsWithContextOf {ℓ} tx = collectP2ScriptsWithContext {ℓ = ℓ} (PParamsOf Γ) tx (UTxOOf Γ) (utxoRefView s)

  module _ (txTop : TopLevelTx) where

    Δdeposits : ℤ
    Δdeposits = depositsChange (PParamsOf Γ) txTop (DepositsOf s)

    depositRefunds : Coin
    depositRefunds  = negPart Δdeposits

    newDeposits : Coin
    newDeposits = posPart Δdeposits

    consumed : Value
    consumed =  balance (UTxOOf s ∣ SpendInputsOf txTop)
                + MintedValueOf txTop
                + inject depositRefunds
                + inject (getCoin (WithdrawalsOf txTop))

    produced : Value
    produced =  balance (outs txTop)
                + inject (TxFeesOf txTop)
                + inject newDeposits
                + inject (DonationsOf txTop)

    batchP2Inputs : List (P2Script × List Data × ExUnits × CostModel)
    batchP2Inputs = getP2ScriptsWithContextOf txTop ++ concatMap getP2ScriptsWithContextOf (SubTransactionsOf txTop)

    batchScripts✓ : Bool
    batchScripts✓ = evalP2Scripts batchP2Inputs

    batchProduced : Value
    batchProduced = produced + sumᵛ (map producedSub (SubTransactionsOf txTop))

    batchConsumed : Value
    batchConsumed = consumed + sumᵛ (map (consumedSub s) (SubTransactionsOf txTop))

    batchPOV : Type
    batchPOV = batchConsumed ≡ batchProduced

    -- Total Ada minted across the entire batch (top-level tx + all sub-txs).
    -- This must equal 0 to prevent Ada forgery and maintain the total Ada supply invariant.
    -- Analogous to Conway's `coin mint ≡ 0` constraint, but generalized to batches.
    batchMintedCoin : Coin
    batchMintedCoin = coin (MintedValueOf txTop) + sum (map (λ txSub → coin (MintedValueOf txSub)) (SubTransactionsOf txTop))



module Batch (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) where

  -- union a list of sets
  concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
  concatMapˡ f as = proj₁ $ unions (fromList (map f as))
  -- (maybe move this to agda-sets or src-lib-exts)

  batchSpendInputs : ℙ TxIn
  batchSpendInputs =  SpendInputsOf txTop ∪ concatMapˡ SpendInputsOf (SubTransactionsOf txTop)

  -- union UTxO maps for outputs.
  batchOuts : UTxO
  batchOuts = outs txTop ∪ˡ foldr (λ sub acc → outs sub ∪ˡ acc) ∅ (SubTransactionsOf txTop)

  utxo-scripts✓ : UTxO
  utxo-scripts✓ =  (UTxOOf s ∣ batchSpendInputs ᶜ)  -- remove ALL batch spend inputs
                   ∪ˡ batchOuts                     -- add ALL outputs (top + subs)

  deposits-scripts✓ : Deposits
  deposits-scripts✓ = foldr  (λ sub deps → updateDeposits (PParamsOf Γ) sub deps)
                             (updateDeposits (PParamsOf Γ) txTop (DepositsOf s))
                             (SubTransactionsOf txTop)

  donations-scripts✓ : Donations
  donations-scripts✓ =  DonationsOf s + DonationsOf txTop
                            + sum (map DonationsOf (SubTransactionsOf txTop))

  fees-scripts✓ : Fees
  fees-scripts✓ = FeesOf s + TxFeesOf txTop

  s'-scripts✓ : UTxOState
  s'-scripts✓ = ⟦ utxo-scripts✓ , fees-scripts✓ , deposits-scripts✓ , donations-scripts✓ ⟧

  collateralCoin : Coin
  collateralCoin = coin (balance (UTxOOf s ∣ CollateralInputsOf txTop))

  utxo-scripts× : UTxO
  utxo-scripts× = UTxOOf s ∣ (CollateralInputsOf txTop) ᶜ

  -- assuming for now that collateral is collected by adding it to fees
  fees-scripts× : Fees
  fees-scripts× = FeesOf s + collateralCoin

  s'-scripts× : UTxOState
  s'-scripts× = ⟦ utxo-scripts× , fees-scripts× , DepositsOf s , DonationsOf s ⟧
```


## The <span class="AgdaDatatype">UTXOS</span> Rule


<!--
```agda
private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : TopLevelTx
  stx : SubLevelTx
```
-->

```agda
data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO-scripts✓ :

    let open Batch Γ s tx in

    ∙ Tx.isValid tx ≡ batchScripts✓ Γ s tx
    ∙ batchScripts✓ Γ s tx ≡ true
    ∙ batchPOV Γ s tx
    ∙ batchMintedCoin Γ s tx ≡ 0
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'-scripts✓

  UTXO-scripts× :

    let open Batch Γ s tx in

    ∙ Tx.isValid tx ≡ batchScripts✓ Γ s tx
    ∙ batchScripts✓ Γ s tx ≡ false
    ∙ collateralCheck (PParamsOf Γ) tx (UTxOOf s)
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'-scripts×
```

## The <span class="AgdaDatatype">UTXO</span> Rule


```agda
data _⊢_⇀⦇_,SUBUTXO⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :

      ────────────────────────────────
      Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    ∙ SpendInputsOf tx ≢ ∅
    ∙ SpendInputsOf tx ⊆ dom (UTxOOf Γ)                           -- (1)
    ∙ ReferenceInputsOf tx ⊆ dom (UTxOOf s)
    ∙ requiredTopLevelGuardsSatisfied tx (SubTransactionsOf tx)   -- (2)
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
```

**Notes**.

1.  The set of spending inputs must exist in the UTxO *before* applying the
    transaction (or partially applying any part of it).

2.  The premise `requiredTopLevelGuardsSatisfied tx subTxs` is explicitly a
    phase-1 condition (CIP-0118): every guard credential requested by subtransaction
    bodies must appear in the top-level `txGuards` set.
