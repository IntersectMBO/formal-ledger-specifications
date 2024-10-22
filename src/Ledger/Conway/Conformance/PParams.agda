
{-# OPTIONS --safe #-}

open import Data.Product.Properties
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Rational using (ℚ)
open import Relation.Nullary.Decidable
open import Data.List.Relation.Unary.Any using (Any; here; there)

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show

open import Ledger.Prelude
open import Ledger.Conway.Conformance.Crypto
open import Ledger.Conway.Conformance.Script
open import Ledger.Conway.Conformance.Types.Epoch

module Ledger.Conway.Conformance.PParams
  (crypto : Crypto )
  (es     : _) (open EpochStructure es)
  (ss     : ScriptStructure crypto es) (open ScriptStructure ss)
  where

private variable
  m n : ℕ

record Acnt : Type where

  constructor ⟦_,_⟧ᵃ
  field

    treasury reserves : Coin

ProtVer : Type
ProtVer = ℕ × ℕ

instance
  Show-ProtVer : Show ProtVer
  Show-ProtVer = Show-×

data pvCanFollow : ProtVer → ProtVer → Type where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)

data PParamGroup : Type where
  NetworkGroup     : PParamGroup
  EconomicGroup    : PParamGroup
  TechnicalGroup   : PParamGroup
  GovernanceGroup  : PParamGroup
  SecurityGroup    : PParamGroup

record DrepThresholds : Type where

  field

    P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : ℚ

record PoolThresholds : Type where

  field

    Q1 Q2a Q2b Q4 Q5e : ℚ

record PParams : Type where

  field

        maxBlockSize                  : ℕ
        maxTxSize                     : ℕ
        maxHeaderSize                 : ℕ
        maxTxExUnits                  : ExUnits
        maxBlockExUnits               : ExUnits
        maxValSize                    : ℕ
        maxCollateralInputs           : ℕ

        pv                            : ProtVer -- retired, keep for now

        a                             : ℕ
        b                             : ℕ
        keyDeposit                    : Coin
        poolDeposit                   : Coin
        coinsPerUTxOByte              : Coin
        prices                        : Prices
        minFeeRefScriptCoinsPerByte   : ℚ
        maxRefScriptSizePerTx         : ℕ
        maxRefScriptSizePerBlock      : ℕ
        refScriptCostStride           : ℕ
        refScriptCostMultiplier       : ℚ

        minUTxOValue                  : Coin -- retired, keep for now

        Emax                          : Epoch
        nopt                          : ℕ
        a0                            : ℚ
        collateralPercentage          : ℕ

        -- costmdls                   : Language →/⇀ CostModel (Does not work with DecEq)

        costmdls                      : CostModel

        poolThresholds                : PoolThresholds
        drepThresholds                : DrepThresholds
        ccMinSize                     : ℕ
        ccMaxTermLength               : ℕ
        govActionLifetime             : ℕ
        govActionDeposit              : Coin
        drepDeposit                   : Coin
        drepActivity                  : Epoch

positivePParams : PParams → List ℕ
positivePParams pp =  ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize ∷ refScriptCostStride
                      ∷ coinsPerUTxOByte ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                      ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )

  where open PParams pp

paramsWellFormed : PParams → Type
paramsWellFormed pp = 0 ∉ fromList (positivePParams pp)

paramsWF-elim : (pp : PParams) → paramsWellFormed pp → (n : ℕ) → n ∈ˡ (positivePParams pp) → n > 0
paramsWF-elim pp pwf (suc n) x = z<s
paramsWF-elim pp pwf 0 0∈ = ⊥-elim (pwf (to ∈-fromList 0∈))
  where open Equivalence
refScriptCostStride>0 : (pp : PParams) → paramsWellFormed pp → (PParams.refScriptCostStride pp) > 0
refScriptCostStride>0 pp pwf = paramsWF-elim pp pwf (PParams.refScriptCostStride pp) (there (there (there (there (here refl)))))

instance
  Show-ℚ = Show _ ∋ record {M}
    where import Data.Rational.Show as M
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
          coinsPerUTxOByte              : Maybe Coin
          prices                        : Maybe Prices
          minFeeRefScriptCoinsPerByte   : Maybe ℚ
          maxRefScriptSizePerTx         : Maybe ℕ
          maxRefScriptSizePerBlock      : Maybe ℕ
          refScriptCostStride           : Maybe ℕ
          refScriptCostMultiplier       : Maybe ℚ
          minUTxOValue                  : Maybe Coin -- retired, keep for now
          a0                            : Maybe ℚ
          Emax                          : Maybe Epoch
          nopt                          : Maybe ℕ
          collateralPercentage          : Maybe ℕ
          costmdls                      : Maybe CostModel
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

  modifiedUpdateGroups : PParamsUpdate → ℙ PParamGroup
  modifiedUpdateGroups ppu =
    ( modifiesNetworkGroup    ?═⇒ NetworkGroup
    ∪ modifiesEconomicGroup   ?═⇒ EconomicGroup
    ∪ modifiesTechnicalGroup  ?═⇒ TechnicalGroup
    ∪ modifiesGovernanceGroup ?═⇒ GovernanceGroup
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
      ; costmdls                    = U.costmdls ?↗ P.costmdls
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

record PParamsDiff : Type₁ where
  field

    UpdateT : Type
    applyUpdate : PParams → UpdateT → PParams
    updateGroups : UpdateT → ℙ PParamGroup


    ⦃ ppWF? ⦄ : ∀ {u} → (∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)) ⁇


  ppdWellFormed : UpdateT → Type
  ppdWellFormed u = updateGroups u ≢ ∅
    × ∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)

record GovParams : Type₁ where
  field ppUpd : PParamsDiff
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  field ppHashingScheme : isHashableSet PParams
  open isHashableSet ppHashingScheme renaming (THash to PPHash) public
  field ⦃ DecEq-UpdT ⦄ : DecEq PParamsUpdate
--         ⦃ Show-UpdT ⦄ : Show PParamsUpdate

