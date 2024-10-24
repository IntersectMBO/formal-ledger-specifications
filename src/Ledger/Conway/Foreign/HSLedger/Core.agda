module Ledger.Conway.Foreign.HSLedger.Core where

open import Ledger.Prelude hiding (ε) renaming (fromList to fromListˢ) public

open Computational public

open import Algebra.Morphism    using (module MonoidMorphisms) public

open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-isCommutativeMonoid) public

open import Foreign.Convertible           public
open import Foreign.Convertible.Deriving  public
open import Foreign.HaskellTypes          public
open import Foreign.HaskellTypes.Deriving public

open import Ledger.Crypto
open import Ledger.Types.Epoch

open import Ledger.Transaction renaming (Vote to VoteTag) public

postulate
  error : {A : Set} → String → A
{-# FOREIGN GHC import Data.Text #-}
{-# COMPILE GHC error = \ _ s -> error (unpack s) #-}

module _ {A : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : Show A ⦄ where instance
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
  ScriptHash = ℕ

  Data         = ⊤
  Dataʰ        = mkHashableSet Data
  toData : ∀ {A : Type} → A → Data
  toData _ = tt

  PlutusScript = ⊤
  ExUnits      = ℕ × ℕ
  ExUnit-CommutativeMonoid = CommutativeMonoid 0ℓ 0ℓ ExUnits ∋ (Conversion.fromBundle record
    { Carrier = ExUnits
    ; _≈_ = _≈ᵖ_
    ; _∙_ = _∙ᵖ_
    ; ε = zero , zero
    ; isCommutativeMonoid = pairOpRespectsComm +-0-isCommutativeMonoid
    }) where open import Algebra.PairOp ℕ zero _≡_ _+_
  _≥ᵉ_ : ExUnits → ExUnits → Type
  _≥ᵉ_ = _≡_

  instance
    Show-ExUnits : Show ExUnits
    Show-ExUnits = Show-×

  CostModel    = ⊤
  Language     = ⊤
  LangDepView  = ⊤
  Prices       = ⊤
  open import Ledger.TokenAlgebra ℕ
  coinTokenAlgebra : TokenAlgebra
  coinTokenAlgebra = λ where
    .Value                      → ℕ
    .Value-CommutativeMonoid    → it
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
  tokenAlgebra    = coinTokenAlgebra

HSGlobalConstants = GlobalConstants ∋ record {Implementation}
instance
  HSEpochStructure = EpochStructure  ∋ ℕEpochStructure HSGlobalConstants

  HSCrypto : Crypto
  HSCrypto = record
    { Implementation
    ; pkk = HSPKKScheme
    }
    where
    -- Dummy private key crypto scheme
    HSPKKScheme : PKKScheme
    HSPKKScheme = record
      { Implementation
      ; isSigned         = λ a b m → ⊤
      ; sign             = λ _ _ → zero
      ; isSigned-correct = λ where (sk , sk , refl) _ _ h → tt
      }

-- No P2 scripts for now

open import Ledger.Script it it
open import Ledger.Conway.Conformance.Script it it public

instance
  HSScriptStructure : ScriptStructure
  HSScriptStructure = record
    { p1s = P1ScriptStructure-HTL
    ; hashRespectsUnion = hashRespectsUnion
    ; ps = HSP2ScriptStructure
    }
    where
      hashRespectsUnion : ∀ {A B ℍ}
        → Hashable A ℍ → Hashable B ℍ
        → Hashable (A ⊎ B) ℍ
      hashRespectsUnion a _ .hash (inj₁ x) = hash ⦃ a ⦄ x
      hashRespectsUnion _ b .hash (inj₂ y) = hash ⦃ b ⦄ y

      HSP2ScriptStructure : PlutusStructure
      HSP2ScriptStructure = record
        { Implementation
        ; validPlutusScript = λ _ _ _ _ → ⊤
        }

open import Ledger.PParams it it it hiding (Acnt; DrepThresholds; PoolThresholds)

HsGovParams : GovParams
HsGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT      → PParamsUpdate
      .updateGroups → modifiedUpdateGroups
      .applyUpdate  → applyPParamsUpdate
      .ppWF? {u}    → ppWF u
  ; ppHashingScheme = it
  }
  where
    open PParamsUpdate
    -- FIXME Replace `trustMe` with an actual proof
    ppWF : (u : PParamsUpdate) →
      ((pp : PParams) →
      paramsWellFormed pp →
      paramsWellFormed (applyPParamsUpdate pp u))
      ⁇
    ppWF u with paramsUpdateWellFormed? u
    ... | yes _ = ⁇ (yes trustMe)
      where
        postulate
          trustMe :
            ((pp : PParams) →
            paramsWellFormed pp →
            paramsWellFormed (applyPParamsUpdate pp u))
    ... | no _  = ⁇ (no trustMe)
      where
        postulate
          trustMe :
            ¬((pp : PParams) →
            paramsWellFormed pp →
            paramsWellFormed (applyPParamsUpdate pp u))

instance
  HSTransactionStructure : TransactionStructure
  HSTransactionStructure = record
    { Implementation
    ; epochStructure  = HSEpochStructure
    ; globalConstants = HSGlobalConstants
    ; adHashingScheme = it
    ; crypto          = HSCrypto
    ; govParams       = HsGovParams
    ; txidBytes       = id
    ; scriptStructure = HSScriptStructure
    }

open TransactionStructure HSTransactionStructure public
open import Ledger.Certs govStructure public

open import Ledger.Conway.Conformance.Abstract it

instance
  HSAbstractFunctions : AbstractFunctions
  HSAbstractFunctions = record
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
    ; runPLCScript = λ _ _ _ _ → false
    ; scriptSize = λ _ → 0
    }

open import Ledger.Address Network KeyHash ScriptHash using () public
