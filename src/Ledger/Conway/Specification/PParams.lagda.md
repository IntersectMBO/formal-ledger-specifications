---
source_branch: master
source_path: src/Ledger/Conway/Specification/PParams.lagda.md
---

# Protocol Parameters {#sec:protocol-parameters}

This section defines the adjustable protocol parameters of the Cardano ledger.

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Product.Properties
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Rational using (ℚ)
open import Relation.Nullary.Decidable
open import Data.List.Relation.Unary.Any using (Any; here; there)

open import Tactic.Derive.Show

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Core.Specification.ProtocolVersion
open import Ledger.Conway.Specification.Script.Base
open import Ledger.Prelude.Numeric using (UnitInterval; ℕ⁺)

module Ledger.Conway.Specification.PParams
  (cs : CryptoStructure )
  (es : _) (open EpochStructure es)
  (ss : ScriptStructure cs es) (open ScriptStructure ss)
  where

open import Data.String using (parens)

private variable
  m n : ℕ
```
-->

## Protocol Parameter Definitions {#sec:protocol-parameter-definitions}

Protocol parameters are used in block validation and can affect various
features of the system, such as minimum fees, maximum and minimum sizes
of certain components, and more.

The main protocol parameter type is `PParams`{.AgdaRecord}, defined later in
this section.  It contains parameters used in the Cardano ledger, which we group
according to the general purpose that each parameter serves.

+  `NetworkGroup`{.AgdaInductiveConstructor}: parameters related to the network
   settings;

+  `EconomicGroup`{.AgdaInductiveConstructor}: parameters related to the economic
   aspects of the ledger;

+  `TechnicalGroup`{.AgdaInductiveConstructor}: parameters related to technical
   settings;

+  `GovernanceGroup`{.AgdaInductiveConstructor}: parameters related to governance
   settings;

+  `SecurityGroup`{.AgdaInductiveConstructor}: parameters that can impact the
   security of the system.

The purpose of these groups is to determine voting thresholds for proposals aiming to
change parameters.  Given a proposal to change a certain set of parameters, we look
at which groups those parameters fall into and from this we determine the voting
threshold for that proposal.  (The voting threshold calculation is described in
detail in the [Ratification Requirements][] section.)

The first four groups have the property that every protocol parameter is associated
to precisely one of these groups.  The `SecurityGroup`{.AgdaInductiveConstructor} is
special: a protocol parameter may or may not be in the
`SecurityGroup`{.AgdaInductiveConstructor}.  So, each protocol parameter belongs to
at least one and at most two groups.  Note that in
[CIP-1694](https://cips.cardano.org/cip-1694) there is no
`SecurityGroup`{.AgdaInductiveConstructor}, but there is the concept of
security-relevant protocol parameters (see [CKB+23](#cip1694)).  The difference
between these notions is only social, so we implement security-relevant protocol
parameters as a group.

```agda
record Acnt : Type where
```
<!--
```agda
  constructor ⟦_,_⟧ᵃ
```
-->
```agda
  field
    treasury reserves : Coin
```
<!--
```agda
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

This section defines new protocol parameters which denote the following concepts:

+  `drepThresholds`{.AgdaField}: governance thresholds for ; these are rational
   numbers named `Pone`{.AgdaField}, `Ptwoa`{.AgdaField}, `Ptwob`{.AgdaField},
   `Pthree`{.AgdaField}, `Pfour`{.AgdaField}, `Pfivea`{.AgdaField},
   `Pfiveb`{.AgdaField}, `Pfivec`{.AgdaField}, `Pfived`{.AgdaField}, and
   `Psix`{.AgdaField};

+  `poolThresholds`{.AgdaField}: pool-related governance thresholds; these are
   rational numbers named `Qone`{.AgdaField}, `Qtwoa`{.AgdaField},
   `Qtwob`{.AgdaField}, `Qfour`{.AgdaField} and `Qfive`{.AgdaField};

+  `ccMinSize`{.AgdaField}: minimum constitutional committee size;

+  `ccMaxTermLength`{.AgdaField}: maximum term limit (in epochs) of constitutional
   committee members;

+  `govActionLifetime`{.AgdaField}: governance action expiration;

+  `govActionDeposit`{.AgdaField}: governance action deposit;

