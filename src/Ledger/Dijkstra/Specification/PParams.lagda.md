---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PParams.lagda.md
---

# Protocol Parameters {#sec:protocol-parameters}

This section defines the adjustable protocol parameters of the Cardano ledger.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Core.Specification.Epoch using (EpochStructure)
open import Ledger.Core.Specification.ProtocolVersion
open import Ledger.Dijkstra.Specification.Script.Base

module Ledger.Dijkstra.Specification.PParams
  (cs : CryptoStructure )
  (es : EpochStructure) (open EpochStructure es)
  (Network : Type) ( DecEq-Network : DecEq Network )
  (ss : ScriptStructure cs es Network DecEq-Network) (open ScriptStructure ss)
  where

open import Data.Product.Properties
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Rational using (ℚ)
open import Relation.Nullary.Decidable
open import Data.List.Relation.Unary.Any using (Any; here; there)

open import Tactic.Derive.Show

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
-- open import Ledger.Dijkstra.Specification.Script.Base
open import Ledger.Prelude.Numeric using (UnitInterval; ℕ⁺)


private variable
  m n : ℕ
```
-->

## Protocol Parameter Definitions {#sec:protocol-parameter-definitions}


```agda
record Acnt : Type where
  constructor ⟦_,_⟧ᵃ
  field
    treasury reserves : Coin
```

<!--
```agda
record HasAccount {a} (A : Type a) : Type a where
  field AccountOf : A → Acnt
open HasAccount ⦃...⦄ public

instance
  HasTreasury-Acnt : HasTreasury Acnt
  HasTreasury-Acnt .TreasuryOf = Acnt.treasury

  HasReserves-Acnt : HasReserves Acnt
  HasReserves-Acnt .ReservesOf = Acnt.reserves

  unquoteDecl HasCast-Acnt = derive-HasCast
    [ (quote Acnt , HasCast-Acnt) ]
```
-->


### Protocol Parameter Group Definition {#sec:protocol-parameter-group-definition}

```agda
data PParamGroup : Type where
  NetworkGroup     : PParamGroup
  EconomicGroup    : PParamGroup
  TechnicalGroup   : PParamGroup
  GovernanceGroup  : PParamGroup
  SecurityGroup    : PParamGroup
```

### Protocol Parameter Threshold Definitions {#sec:protocol-parameter-threshold-definitions}

```agda
record DrepThresholds : Type where
  field
    P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : ℚ

record PoolThresholds : Type where
  field
    Q1 Q2a Q2b Q4 Q5 : ℚ
```

### Protocol Parameter Declarations {#sec:protocol-parameter-declarations}


```agda
record PParams : Type where
  field

    -- Network group
    maxBlockSize                  : ℕ
    maxTxSize                     : ℕ
    maxHeaderSize                 : ℕ
    maxTxExUnits                  : ExUnits
    maxBlockExUnits               : ExUnits
    maxValSize                    : ℕ
    maxCollateralInputs           : ℕ
    pv                            : ProtVer -- retired, keep for now

    -- Network group (Leios)
    leiosHeaderPeriod             : ℕ
    leiosVotingPeriod             : ℕ
    leiosDiffusionPeriod          : ℕ
    leiosMaxEBSize                : ℕ
    leiosMaxEBTxsSize             : ℕ
    leiosCommitteeSize            : ℕ
    leiosQuorumStakeThreshold     : UnitInterval
    leiosMaxEBExUnits             : ExUnits
    leiosMaxRefScriptSizePerEB    : ℕ

    -- Economic group
    a                             : ℕ
    b                             : ℕ
    keyDeposit                    : Coin
    poolDeposit                   : Coin
    minPoolCost                   : Coin
    monetaryExpansion             : UnitInterval -- formerly: rho
    treasuryCut                   : UnitInterval -- formerly: tau
    coinsPerUTxOByte              : Coin
    prices                        : Prices
    minFeeRefScriptCoinsPerByte   : ℚ
    maxRefScriptSizePerTx         : ℕ
    maxRefScriptSizePerBlock      : ℕ
    refScriptCostStride           : ℕ⁺
    refScriptCostMultiplier       : ℚ
    minUTxOValue                  : Coin -- retired, keep for now

    -- Technical group
    Emax                          : Epoch
    nopt                          : ℕ
    a0                            : ℚ
    collateralPercentage          : ℕ
    -- use an association list instead of a map for DecEq
    costmdlsAssoc                 : LanguageCostModels

    -- Governance group
    poolThresholds                : PoolThresholds
    drepThresholds                : DrepThresholds
    ccMinSize                     : ℕ
    ccMaxTermLength               : ℕ
    govActionLifetime             : ℕ
    govActionDeposit              : Coin
    drepDeposit                   : Coin
    drepActivity                  : Epoch

  costmdls : Language ⇀ CostModel
  costmdls = fromListᵐ (languageCostModels costmdlsAssoc)
