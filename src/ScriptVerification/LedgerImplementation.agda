open import ScriptVerification.Prelude
open import Prelude using (Type)

module ScriptVerification.LedgerImplementation
  (T D : Type)
  (scriptImp : ScriptImplementation T D) (open ScriptImplementation scriptImp)
  where

open import Ledger.Prelude hiding (fromList; ε); open Computational
import      Data.Integer as ℤ
open import Data.Rational using (0ℚ; ½)
import      Data.Rational as ℚ
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Relation.Binary.Morphism.Structures
open import Algebra.Construct.DirectProduct
open import Foreign.Convertible
import Foreign.Haskell as F
open import Ledger.Core.Specification.Crypto
open import Ledger.Conway.Transaction
open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Types.GovStructure

module _ {A : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : Show A ⦄ where instance
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
  Quorum           = 1
  NetworkId        = 0

  SKey = ℕ
  VKey = ℕ
  Sig  = ℕ
  Ser  = ℕ

  isKeyPair  = _≡_
  sign       = _+_

  Data         = D
  Dataʰ        = mkHashableSet Data
  toData : ∀ {A : Type} → A → D
  toData = toData' -- fix this

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
    where open import Ledger.Conway.TokenAlgebra.Coin ScriptHash
            using (Coin-TokenAlgebra)


SVGlobalConstants = GlobalConstants ∋ record {Implementation}
SVEpochStructure  = EpochStructure  ∋ ℕEpochStructure SVGlobalConstants
instance _ = SVEpochStructure

SVCryptoStructure : CryptoStructure
SVCryptoStructure = record
  { Implementation
  ; pkk = SVPKKScheme
  }
  where
  -- Dummy private key crypto scheme
  SVPKKScheme : PKKScheme
  SVPKKScheme = record
    { Implementation
    ; isSigned         = λ a b m → ⊤
    ; sign             = λ _ _ → zero
    ; isSigned-correct = λ where (sk , sk , refl) _ _ h → tt
    }

instance _ = SVCryptoStructure

open import Ledger.Conway.Script it it
open import Ledger.Conway.Conformance.Script it it

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

open import Ledger.Conway.PParams it it it hiding (PParams)

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
  ; cryptoStructure = SVCryptoStructure
  ; globalConstants = SVGlobalConstants
  }
instance _ = SVGovStructure

open import Ledger.Conway.GovernanceActions it hiding (Vote; GovRole; VDeleg; Anchor)
open import Ledger.Conway.Conformance.Certs it hiding (PoolParams; DCert)

SVTransactionStructure : TransactionStructure
SVTransactionStructure = record
  { Implementation
  ; epochStructure  = SVEpochStructure
  ; globalConstants = SVGlobalConstants
  ; adHashingScheme = it
  ; cryptoStructure = SVCryptoStructure
  ; govParams       = SVGovParams
  ; txidBytes       = id
  ; scriptStructure = SVScriptStructure
  }
instance _ = SVTransactionStructure

open import Ledger.Conway.Abstract it
open import Ledger.Conway.Gov it

open TransactionStructure it

indexOfTxInImp : TxIn → ℙ TxIn → Maybe Ix
indexOfTxInImp x y = lookupᵐ? (fromListᵐ (setToList y)) (proj₁ x)

SVAbstractFunctions : AbstractFunctions
SVAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → 0 -- changed to 0
  ; indexOfImp  = record
    { indexOfDCert    = λ _ _ → nothing
    ; indexOfRwdAddr  = λ _ _ → nothing
    ; indexOfTxIn     = indexOfTxInImp
    ; indexOfPolicyId = λ _ _ → nothing
    ; indexOfVote     = λ _ _ → nothing
    ; indexOfProposal = λ _ _ → nothing
    }
  ; runPLCScript = λ { x x₁ x₂ x₃ → proj₂ x₁ x₃ }
  ; scriptSize = λ _ → 0
  }
instance _ = SVAbstractFunctions
