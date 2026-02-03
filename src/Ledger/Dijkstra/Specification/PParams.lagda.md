---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PParams.lagda.md
---

# Protocol Parameters {#sec:protocol-parameters}

This section defines the adjustable protocol parameters of the Cardano ledger.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Core.Specification.Epoch using (EpochStructure)
open import Ledger.Dijkstra.Specification.Script.Base

module Ledger.Dijkstra.Specification.PParams
  (cs : CryptoStructure )
  (es : EpochStructure) (open EpochStructure es)
  (ss : ScriptStructure cs es) (open ScriptStructure ss)
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

ProtVer : Type
ProtVer = ℕ × ℕ

data pvCanFollow : ProtVer → ProtVer → Type where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)
```

<!--
```agda
instance
  HasTreasury-Acnt : HasTreasury Acnt
  HasTreasury-Acnt .TreasuryOf = Acnt.treasury

  HasReserves-Acnt : HasReserves Acnt
  HasReserves-Acnt .ReservesOf = Acnt.reserves

instance
  Show-ProtVer : Show ProtVer
  Show-ProtVer = Show-×

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
LanguageCostModels : Type
LanguageCostModels = List (Language × CostModel)

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

    -- Economic group
    a                             : ℕ
    b                             : ℕ
    keyDeposit                    : Coin
    poolDeposit                   : Coin
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
  costmdls = fromListᵐ costmdlsAssoc
```

*Security group*

`maxBlockSize`{.AgdaField} `maxTxSize`{.AgdaField}
`maxHeaderSize`{.AgdaField} `maxValSize`{.AgdaField}
`maxBlockExUnits`{.AgdaField} `a`{.AgdaField} `b`{.AgdaField}
`minFeeRefScriptCoinsPerByte`{.AgdaField} `coinsPerUTxOByte`{.AgdaField}
`govActionDeposit`{.AgdaField}


## Protocol Parameter Well Formedness

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
  Show-LanguageCostModels : Show LanguageCostModels
  Show-LanguageCostModels =
    Show-List ⦃ Show-× ⦃ Show-Language ⦄ ⦃ Show-CostModel ⦄ ⦄
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
          a b                           : Maybe ℕ
          keyDeposit                    : Maybe Coin
          poolDeposit                   : Maybe Coin
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
          costmdls                      : Maybe (List (Language × CostModel))
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
                         ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
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
      ∷ [])

  modifiesEconomicGroup : PParamsUpdate → Bool
  modifiesEconomicGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just a
      ∷ is-just b
      ∷ is-just keyDeposit
      ∷ is-just poolDeposit
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
      ; a                           = U.a ?↗ P.a
      ; b                           = U.b ?↗ P.b
      ; keyDeposit                  = U.keyDeposit ?↗ P.keyDeposit
      ; poolDeposit                 = U.poolDeposit ?↗ P.poolDeposit
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
      ; costmdlsAssoc               = U.costmdls ?↗ P.costmdlsAssoc
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

instance
  pvCanFollow? : ∀ {pv} {pv'} → Dec (pvCanFollow pv pv')
  pvCanFollow? {m , n} {pv} with pv ≟ (m + 1 , 0) | pv ≟ (m , n + 1)
  ... | no ¬p    | no ¬p₁   = no $ λ where canFollowMajor → ¬p  refl
                                           canFollowMinor → ¬p₁ refl
  ... | no ¬p    | yes refl = yes canFollowMinor
  ... | yes refl | no ¬p    = yes canFollowMajor
  ... | yes refl | yes p    = ⊥-elim $ m+1+n≢m m $ ×-≡,≡←≡ p .proj₁
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
