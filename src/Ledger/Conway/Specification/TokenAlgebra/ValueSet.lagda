\subsection{Value Set}
\label{sec:tokenalgebra-valueset}

\begin{code}[hide]
{-# OPTIONS --safe --no-import-sorts #-}

open import Prelude using (Type)

module Ledger.Conway.Specification.TokenAlgebra.ValueSet (PolicyId AssetName : Type) where

open import Ledger.Prelude                         hiding (lookup ; update ; isMagma ; isEquivalence) renaming (TotalMap to _⇒_)
open _⇒_
open import Ledger.Conway.Specification.TokenAlgebra.Base PolicyId using (TokenAlgebra)

open import Algebra                                using (Op₂ ; IsSemigroup ; IsMonoid ; IsMagma ; IsCommutativeMonoid)
open import Algebra.Morphism                       using (IsMonoidHomomorphism ; IsMagmaHomomorphism)
open import Data.Nat.Properties                    using (+-comm ; +-assoc ; +-identityʳ ; +-0-commutativeMonoid)
open import Relation.Binary                        using (IsEquivalence)
open import Relation.Binary.Morphism               using (IsRelHomomorphism)
open import Relation.Binary.PropositionalEquality  using (module ≡-Reasoning)

import Relation.Binary.PropositionalEquality as ≡
import Relation.Binary.Core  as stdlib
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

Finally, we define a record type with a single inhabitant with which we may wish to
represent the type of Ada (rather than viewing Ada as just another asset).

\begin{code}
record AdaIdType : Type where
  instance constructor AdaId
\end{code}


\subsection{Definition of the value monoid}

An inhabitant of `Value` is a map denoting a finite collection of quantities of assets.

\begin{code}
open Algebra.CommutativeMonoid renaming (_∙_ to _⋆_) hiding (refl ; sym ; trans)

AssetId  = PolicyId × AssetName
Quantity = ℕ
\end{code}
\begin{code}[hide]
module _
\end{code}
\begin{code}

  {X : ℙ AssetId}
  {⋁A : isMaximal X}
  ⦃ DecEq-PolicyId  : DecEq PolicyId ⦄
  ⦃ DecEq-AssetName : DecEq AssetName ⦄
  ⦃ DecEq-Tot : DecEq (AssetId ⇒ ℕ) ⦄
  (Dec-lookup≤ : ∀ {u v : AssetId ⇒ ℕ}
    → (∀ {a p q} → lookup u (a , p) ≤ lookup v (a , q)) ⁇)
\end{code}
\begin{code}[hide]
  where

  open ≡-Reasoning
  open FunTot X ⋁A
\end{code}
\begin{code}

  _⊕_ : Op₂ (AssetId ⇒ Quantity)
  u ⊕ v = Fun⇒TotalMap λ aa → (lookup u) aa + (lookup v) aa

  ⊕-lemma :  (u v : AssetId ⇒ Quantity){aa : AssetId}
             → lookup (u ⊕ v) aa ≡ lookup u aa + lookup v aa
  ⊕-lemma _ _ = lookup∘Fun⇒TotalMap-id

  zeroFun : AssetId → Quantity
  zeroFun = λ _ → 0

  ι : AssetId ⇒ Quantity
  ι = Fun⇒TotalMap zeroFun

  lookupι≡0 :  ∀{a} → lookup ι a ≡ 0
  lookupι≡0 = ∈-rel⇒lookup-≡ ι (∈-map′ ⋁A)

  _≋_ : stdlib.Rel (AssetId ⇒ Quantity) 0ℓ
  u ≋ v = ∀{aa} → (lookup u) aa ≡ (lookup v) aa

  ≋-isEquivalence : IsEquivalence {0ℓ} _≋_
  ≋-isEquivalence = record { refl = ≡.refl ; sym = λ x → ≡.sym x ; trans = λ x y → ≡.trans x y }

  ⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
  ⊕-cong {x}{y}{u}{v} x≋y u≋v {a} = begin
    lookup (x ⊕ u) a         ≡⟨ ⊕-lemma x u ⟩
    lookup x a + lookup u a  ≡⟨ cong₂ _+_ x≋y u≋v ⟩
    lookup y a + lookup v a  ≡⟨ ≡.sym (⊕-lemma y v) ⟩
    lookup (y ⊕ v) a         ∎

  ⊕-comm : Algebra.Commutative _≋_ _⊕_
  ⊕-comm u v {aa} = begin
    lookup (u ⊕ v) aa          ≡⟨ ⊕-lemma u v ⟩
    lookup u aa + lookup v aa  ≡⟨ +-comm (lookup u aa) (lookup v aa) ⟩
    lookup v aa + lookup u aa  ≡⟨ ≡.sym (⊕-lemma v u) ⟩
    lookup (v ⊕ u) aa          ∎

  ⊕-assoc : Algebra.Associative _≋_ _⊕_
  ⊕-assoc x y z {a} = begin
    lookup ((x ⊕ y) ⊕ z) a                  ≡⟨ ⊕-lemma (x ⊕ y) z ⟩
    lookup (x ⊕ y) a + lookup z a           ≡⟨ cong (_+ lookup z a) (⊕-lemma x y) ⟩
    lookup x a + lookup y a + lookup z a    ≡⟨ +-assoc (lookup x a) (lookup y a) (lookup z a) ⟩
    lookup x a + (lookup y a + lookup z a)  ≡⟨ cong (lookup x a +_) (≡.sym (⊕-lemma y z)) ⟩
    lookup x a + lookup (y ⊕ z) a           ≡⟨ ≡.sym (⊕-lemma x (y ⊕ z)) ⟩
    lookup (x ⊕ (y ⊕ z)) a                  ∎

  ι-identity : Algebra.Identity _≋_ ι _⊕_
  ι-identity .proj₁ tm {aa} = begin
    lookup (ι ⊕ tm) aa          ≡⟨ ⊕-lemma ι tm ⟩
    lookup ι aa + lookup tm aa  ≡⟨ cong (_+ lookup tm aa) lookupι≡0 ⟩
    lookup tm aa                ∎
  ι-identity .proj₂ tm {aa} = begin
    lookup (tm ⊕ ι) aa          ≡⟨ ⊕-lemma tm ι ⟩
    lookup tm aa + lookup ι aa  ≡⟨ cong (lookup tm aa +_) lookupι≡0 ⟩
    lookup tm aa + 0            ≡⟨ +-identityʳ (lookup tm aa) ⟩
    lookup tm aa                ∎

  open IsSemigroup
  open IsMagma
  isSemigrp : IsSemigroup _≋_ _⊕_
  isSemigrp .isMagma .isEquivalence        = ≋-isEquivalence
  isSemigrp .isMagma .∙-cong {u}{v}{x}{y}  = ⊕-cong {u}{v}{x}{y}
  isSemigrp .assoc                         = ⊕-assoc

  open IsMonoid
  ≋-⊕-ι-isMonoid : IsMonoid _≋_ _⊕_ ι
  ≋-⊕-ι-isMonoid .isSemigroup  = isSemigrp
  ≋-⊕-ι-isMonoid .identity     = ι-identity
\end{code}

We are now in a position to define the commutative monoid.

\begin{code}
  open IsCommutativeMonoid

  Vcm : Algebra.CommutativeMonoid 0ℓ 0ℓ
  Vcm .Carrier                        = AssetId ⇒ Quantity
  Vcm ._≈_                            = _≋_
  Vcm ._⋆_                            = _⊕_
  Vcm .ε                              = ι
  Vcm .isCommutativeMonoid .isMonoid  = ≋-⊕-ι-isMonoid
  Vcm .isCommutativeMonoid .comm      = ⊕-comm

  instance _ = Conversion.fromBundle Vcm

  Value-TokenAlgebra :
    (specialPolicy : PolicyId)
    (specialAsset : AssetName)
    (size : AssetId ⇒ Quantity → ℕ)
    --------------------------------------
    → TokenAlgebra
  Value-TokenAlgebra specialPolicy specialAsset size = record
    { coin                      = totalMap↠coin
    ; inject                    = coin↪totalMap
    ; policies                  = policies
    ; size                      = size
    ; _≤ᵗ_                      = leq
    ; coin∘inject≗id            = compose-to-id
    ; coinIsMonoidHomomorphism  = CoinMonHom
    ; Dec-≤ᵗ = λ {x}{y} → Dec-lookup≤ {x}{y}
    }
    where

    specId : AssetId
    specId = (specialPolicy , specialAsset)

    open Update

    totalMap↠coin : AssetId ⇒ Quantity → Coin
    totalMap↠coin tm = lookup tm specId

    coin↪totalMap : Coin → AssetId ⇒ Quantity
    coin↪totalMap c = update specId c ι

    policies : AssetId ⇒ Quantity → ℙ PolicyId
    policies tm = mapˢ proj₁ $ dom tm

    leq : AssetId ⇒ Quantity → AssetId ⇒ Quantity → Type
    leq u v = ∀ {a}{p}{q} → lookup u (a , p) ≤ lookup v (a , q)

    compose-to-id : totalMap↠coin ∘ coin↪totalMap ≗ id
    compose-to-id _ = lookup-update-id ι
      where open LookupUpdate {X = X} {specId} {a∈X = ⋁A}

    open Algebra.CommutativeMonoid Vcm                    using () renaming (rawMonoid to Vcm-mon)
    open Algebra.CommutativeMonoid +-0-commutativeMonoid  using () renaming (rawMonoid to ℕ-mon)
    open IsMonoidHomomorphism                             using (isMagmaHomomorphism ; ε-homo)
    open IsMagmaHomomorphism                              using (isRelHomomorphism ; homo)
    open IsRelHomomorphism                                using () renaming (cong to ⟦⟧-cong)

    CoinMonHom : IsMonoidHomomorphism Vcm-mon ℕ-mon totalMap↠coin
    CoinMonHom .isMagmaHomomorphism .isRelHomomorphism .⟦⟧-cong  = λ x → x
    CoinMonHom .isMagmaHomomorphism .homo                        = λ x y → ⊕-lemma x y
    CoinMonHom .ε-homo                                           = lookupι≡0
\end{code}