```

*Leios parameters*

Leios adds the *endorser block* (EB), an ordered list of transaction references
that a block producer announces alongside its ranking block; a committee of
stake pools votes on the EB, and a certificate carried by the following ranking
block brings the referenced transactions into the ledger.  Three of the nine
parameters measure a Leios round in wall-clock time (header diffusion, voting,
and the additional diffusion that follows voting), four bound an EB (its
reference list, the transactions listed, their script execution, and their
reference scripts), `leiosCommitteeSize`{.AgdaField} (`N_c`) is the number of
committee seats — the committee being the `N_c` pools with the most active
stake — and `leiosQuorumStakeThreshold`{.AgdaField} (`τ`) is the fraction of
the total active stake a certificate's signers must carry.  The ranking block
keeps its existing bound `maxBlockSize`{.AgdaField}, so Leios adds no field for
it.  Zero-valued Leios parameters are meaningful: they are the protocol's
disabled state during rollout.

The field names are this specification's; the cardano-ledger proposal
[#5965][cl-5965], which maps the same parameters onto the Haskell `PParams`,
uses different ones.  Its periods are `SlotInterval` lenses suffixed `Length`,
the diffusion one further prefixed `Additional`.  Its two size bounds are
`Word32` lenses named for the endorser-block *header* and *body*, its terms for
the reference list and the transactions listed; those two bounds are
`leiosMaxEBSize`{.AgdaField} and `leiosMaxEBTxsSize`{.AgdaField} here.  Its
`OrdExUnits` lens is `leiosMaxEBExUnits`{.AgdaField}, one field for
[CIP-164][cip-164]'s separate per-EB steps and memory budgets.  The remaining
field, `leiosMaxRefScriptSizePerEB`{.AgdaField}, has no CIP-164 row at all; it
is the proposal's own addition, the per-EB analogue of
`maxRefScriptSizePerBlock`{.AgdaField}.

*Security group*

`maxBlockSize`{.AgdaField} `maxTxSize`{.AgdaField}
`maxHeaderSize`{.AgdaField} `maxValSize`{.AgdaField}
`maxBlockExUnits`{.AgdaField} `a`{.AgdaField} `b`{.AgdaField}
`minFeeRefScriptCoinsPerByte`{.AgdaField} `coinsPerUTxOByte`{.AgdaField}
`govActionDeposit`{.AgdaField}
`leiosHeaderPeriod`{.AgdaField} `leiosVotingPeriod`{.AgdaField}
`leiosDiffusionPeriod`{.AgdaField} `leiosMaxEBSize`{.AgdaField}
`leiosMaxEBTxsSize`{.AgdaField} `leiosCommitteeSize`{.AgdaField}
`leiosQuorumStakeThreshold`{.AgdaField} `leiosMaxEBExUnits`{.AgdaField}
`leiosMaxRefScriptSizePerEB`{.AgdaField}


## Protocol Parameter Well Formedness

The Leios parameters are deliberately absent from
`positivePParams`{.AgdaFunction}: zero values are the protocol's disabled
state, and governance must be able to reach it.  CIP-164's quorum constraint
`τ < σ(N_c)` relates the threshold to the stake coverage of the selected
committee, a property of the stake distribution rather than of the parameters,
so it cannot be imposed here.

```agda
positivePParams : PParams → List ℕ
positivePParams pp =  ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize
                      ∷ maxValSize ∷ coinsPerUTxOByte
                      ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                      ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
  where open PParams pp

