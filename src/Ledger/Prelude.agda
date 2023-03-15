{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public

open import Ledger.Prelude.Base public

open import Data.Maybe.Properties.Ext public
open import Interface.Functor public
open import Interface.Bifunctor public
open import Interface.DecEq.Ext public
open import Interface.HasAdd public
open import Interface.HasAdd.Instance public
open import Interface.HasSubtract public
open import Interface.HasSubtract.Instance public
open import Interface.HasOrder public
open import Interface.HasOrder.Instance public
open import Interface.Decidable.Instance public
open import Interface.ComputationalRelation public
open import Ledger.Interface.HasCoin public
open import MyDebugOptions public
open import Tactic.DeriveComp public

--------------------------------------------------------------------------------
-- Set theory

open import Axiom.Set
import Axiom.Set.List as L

abstract
  List-Model : Theory {0ℓ}
  List-Model = L.List-Model
  List-Modelᶠ : Theoryᶠ
  List-Modelᶠ = L.List-Modelᶠ
  List-Modelᵈ : Theoryᵈ
  List-Modelᵈ = L.List-Modelᵈ

open Theoryᵈ List-Modelᵈ public
  renaming (Set to ℙ_; filter to filterˢ; map to mapˢ)
  hiding (_∈_; _∉_)

open import Interface.IsSet th public

abstract
  open import Axiom.Set.Properties th using (card-≡ᵉ)

  to-sp : {A : Set} {P : A → Set} → Decidable¹ P → specProperty P
  to-sp = id

  finiteness : ∀ {A} (X : Theory.Set th A) → finite X
  finiteness = Theoryᶠ.finiteness List-Modelᶠ

  lengthˢ : ∀ {A X} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet X A ⦄ → X → ℕ
  lengthˢ X = Theoryᶠ.lengthˢ List-Modelᶠ (toSet X)

  lengthˢ-≡ᵉ : ∀ {A Z} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet Z A ⦄ (X Y : Z)
    → toSet X ≡ᵉ toSet Y
    → lengthˢ X ≡ lengthˢ Y
  lengthˢ-≡ᵉ X Y X≡Y = let X = toSet X; Y = toSet Y in
    card-≡ᵉ (X , Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ X)
            (Y , Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ Y) X≡Y

  lengthˢ-∅ : ∀ {A} ⦃ _ : DecEq A ⦄ → lengthˢ {A} ∅ ≡ 0
  lengthˢ-∅ = refl

  setToList : {A : Set} → ℙ A → List A
  setToList = id

  instance
    DecEq-ℙ : {A : Set} ⦃ _ : DecEq A ⦄ → DecEq (ℙ A)
    DecEq-ℙ = L.Decˡ.DecEq-Set

open import Axiom.Set.Rel th public
  hiding (_∣'_; _↾'_; dom; range)

open import Axiom.Set.Map th public
  renaming (Map to infixr 1 _⇀_)

open import Axiom.Set.TotalMap th public
open import Axiom.Set.TotalMapOn th

open L.Decˡ public
  hiding (_∈?_; DecEq-Set)

open import Axiom.Set.Sum th public
open import Axiom.Set.Map.Dec List-Modelᵈ public
open import Axiom.Set.Factor List-Model public

module _ {A : Set} ⦃ _ : DecEq A ⦄ where
  open Restriction {A} ∈-sp public
    renaming (_∣_ to _∣ʳ_; _∣_ᶜ to _∣ʳ_ᶜ)

  open Corestriction {A} ∈-sp public
    hiding (_↾_; _↾_ᶜ) public

  open Restrictionᵐ {A} ∈-sp public
  open Corestrictionᵐ {A} ∈-sp public
  open Unionᵐ {A} ∈-sp public
  open Intersection {A} ∈-sp public
  open Lookupᵐ {A} ∈-sp public
  open Lookupᵐᵈ {A} ∈-sp public

module _ {A B : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
  open Intersectionᵐ {A} {B} ∈-sp public

  open import Algebra using (CommutativeMonoid)

  module _ ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
    open IndexedSumUnionᵐ {A} {B} ∈-sp (_∈? _) public

module Properties where
  open import Axiom.Set.Properties th public
  module _ {A : Set} ⦃ _ : DecEq A ⦄ where
    open Intersectionᵖ {A} ∈-sp public

_ᶠᵐ : {A B : Set} → A ⇀ B → FinMap A B
(R , uniq) ᶠᵐ = (R , uniq , finiteness _)

_ᶠˢ : {A : Set} → ℙ A → FinSet A
X ᶠˢ = X , finiteness _

filterᵐ? : ∀ {A B} {P : A × B → Set} → (∀ x → Dec (P x)) → A ⇀ B → A ⇀ B
filterᵐ? P? = filterᵐ (to-sp P?)

filterᵐᵇ : ∀ {A B} → (A × B → Bool) → A ⇀ B → A ⇀ B
filterᵐᵇ P = filterᵐ? (λ x → P x ≟ true)

open import Data.Product.Ext
open import Interface.Hashable

setToHashRel : ∀ {A B : Set} → {{Hashable A B}} -> ℙ A -> ℙ (B × A)
setToHashRel x = mapˡ hash (mapˢ ×-dup x)

setToHashMap : ∀ {A B : Set} → {{Hashable A B}} -> ℙ A → B ⇀ A
setToHashMap x = setToHashRel x ᵐ
  where instance _ = record { isLeftUnique = mapˡ∘map⦅×-dup⦆-uniq {inj = hashInj} }
