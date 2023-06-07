n\subsection{Value Relation}
\label{sec:value-relation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive  using () renaming (Set to Type)

module Ledger.TokenAlgebra.ValueRelation (PolicyId : Type) where

open import Algebra                      using (CommutativeMonoid ; Commutative ; Op₂)
open import Algebra.Morphism             using (IsMonoidMorphism ; IsSemigroupMorphism)
open import Algebra.Morphism             using (IsCommutativeMonoidMorphism-syntax)
open import Data.Nat.Properties          hiding (_≟_)
open import Data.Nat using (_≤_)

open import Data.Product.Base            using (swap)
open import Data.Sum.Base                using ([_,_]′)
open import Ledger.Prelude               hiding (Rel ; _>_ )
open import Ledger.TokenAlgebra PolicyId using (TokenAlgebraPoly)
open import Prelude
open import Relation.Binary              using (REL ; Rel ; _⇒_ ; IsEquivalence ; Decidable) renaming (_⇔_ to _⇐⇒_ )
open import Relation.Binary.Definitions  using (Decidable ; DecidableEquality)
open import Relation.Binary.PropositionalEquality using (≡-≟-identity)
open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning )

private
  variable
    A B : Type
    C : REL A B 0ℓ → Type 0ℓ

\end{code}

\subsubsection{Derived types}

(See Fig 3 of the
\href{https://github.com/input-output-hk/cardano-ledger/releases/latest/download/mary-ledger.pdf}%
{Mary ledger specification}.)

\begin{itemize}
\item \AgdaBound{AssetName} is a byte string used to distinguish different assets with the same \AgdaBound{PolicyId}.
\item \AgdaBound{AssetId} is a product type consisting of a \AgdaBound{PolicyId} and an \AgdaBound{AssetName}.
\item \AgdaBound{AdaId} is the Id for the asset Ada.
\item \AgdaBound{Quantity} is the type of amounts of assets.
\end{itemize}

In the formal ledger specification \AgdaBound{AssetId} is sometimes viewed as a direct sum type,
the inhabitants of which belong to either \AgdaBound{AdaIdType} or the product
\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}; if we were adhering to that point of view,
then we would have defined
\AgdaBound{AssetId}
  = \AgdaBound{AdaIdType}~\AgdaBound{⊎}~(\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}).

\begin{code}
Quantity : Type
Quantity = ℕ
\end{code}

Finally, we define a record type with a single inhabitant with which we may wish to
represent the type of Ada (rather than viewing Ada as just another asset).

\begin{code}
record AdaIdType : Type where
  instance constructor AdaId
\end{code}



\begin{code}[hide]
⇐⇒-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _⇐⇒_
IsEquivalence.refl ⇐⇒-isEquivalence = id , id
IsEquivalence.sym ⇐⇒-isEquivalence = swap
proj₁ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) ixy = (proj₁ jk) ((proj₁ ij) ixy)
proj₂ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) kxy = (proj₂ ij) ((proj₂ jk) kxy)

_≋_ : Rel (A → B) 0ℓ
u ≋ v = ∀{a} → u a ≡ v a

≋-isEquivalence : IsEquivalence {A = A → B} _≋_
IsEquivalence.refl ≋-isEquivalence = refl
IsEquivalence.sym ≋-isEquivalence x = sym x
IsEquivalence.trans ≋-isEquivalence x y = trans x y

_≈_ : Rel (REL A B 0ℓ) 0ℓ
u ≈ v = u ⇐⇒ v

≈-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _≈_
IsEquivalence.refl ≈-isEquivalence = IsEquivalence.refl ⇐⇒-isEquivalence
IsEquivalence.sym ≈-isEquivalence xy = IsEquivalence.sym ⇐⇒-isEquivalence xy
IsEquivalence.trans ≈-isEquivalence ij jk = IsEquivalence.trans ⇐⇒-isEquivalence ij jk
\end{code}

\subsection{Definition of the value monoid}

An inhabitant of `Value` is a map denoting a finite collection of quantities of assets.

\begin{code}
open TokenAlgebraPoly
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (refl ; sym ; trans)
open Algebra


Value-TokenAlgebra :  (specialPolicy  : PolicyId)
                      (assetNameType  : Type)
                      (specialAsset   : assetNameType)
                      (sz             : ((PolicyId × assetNameType) → Quantity) → ℕ)
                      (dec-eq         : DecEq assetNameType)
                      ---------------------------------------------------
 →                    TokenAlgebraPoly