+  `drepDeposit`{.AgdaField}: `DRep`{.AgdaInductiveConstructor} deposit amount;

+  `drepActivity`{.AgdaField}: `DRep`{.AgdaInductiveConstructor} activity period;

+  `minimumAVS`{.AgdaField}: the minimum active voting threshold.


```agda
LanguageCostModels = List (Language × CostModel)

record PParams : Type where
  field
```

*Network group*
```agda
        maxBlockSize                  : ℕ
        maxTxSize                     : ℕ
        maxHeaderSize                 : ℕ
        maxTxExUnits                  : ExUnits
        maxBlockExUnits               : ExUnits
        maxValSize                    : ℕ
        maxCollateralInputs           : ℕ
```

<!--
```agda
        pv                            : ProtVer -- retired, keep for now
```
-->

*Economic group*
```agda
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
```

<!--
```agda
        minUTxOValue                  : Coin -- retired, keep for now
```
-->

*Technical group*
```agda
        Emax                          : Epoch
        nopt                          : ℕ
        a0                            : ℚ
        collateralPercentage          : ℕ
        -- use an association list instead of a map for DecEq
        costmdlsAssoc                 : LanguageCostModels
```

*Governance group*
```agda
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

<!--
```agda
record HasPParams {a} (A : Type a) : Type a where
  field PParamsOf : A → PParams
open HasPParams ⦃...⦄ public

record HasCCMaxTermLength {a} (A : Type a) : Type a where
  field CCMaxTermLengthOf : A → ℕ
open HasCCMaxTermLength ⦃...⦄ public
```
-->

## Protocol Parameter Well Formedness

We define the function `paramsWellFormed`{.AgdaFunction} which performs some sanity
checks on protocol parameters.

```agda
positivePParams : PParams → List ℕ
positivePParams pp =  ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize
                      ∷ maxValSize ∷ coinsPerUTxOByte
                      ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                      ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
```

<!--
```agda
  where open PParams pp
```
-->

```agda
paramsWellFormed : PParams → Type
paramsWellFormed pp = 0 ∉ fromList (positivePParams pp)
```

<!--
```agda
paramsWF-elim : (pp : PParams) → paramsWellFormed pp → (n : ℕ) → n ∈ˡ (positivePParams pp) → n > 0
paramsWF-elim pp pwf (suc n) x = z<s
paramsWF-elim pp pwf 0 0∈ = ⊥-elim (pwf (to ∈-fromList 0∈))
  where open Equivalence

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
      ; costmdlsAssoc               = if U.costmdls then (λ {cm} → setToList (fromListᵐ (cm ++ P.costmdlsAssoc) ˢ))
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

This section defines an abstract type, `UpdateT`{.AgdaField}, and two functions,
`applyUpdate`{.AgdaField} and `updateGroups`{.AgdaField}.  The type
`UpdateT`{.AgdaField} is to be instantiated by a type that can be

+  used to update parameters, via the function `applyUpdate`{.AgdaField}, and

+  queried about what parameter groups it updates, via the function
   `updateGroups`{.AgdaField}.

An element of the type `UpdateT`{.AgdaField} is well formed if it updates at least
one group and applying the update preserves well-formedness.

<!--
```agda
record PParamsDiff : Type₁ where
  field
```
-->

*Abstract types and functions*
```agda
    UpdateT       : Type
    applyUpdate   : PParams → UpdateT → PParams
    updateGroups  : UpdateT → ℙ PParamGroup
```

<!--
```agda
    ⦃ ppWF? ⦄ : ∀ {u} → (∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)) ⁇
```
-->

*Well-formedness condition*
```agda
  ppdWellFormed : UpdateT → Type
  ppdWellFormed u =
    updateGroups u ≢ ∅
    × ∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)
```

<!--
```agda
record GovParams : Type₁ where
  field ppUpd : PParamsDiff
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  field ⦃ DecEq-UpdT ⦄ : DecEq PParamsUpdate
--         ⦃ Show-UpdT ⦄ : Show PParamsUpdate
```
-->

# References {#references .unnumbered}

**\[CKB+23\]** <span id="cip1694" label="cip1694"></span> Jared Corduan
and Andre Knispel and Matthias Benkort and Kevin Hammond and Charles
Hoskinson and Samuel Leathers. *A First Step Towards On-Chain
Decentralized Governance*. 2023.