paramsWellFormed : PParams → Type
paramsWellFormed pp = 0 ∉ fromList (positivePParams pp)
```

<!--
```agda
paramsWF-elim : (pp : PParams) → paramsWellFormed pp → (n : ℕ) → n ∈ˡ (positivePParams pp) → n > 0
paramsWF-elim pp pwf (suc n) x = z<s
paramsWF-elim pp pwf 0 0∈ = ⊥-elim (pwf (to ∈-fromList 0∈))
  where open Equivalence

record HasPParams {a} (A : Type a) : Type a where
  field PParamsOf : A → PParams
open HasPParams ⦃...⦄ public

record HasCCMaxTermLength {a} (A : Type a) : Type a where
  field CCMaxTermLengthOf : A → ℕ
open HasCCMaxTermLength ⦃...⦄ public

instance
  unquoteDecl DecEq-DrepThresholds = derive-DecEq
    ((quote DrepThresholds , DecEq-DrepThresholds) ∷ [])
  unquoteDecl DecEq-PoolThresholds = derive-DecEq
    ((quote PoolThresholds , DecEq-PoolThresholds) ∷ [])
  unquoteDecl DecEq-PParams        = derive-DecEq
    ((quote PParams , DecEq-PParams) ∷ [])
  unquoteDecl DecEq-PParamGroup    = derive-DecEq
    ((quote PParamGroup , DecEq-PParamGroup) ∷ [])
  unquoteDecl Show-DrepThresholds = derive-Show
    ((quote DrepThresholds , Show-DrepThresholds) ∷ [])
  unquoteDecl Show-PoolThresholds = derive-Show
    ((quote PoolThresholds , Show-PoolThresholds) ∷ [])
  unquoteDecl Show-PParams        = derive-Show
    ((quote PParams , Show-PParams) ∷ [])
```
-->


```agda
module PParamsUpdate where
  record PParamsUpdate : Type where
    field
          maxBlockSize maxTxSize        : Maybe ℕ
          maxHeaderSize maxValSize      : Maybe ℕ
          maxCollateralInputs           : Maybe ℕ
          maxTxExUnits maxBlockExUnits  : Maybe ExUnits
          pv                            : Maybe ProtVer -- retired, keep for now
          leiosHeaderPeriod             : Maybe ℕ
          leiosVotingPeriod             : Maybe ℕ
          leiosDiffusionPeriod          : Maybe ℕ
          leiosMaxEBSize                : Maybe ℕ
          leiosMaxEBTxsSize             : Maybe ℕ
          leiosCommitteeSize            : Maybe ℕ
          leiosQuorumStakeThreshold     : Maybe UnitInterval
          leiosMaxEBExUnits             : Maybe ExUnits
          leiosMaxRefScriptSizePerEB    : Maybe ℕ
          a b                           : Maybe ℕ
          keyDeposit                    : Maybe Coin
          poolDeposit                   : Maybe Coin
          minPoolCost                   : Maybe Coin
          monetaryExpansion             : Maybe UnitInterval
          treasuryCut                   : Maybe UnitInterval
          coinsPerUTxOByte              : Maybe Coin
          prices                        : Maybe Prices
          minFeeRefScriptCoinsPerByte   : Maybe ℚ
          maxRefScriptSizePerTx         : Maybe ℕ
          maxRefScriptSizePerBlock      : Maybe ℕ
          refScriptCostStride           : Maybe ℕ⁺
          refScriptCostMultiplier       : Maybe ℚ
          minUTxOValue                  : Maybe Coin -- retired, keep for now
          a0                            : Maybe ℚ
          Emax                          : Maybe Epoch
          nopt                          : Maybe ℕ
          collateralPercentage          : Maybe ℕ
          costmdls                      : Maybe LanguageCostModels
          drepThresholds                : Maybe DrepThresholds
          poolThresholds                : Maybe PoolThresholds
          govActionLifetime             : Maybe ℕ
          govActionDeposit drepDeposit  : Maybe Coin
          drepActivity                  : Maybe Epoch
          ccMinSize ccMaxTermLength     : Maybe ℕ

  paramsUpdateWellFormed : PParamsUpdate → Type
  paramsUpdateWellFormed ppu =
       just 0 ∉ fromList ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize
                         ∷ coinsPerUTxOByte ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                         ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit
                         ∷ leiosHeaderPeriod ∷ leiosVotingPeriod ∷ leiosDiffusionPeriod
                         ∷ leiosMaxEBSize ∷ leiosMaxEBTxsSize ∷ leiosMaxRefScriptSizePerEB ∷ [] )
    where open PParamsUpdate ppu
