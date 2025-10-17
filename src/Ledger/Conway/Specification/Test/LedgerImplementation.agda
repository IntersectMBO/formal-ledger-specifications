{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Ledger.Conway.Specification.Test.LedgerImplementation
  (T D : Set) {{DecEq-Data : DecEq D}} {{Show-Data : Show D}} where

open import Ledger.Prelude hiding (fromList; ε); open Computational
import      Data.Integer as ℤ
open import Data.Rational using (0ℚ; ½)
import      Data.Rational as ℚ
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Relation.Binary.Morphism.Structures
open import Algebra.Construct.DirectProduct
open import Ledger.Core.Specification.Crypto
open import Ledger.Conway.Specification.Transaction
open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Specification.Gov.Base

module _ {A : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : Show A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0

module Implementation where
  Network          = ℕ
  SlotsPerEpochᶜ   = 100
  ActiveSlotCoeff  = ℤ.1ℤ ℚ./ 20  
  StabilityWindowᶜ = 10
  RandomnessStabilisationWindowᶜ = 2
  MaxLovelaceSupplyᶜ = 1000000000000000000
  Quorum           = 1
  NetworkId        = 0

  SKey = ℕ
  VKey = ℕ
  Sig  = ℕ
  Ser  = ℕ

  isKeyPair  = _≡_
  sign       = _+_

  Data         = D
  Dataʰ        = mkHashableSet D

  PlutusScript = ℕ × (List Data → Bool)
  ScriptHash = ℕ

  ExUnits      = ℕ × ℕ
  ExUnit-CommutativeMonoid =
    Conversion.fromBundle (commutativeMonoid +-0-commutativeMonoid +-0-commutativeMonoid)
  _≥ᵉ_ : ExUnits → ExUnits → Type
  _≥ᵉ_ = _≡_
  instance
    Show-ExUnits : Show ExUnits
    Show-ExUnits = Show-×

  CostModel    = ⊤ -- changed from ⊥
  Language     = ⊤
  LangDepView  = ⊤
  Prices       = ⊤

  TxId            = ℕ
  Ix              = ℕ
  AuxiliaryData   = ℕ
  DocHash         = ℕ
  tokenAlgebra    = Coin-TokenAlgebra
    where open import Ledger.Conway.Specification.TokenAlgebra.Coin ScriptHash
            using (Coin-TokenAlgebra)

SVGlobalConstants = GlobalConstants ∋ record {Implementation}
SVEpochStructure  = EpochStructure  ∋ ℕEpochStructure SVGlobalConstants
instance _ = SVEpochStructure

SVCrypto : CryptoStructure
SVCrypto = record
  { Implementation
  ; pkk = SVPKKScheme
  }
  where
  -- Dummy private key crypto scheme
  SVPKKScheme : PKKScheme
  SVPKKScheme = record
    { Implementation
    ; isSigned         = λ a b m → a + b ≡ m
    ; sign             = _+_
    ; isSigned-correct = λ where (sk , sk , refl) _ _ h → h
    }

instance _ = SVCrypto

open import Ledger.Conway.Specification.Script it it
open import Ledger.Conway.Conformance.Script it it public using (P1ScriptStructure-HTL)

SVScriptStructure : ScriptStructure
SVScriptStructure = record
  { p1s = P1ScriptStructure-HTL
  ; hashRespectsUnion = hashRespectsUnion
  ; ps = SVP2ScriptStructure
  }
  where

    instance Hashable-PlutusScript : Hashable Implementation.PlutusScript ℕ
             Hashable-PlutusScript = record { hash = λ x → proj₁ x }

    hashRespectsUnion : ∀ {A B ℍ}
      → Hashable A ℍ → Hashable B ℍ
      → Hashable (A ⊎ B) ℍ
    hashRespectsUnion ha hb = record { hash = λ { (inj₁ x) → Hashable.hash ha x ; (inj₂ y) → Hashable.hash hb y }}

    SVP2ScriptStructure : PlutusStructure
    SVP2ScriptStructure =  record
      { Implementation
      ; validPlutusScript = λ _ _ _ _ → ⊤
      }

instance _ = SVScriptStructure

open import Ledger.Conway.Specification.PParams it it it hiding (PParams)

SVGovParams : GovParams
SVGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT                → ⊤
      .updateGroups           → λ _ → ∅
      .applyUpdate            → λ p _ → p
      .ppWF?                  → ⁇ yes λ _ → id
  }

SVGovStructure : GovStructure
SVGovStructure = record
  { Implementation
  ; epochStructure  = SVEpochStructure
  ; govParams       = SVGovParams
  ; cryptoStructure = SVCrypto
  ; globalConstants = SVGlobalConstants
  }
instance _ = SVGovStructure

open import Ledger.Conway.Specification.Gov.Actions it hiding (Vote; GovRole; VDeleg; Anchor)
open import Ledger.Conway.Conformance.Certs it hiding (StakePoolParams; DCert)

SVTransactionStructure : TransactionStructure
SVTransactionStructure = record
  { Implementation
  ; epochStructure  = SVEpochStructure
  ; globalConstants = SVGlobalConstants
  ; adHashingScheme = it
  ; cryptoStructure = SVCrypto
  ; govParams       = SVGovParams
  ; txidBytes       = id
  ; scriptStructure = SVScriptStructure
  }
instance _ = SVTransactionStructure

open import Ledger.Conway.Specification.Abstract it
open import Ledger.Conway.Conformance.Gov it

open TransactionStructure it

indexOfTxInImp : TxIn → ℙ TxIn → Maybe Ix
indexOfTxInImp x y = lookupᵐ? (fromListᵐ (setToList y)) (proj₁ x)
