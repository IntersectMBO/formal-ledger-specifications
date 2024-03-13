open import ScriptVerification.Prelude

module ScriptVerification.LedgerImplementation2 where

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

D = String

module _ {A : Set} ⦃ _ : DecEq A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0

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
  toData x = "alskj"

  PlutusScript = String
  ScriptHash = String

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
  open import Ledger.TokenAlgebra String
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

    instance Hashable-Timelock : Hashable Timelock String -- ℕ
             Hashable-Timelock = record { hash = λ x → "timelock" }

    hashRespectsUnion : ∀ {A B ℍ}
      → Hashable A ℍ → Hashable B ℍ
      → Hashable (A ⊎ B) ℍ
    hashRespectsUnion ha hb = record { hash = λ { (inj₁ x) → Hashable.hash ha x ; (inj₂ y) → Hashable.hash hb y }}

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

open TransactionStructure it

indexOfTxInImp : TxIn → ℙ TxIn → Maybe Ix
indexOfTxInImp x y = lookupᵐ? (fromListᵐ (setToList y)) (proj₁ x)

SVAbstractFunctions : AbstractFunctions
SVAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → v
  ; indexOfImp  = record
    { indexOfDCert    = λ _ _ → nothing
    ; indexOfRwdAddr  = λ _ _ → nothing
    ; indexOfTxIn     = indexOfTxInImp
    ; indexOfPolicyId = λ _ _ → nothing
    ; indexOfVote     = λ _ _ → nothing
    ; indexOfProposal = λ _ _ → nothing
    }
  ; runPLCScript = λ _ _ _ _ → false
  ; scriptSize = λ _ → 0
  }
instance _ = SVAbstractFunctions