```

<!--
```agda
  paramsUpdateWellFormed? : ( u : PParamsUpdate ) → Dec (paramsUpdateWellFormed u)
  paramsUpdateWellFormed? u = ¿ paramsUpdateWellFormed u ¿

  modifiesNetworkGroup : PParamsUpdate → Bool
  modifiesNetworkGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just maxBlockSize
      ∷ is-just maxTxSize
      ∷ is-just maxHeaderSize
      ∷ is-just maxValSize
      ∷ is-just maxCollateralInputs
      ∷ is-just maxTxExUnits
      ∷ is-just maxBlockExUnits
      ∷ is-just pv
      ∷ is-just leiosHeaderPeriod
      ∷ is-just leiosVotingPeriod
      ∷ is-just leiosDiffusionPeriod
      ∷ is-just leiosMaxEBSize
      ∷ is-just leiosMaxEBTxsSize
      ∷ is-just leiosCommitteeSize
      ∷ is-just leiosQuorumStakeThreshold
      ∷ is-just leiosMaxEBExUnits
      ∷ is-just leiosMaxRefScriptSizePerEB
      ∷ [])

  modifiesEconomicGroup : PParamsUpdate → Bool
  modifiesEconomicGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just a
      ∷ is-just b
      ∷ is-just keyDeposit
      ∷ is-just poolDeposit
      ∷ is-just minPoolCost
      ∷ is-just monetaryExpansion
      ∷ is-just treasuryCut
      ∷ is-just coinsPerUTxOByte
      ∷ is-just minFeeRefScriptCoinsPerByte
      ∷ is-just maxRefScriptSizePerTx
      ∷ is-just maxRefScriptSizePerBlock
      ∷ is-just refScriptCostStride
      ∷ is-just refScriptCostMultiplier
      ∷ is-just prices
      ∷ is-just minUTxOValue
      ∷ [])

  modifiesTechnicalGroup : PParamsUpdate → Bool
  modifiesTechnicalGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just a0
      ∷ is-just Emax
      ∷ is-just nopt
      ∷ is-just collateralPercentage
      ∷ is-just costmdls
      ∷ [])

  modifiesGovernanceGroup : PParamsUpdate → Bool
  modifiesGovernanceGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just drepThresholds
      ∷ is-just poolThresholds
      ∷ is-just govActionLifetime
      ∷ is-just govActionDeposit
      ∷ is-just drepDeposit
      ∷ is-just drepActivity
      ∷ is-just ccMinSize
      ∷ is-just ccMaxTermLength
      ∷ [])

  modifiesSecurityGroup : PParamsUpdate → Bool
  modifiesSecurityGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just maxBlockSize
      ∷ is-just maxTxSize
      ∷ is-just maxHeaderSize
      ∷ is-just maxValSize
      ∷ is-just maxBlockExUnits
      ∷ is-just b
      ∷ is-just a
      ∷ is-just coinsPerUTxOByte
      ∷ is-just govActionDeposit
      ∷ is-just minFeeRefScriptCoinsPerByte
      ∷ is-just leiosHeaderPeriod
      ∷ is-just leiosVotingPeriod
      ∷ is-just leiosDiffusionPeriod
      ∷ is-just leiosMaxEBSize
      ∷ is-just leiosMaxEBTxsSize
      ∷ is-just leiosCommitteeSize
      ∷ is-just leiosQuorumStakeThreshold
      ∷ is-just leiosMaxEBExUnits
      ∷ is-just leiosMaxRefScriptSizePerEB
      ∷ []
      )

  modifiedUpdateGroups : PParamsUpdate → ℙ PParamGroup
  modifiedUpdateGroups ppu =
    ( modifiesNetworkGroup    ?═⇒ NetworkGroup
    ∪ modifiesEconomicGroup   ?═⇒ EconomicGroup
    ∪ modifiesTechnicalGroup  ?═⇒ TechnicalGroup
    ∪ modifiesGovernanceGroup ?═⇒ GovernanceGroup
    ∪ modifiesSecurityGroup   ?═⇒ SecurityGroup
    )
    where
      _?═⇒_ : (PParamsUpdate → Bool) → PParamGroup → ℙ PParamGroup
      pred ?═⇒ grp = if pred ppu then ❴ grp ❵ else ∅

  _?↗_ : ∀ {A : Type} → Maybe A → A → A
  just x ?↗ _ = x
  nothing ?↗ x = x

  ≡-update : ∀ {A : Type} {u : Maybe A} {p : A} {x : A} → u ?↗ p ≡ x ⇔ (u ≡ just x ⊎ (p ≡ x × u ≡ nothing))
  ≡-update {u} {p} {x} = mk⇔ to from
    where
      to : ∀ {A} {u : Maybe A} {p : A} {x : A} → u ?↗ p ≡ x → (u ≡ just x ⊎ (p ≡ x × u ≡ nothing))
      to {u = just x} refl = inj₁ refl
      to {u = nothing} refl = inj₂ (refl , refl)

      from : ∀ {A} {u : Maybe A} {p : A} {x : A} → u ≡ just x ⊎ (p ≡ x × u ≡ nothing) → u ?↗ p ≡ x
      from (inj₁ refl) = refl
      from (inj₂ (refl , refl)) = refl

  _∪ˡᶜᵐ_ : LanguageCostModels → LanguageCostModels → LanguageCostModels
  l ∪ˡᶜᵐ l' = mkLanguageCostModels (setToList (fromListᵐ (languageCostModels l ++ languageCostModels l') ˢ))

  applyPParamsUpdate : PParams → PParamsUpdate → PParams
  applyPParamsUpdate pp ppu =
    record
      { maxBlockSize                = U.maxBlockSize ?↗ P.maxBlockSize
      ; maxTxSize                   = U.maxTxSize ?↗ P.maxTxSize
      ; maxHeaderSize               = U.maxHeaderSize ?↗ P.maxHeaderSize
      ; maxValSize                  = U.maxValSize ?↗ P.maxValSize
      ; maxCollateralInputs         = U.maxCollateralInputs ?↗ P.maxCollateralInputs
      ; maxTxExUnits                = U.maxTxExUnits ?↗ P.maxTxExUnits
      ; maxBlockExUnits             = U.maxBlockExUnits ?↗ P.maxBlockExUnits
      ; pv                          = U.pv ?↗ P.pv
      ; leiosHeaderPeriod           = U.leiosHeaderPeriod ?↗ P.leiosHeaderPeriod
      ; leiosVotingPeriod           = U.leiosVotingPeriod ?↗ P.leiosVotingPeriod
      ; leiosDiffusionPeriod        = U.leiosDiffusionPeriod ?↗ P.leiosDiffusionPeriod
      ; leiosMaxEBSize              = U.leiosMaxEBSize ?↗ P.leiosMaxEBSize
      ; leiosMaxEBTxsSize           = U.leiosMaxEBTxsSize ?↗ P.leiosMaxEBTxsSize
      ; leiosCommitteeSize          = U.leiosCommitteeSize ?↗ P.leiosCommitteeSize
      ; leiosQuorumStakeThreshold   = U.leiosQuorumStakeThreshold ?↗ P.leiosQuorumStakeThreshold
      ; leiosMaxEBExUnits           = U.leiosMaxEBExUnits ?↗ P.leiosMaxEBExUnits
      ; leiosMaxRefScriptSizePerEB  = U.leiosMaxRefScriptSizePerEB ?↗ P.leiosMaxRefScriptSizePerEB
      ; a                           = U.a ?↗ P.a
      ; b                           = U.b ?↗ P.b
      ; keyDeposit                  = U.keyDeposit ?↗ P.keyDeposit
      ; poolDeposit                 = U.poolDeposit ?↗ P.poolDeposit
      ; minPoolCost                 = U.minPoolCost ?↗ P.minPoolCost
      ; monetaryExpansion           = U.monetaryExpansion ?↗ P.monetaryExpansion
      ; treasuryCut                 = U.treasuryCut ?↗ P.treasuryCut
      ; coinsPerUTxOByte            = U.coinsPerUTxOByte ?↗ P.coinsPerUTxOByte
      ; minFeeRefScriptCoinsPerByte = U.minFeeRefScriptCoinsPerByte ?↗ P.minFeeRefScriptCoinsPerByte
      ; maxRefScriptSizePerTx       = U.maxRefScriptSizePerTx ?↗ P.maxRefScriptSizePerTx
      ; maxRefScriptSizePerBlock    = U.maxRefScriptSizePerBlock ?↗ P.maxRefScriptSizePerBlock
      ; refScriptCostStride         = U.refScriptCostStride ?↗ P.refScriptCostStride
      ; refScriptCostMultiplier     = U.refScriptCostMultiplier ?↗ P.refScriptCostMultiplier
      ; prices                      = U.prices ?↗ P.prices
      ; minUTxOValue                = U.minUTxOValue ?↗ P.minUTxOValue
      ; a0                          = U.a0 ?↗ P.a0
      ; Emax                        = U.Emax ?↗ P.Emax
      ; nopt                        = U.nopt ?↗ P.nopt
      ; collateralPercentage        = U.collateralPercentage ?↗ P.collateralPercentage
      ; costmdlsAssoc               = if U.costmdls then (λ {cm} → cm ∪ˡᶜᵐ P.costmdlsAssoc)
                                                    else P.costmdlsAssoc
      ; drepThresholds              = U.drepThresholds ?↗ P.drepThresholds
      ; poolThresholds              = U.poolThresholds ?↗ P.poolThresholds
      ; govActionLifetime           = U.govActionLifetime ?↗ P.govActionLifetime
      ; govActionDeposit            = U.govActionDeposit ?↗ P.govActionDeposit
      ; drepDeposit                 = U.drepDeposit ?↗ P.drepDeposit
      ; drepActivity                = U.drepActivity ?↗ P.drepActivity
      ; ccMinSize                   = U.ccMinSize ?↗ P.ccMinSize
      ; ccMaxTermLength             = U.ccMaxTermLength ?↗ P.ccMaxTermLength
      }
    where
      open module P = PParams pp
      open module U = PParamsUpdate ppu

  instance
    unquoteDecl DecEq-PParamsUpdate  = derive-DecEq
      ((quote PParamsUpdate , DecEq-PParamsUpdate) ∷ [])