Value-TokenAlgebra specialPolicy assetNameType specialAsset₁ sz dec-eq =
  record
    { Value-CommutativeMonoid = Vcm
    ; coin = λ u → u (specialPolicy , specialAsset₁)
    ; inject = injectSpecial
    ; size = sz
    ; _≤ᵗ_ = λ u v → ∀ x → u x ≤ v x
    ; AssetNameType = assetNameType
    ; specialAsset = specialAsset₁
    ; composeToIdentity = compose-to-id
    ; coinIsMonoidMorphism = mcm
    }

  where

  instance
    DecEq-AssetName : DecEq assetNameType
    DecEq-AssetName = dec-eq


  AssetId : Type
  AssetId = PolicyId × assetNameType

  ι : AssetId → Quantity
  ι = λ _ → 0

  open ≡-Reasoning

  _⊕_ : Op₂ (AssetId → Quantity)
  Ru ⊕ Rv = λ x → (Ru x) + (Rv x)

  ι-identity : Algebra.Identity _≋_ ι _⊕_
  proj₁ ι-identity = λ x → refl
  proj₂ ι-identity x {a} =  begin
    x a + ι a  ≡⟨ cong (λ z → x a + z) refl ⟩
    x a + 0    ≡⟨ +-comm (x a) 0 ⟩
    x a        ∎

  ⊕-comm : Algebra.Commutative _≋_ _⊕_
  ⊕-comm x y {a} = +-comm (x a) (y a)

  ⊕-assoc : Algebra.Associative _≋_ _⊕_
  ⊕-assoc x y z {a} = +-assoc (x a) (y a) (z a)

  ⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
  ⊕-cong xy uv = cong₂ _+_ xy uv

  injectHelper : ∀ {q}{asset}{specialAsset₁} → Dec (asset ≡ specialAsset₁) → Quantity
  injectHelper (false because _) = 0
  injectHelper {q} (true because _) = q


  injectSpecial : Quantity → AssetId → Quantity
  injectSpecial q (pid , asset) = injectHelper {q} (asset ≟ specialAsset₁)


  compose-to-id : ∀ q → injectSpecial q (specialPolicy , specialAsset₁) ≡ q
  compose-to-id q = begin
    injectSpecial q (specialPolicy , specialAsset₁)            ≡⟨ refl ⟩
    injectHelper (specialAsset₁ ≟ specialAsset₁)               ≡⟨ cong (λ x → injectHelper x) (≡-≟-identity _≟_ refl) ⟩
    injectHelper {q}{specialAsset₁}{specialAsset₁} (yes refl)  ≡⟨ refl ⟩
    q                                                          ∎


  -- Vcm is a `CommutativeMonoid` whose elements are maps, where each map denotes a finite
  -- collections of quantities of assets.
  Vcm : CommutativeMonoid 0ℓ 0ℓ
  Vcm =
    record
      { Carrier = AssetId → Quantity
      ; _≈_ = _≋_
      ; _∙_ = _⊕_
      ; ε = ι
      ; isCommutativeMonoid = record { isMonoid = Vm ; comm = ⊕-comm } }
      where
      isSemigrp : IsSemigroup _≋_ _⊕_
      isSemigrp = record
          { isMagma = record
              { isEquivalence = ≋-isEquivalence
              ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z }
          ; assoc = ⊕-assoc }

      Vm : IsMonoid _≋_ _⊕_ ι
      Vm = record { isSemigroup = isSemigrp ; identity = ι-identity }

  open Algebra.Morphism

  mcm : IsCommutativeMonoidMorphism Vcm +-0-commutativeMonoid (λ u → u (specialPolicy , specialAsset₁))
  IsSemigroupMorphism.⟦⟧-cong (IsMonoidMorphism.sm-homo (IsCommutativeMonoidMorphism.mn-homo mcm)) = λ z → z
  IsSemigroupMorphism.∙-homo (IsMonoidMorphism.sm-homo (IsCommutativeMonoidMorphism.mn-homo mcm)) = λ x y → refl
  IsMonoidMorphism.ε-homo (IsCommutativeMonoidMorphism.mn-homo mcm) = refl


\end{code}

