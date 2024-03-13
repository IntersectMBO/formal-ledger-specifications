open import ScriptVerification.Prelude

module ScriptVerification.LedgerImplementation
  (D : Set)
  (scriptImp : ScriptImplementation D) (open ScriptImplementation scriptImp)
  where

open import Ledger.Prelude hiding (fromList; ε); open Computational

open import Data.Rational using (0ℚ; ½)

open import Algebra             using (CommutativeMonoid)
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-isCommutativeMonoid)
open import Relation.Binary.Morphism.Structures

open import Foreign.Convertible

import Foreign.Haskell as F
import Ledger.Foreign.LedgerTypes as F

open import Ledger.Crypto
open import Ledger.Transaction
open import Ledger.Types.Epoch
open import Ledger.Types.GovStructure

open import Interface.HasOrder.Instance

module _ {A : Set} ⦃ _ : DecEq A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id; .hashInj refl → refl

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0; .hashInj _ → refl

module Implementation where
  Network          = ⊤
  SlotsPerEpochᶜ   = 100
  StabilityWindowᶜ = 10
  Quorum           = 1
  NetworkId        = tt

  SKey = ℕ
  VKey = ℕ
  Sig  = ℕ
  Ser  = ℕ

  isKeyPair  = _≡_
  sign       = _+_

  Data         = D
  Dataʰ        = mkHashableSet Data
  toData : ∀ {A : Set} → A → D
  toData = serialise

  PlutusScript = Data → Data → Bool
  ScriptHash = Data → Data → Bool

  ExUnits      = ℕ × ℕ
  ExUnit-CommutativeMonoid = IsCommutativeMonoid' 0ℓ 0ℓ ExUnits ∋ (toCommMonoid' record
    { Carrier = ExUnits
    ; _≈_ = _≈ᵖ_
    ; _∙_ = _∙ᵖ_
    ; ε = zero , zero
    ; isCommutativeMonoid = pairOpRespectsComm +-0-isCommutativeMonoid
    }) where open import Algebra.PairOp ℕ zero _≡_ _+_
  _≥ᵉ_ : ExUnits → ExUnits → Set
  _≥ᵉ_ = _≡_
  CostModel    = ⊤ -- changed from ⊥
  Language     = ⊤
  LangDepView  = ⊤
  Prices       = ⊤
  open import Ledger.TokenAlgebra (Data → Data → Bool)
  coinTokenAlgebra : TokenAlgebra
  coinTokenAlgebra = λ where
    .Value                      → ℕ
    .Value-IsCommutativeMonoid' → it
      -- ^ Agda bug? Without this line, `coinIsMonoidHomomorphism` doesn't type check anymore
    .coin                       → id
    .inject                     → id
    .policies                   → λ _ → ∅
    .size                       → λ x → 1 -- there is only ada in this token algebra
    ._≤ᵗ_                       → _≤_
    .AssetName                  → String
    .specialAsset               → "Ada"
    .property                   → λ _ → refl
    .coinIsMonoidHomomorphism   → Id.isMonoidHomomorphism _ refl
   where open TokenAlgebra
         open Algebra.Morphism.IsMonoidHomomorphism
         open Algebra.Morphism.IsMagmaHomomorphism
         import Algebra.Morphism.Construct.Identity as Id

  TxId            = ℕ
  Ix              = ℕ
  AuxiliaryData   = ⊤
  DocHash         = ℕ
  networkId       = tt
  tokenAlgebra    = coinTokenAlgebra

SVGlobalConstants = GlobalConstants ∋ record {Implementation}
SVEpochStructure  = EpochStructure  ∋ ℕEpochStructure SVGlobalConstants
instance _ = SVEpochStructure

SVCrypto : Crypto
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

open import Ledger.Script it it

SVScriptStructure : ScriptStructure
SVScriptStructure = record
  { hashRespectsUnion = hashRespectsUnion
  ; ps = SVP2ScriptStructure }
  where
  postulate
    instance Hashable-Timelock : Hashable Timelock (Implementation.Data → Implementation.Data → Bool) -- ℕ

    hashRespectsUnion : ∀ {A B ℍ}
      → Hashable A ℍ → Hashable B ℍ
      → Hashable (A ⊎ B) ℍ

  SVP2ScriptStructure : PlutusStructure
  SVP2ScriptStructure = record
    { Implementation
    ; validPlutusScript = λ _ _ _ _ → ⊤
    }

instance _ = SVScriptStructure

open import Ledger.PParams it it it hiding (PParams)

SVGovParams : GovParams
SVGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT                → ⊤
      .updateGroups           → λ _ → ∅
      .applyUpdate            → λ p _ → p
      .ppdWellFormed          → λ _ → false
      .ppdWellFormed⇒hasGroup → λ ()
      .ppdWellFormed⇒WF       → λ _ _ x → x
  ; ppHashingScheme = it
  }

SVGovStructure : GovStructure
SVGovStructure = record
  { Implementation
  ; epochStructure = SVEpochStructure
  ; govParams      = SVGovParams
  ; crypto         = SVCrypto
  }
instance _ = SVGovStructure

open import Ledger.GovernanceActions it hiding (Vote; GovRole; VDeleg; Anchor)
open import Ledger.Deleg it hiding (PoolParams; DCert)

SVTransactionStructure : TransactionStructure
SVTransactionStructure = record
  { Implementation
  ; epochStructure  = SVEpochStructure
  ; globalConstants = SVGlobalConstants
  ; adHashingScheme = it
  ; crypto          = SVCrypto
  ; govParams       = SVGovParams
  ; txidBytes       = id
  ; scriptStructure = SVScriptStructure
  }
instance _ = SVTransactionStructure

open import Ledger.Abstract it
open import Ledger.Gov it

SVAbstractFunctions : AbstractFunctions
SVAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → v
  ; indexOfImp  = record
    { indexOfDCert    = λ _ _ → nothing
    ; indexOfRwdAddr  = λ _ _ → nothing
    ; indexOfTxIn     = λ _ _ → nothing
    ; indexOfPolicyId = λ _ _ → nothing
    ; indexOfVote     = λ _ _ → nothing
    ; indexOfProposal = λ _ _ → nothing
    }
  ; runPLCScript = λ { x x₁ x₂ [] → false ;
                     x x₁ x₂ (x₃ ∷ []) → false ;
                     x x₁ x₂ (datum ∷ redeemer ∷ x₅) → x₁ datum redeemer} -- λ _ _ _ _ → false
  ; scriptSize = λ _ → 0
  }
instance _ = SVAbstractFunctions

