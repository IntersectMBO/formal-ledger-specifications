open import Ledger.Conway.Foreign.ExternalFunctions

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

open import Ledger.Conway.Foreign.Util public

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0

record HSVKey : Type where
  constructor MkHSVKey
  field hvkVKey       : ℕ
        hvkStoredHash : ℕ

{-# FOREIGN GHC
  data HSVKey = MkHSVKey
    { hvkVKey :: Integer
    , hvkStoredHash :: Integer
    }
#-}
{-# COMPILE GHC HSVKey = data HSVKey (MkHSVKey) #-}

unquoteDecl DecEq-HSVKey = derive-DecEq ((quote HSVKey , DecEq-HSVKey) ∷ [])

instance
  Hashable-HSVKey : Hashable HSVKey ℕ
  Hashable-HSVKey = λ where .hash → HSVKey.hvkStoredHash

  isHashableSet-HSVKey : isHashableSet HSVKey
  isHashableSet-HSVKey = mkIsHashableSet ℕ

  Hashable-ℕ : Hashable ℕ ℕ
  Hashable-ℕ = λ where .hash → id

  isHashableSet-ℕ : isHashableSet ℕ
  isHashableSet-ℕ = mkIsHashableSet ℕ

unquoteDecl Show-HSVKey = derive-Show
  ((quote HSVKey , Show-HSVKey) ∷ [])

module Implementation where
  Network          = ℕ
  SlotsPerEpochᶜ   = 100
  StabilityWindowᶜ = 10
  Quorum           = 1
  NetworkId        = 0 -- Testnet

  SKey = ℕ
  VKey = HSVKey
  Sig  = ℕ
  Ser  = ℕ

  isKeyPair  = λ sk vk → sk ≡ HSVKey.hvkVKey vk
  sign       = _+_
  ScriptHash = ℕ

  Data         = ℕ
  Dataʰ        = mkHashableSet ℕ
  toData : ∀ {A : Type} → A → Data
  toData _ = 0

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
  AuxiliaryData   = ℕ
  DocHash         = ℕ
  tokenAlgebra    = coinTokenAlgebra