```
-->

## Abstract Type for Parameter Updates {#sec:abstract-type-for-parameter-updates}


```agda
record PParamsDiff : Type₁ where
  field
    UpdateT       : Type
    applyUpdate   : PParams → UpdateT → PParams
    updateGroups  : UpdateT → ℙ PParamGroup
    ⦃ ppWF? ⦄ : ∀ {u} → (∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)) ⁇

  -- Well-formedness condition
  ppdWellFormed : UpdateT → Type
  ppdWellFormed u =
    updateGroups u ≢ ∅
    × ∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)

record GovParams : Type₁ where
  field ppUpd : PParamsDiff
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  field ⦃ DecEq-UpdT ⦄ : DecEq PParamsUpdate
--         ⦃ Show-UpdT ⦄ : Show PParamsUpdate
```


# References {#references .unnumbered}

**\[CKB+23\]** <span id="cip1694" label="cip1694"></span> Jared Corduan
and Andre Knispel and Matthias Benkort and Kevin Hammond and Charles
Hoskinson and Samuel Leathers. *A First Step Towards On-Chain
Decentralized Governance*. 2023.

[cip-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#protocol-parameters "CIP-164 | Protocol parameters"
[cl-5965]: https://github.com/IntersectMBO/cardano-ledger/issues/5965 "cardano-ledger | Add Leios related protocol parameters"
