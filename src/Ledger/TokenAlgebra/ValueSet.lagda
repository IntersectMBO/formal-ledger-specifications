\subsection{Value Set}

\begin{code}[hide]
{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive using () renaming (Set to Type)
open import Axiom.Set using ( Theory )


module Ledger.TokenAlgebra.ValueSet (PolicyId AssetName : Type) where

open import Ledger.Prelude using (_×_ ; ℙ_ ; module Equivalence ; _≡_ ; _,_ ; 0ℓ ; proj₁ ; proj₂ ; Coin ; _∘_ ; _≗_ ; id ; th) -- hiding (lookup )
                            renaming (TotalMap to _⇒_ ) using (module FunTot ; module Update ; module LookupUpdate)

open import Ledger.TokenAlgebra PolicyId  using (TokenAlgebra )
open import Interface.DecEq               using (DecEq)

open import Algebra                       using (CommutativeMonoid ; Op₂ ; IsSemigroup ; IsMonoid)
open import Algebra.Morphism              using (module MonoidMorphisms ; IsMagmaHomomorphism)
open import Data.Nat                      using (ℕ ; _≤_ ; _+_)
open import Data.Nat.Properties           using (+-0-commutativeMonoid ; +-comm ; +-assoc ; +-identityʳ)
open import Function.Related.TypeIsomorphisms using (Σ-≡,≡→≡)
open import Relation.Binary               using (IsEquivalence)
                                          renaming (Decidable to Dec₂)

open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning ; cong)

import Relation.Binary.PropositionalEquality as ≡
import Relation.Binary.Core  as stdlib

open Theory th                          using (∈-irrelevant ; _∈_ ; ∈-map ; ∈-map′ ; ≡∈ ; singleton; isMaximal )
                                        renaming (map to mapˢ ) -- ; Set to ℙ )


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
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (refl ; sym ; trans)

AssetId : Type
AssetId = PolicyId × AssetName

module _ {X : ℙ AssetId} {⋁A : isMaximal X} where

  open _⇒_
  open ≡-Reasoning
  open Equivalence
  open FunTot {AssetId}{X}{⋁A}

  Quantity : Type
  Quantity = ℕ


  _⊕_ : Op₂ (AssetId ⇒ Quantity)
  u ⊕ v = Fun⇒TotalMap f+g
    where
    f g f+g : AssetId → Quantity
    f = lookup u
    g = lookup v
    f+g aa = f aa + g aa

  ⊕-lemma : (u v : AssetId ⇒ Quantity) → (aa : AssetId)
   →       lookup (u ⊕ v) aa ≡ lookup u aa + lookup v aa
  ⊕-lemma u v a = begin
    lookup (u ⊕ v) a ≡⟨ ≡.refl ⟩
    lookup (Fun⇒TotalMap (λ x → lookup u x + lookup v x)) a ≡⟨ lookup∘Fun⇒TotalMap-id ⟩
    lookup u a + lookup v a ∎


  zeroFun : AssetId → Quantity
  zeroFun = λ _ → 0

  zeroMap : AssetId ⇒ Quantity
  zeroMap = Fun⇒TotalMap zeroFun

  ι : AssetId ⇒ Quantity
  ι = Fun⇒TotalMap zeroFun

  ι-lem0 :  ∀{a} → lookup ι a ≡ 0
  ι-lem0 {a} = ∈-rel→lookup-≡ ι (∈-map′ ⋁A)

  ι-lem1 : ∀{a} → (a , lookup ι a) ∈ rel ι
  ι-lem1 {a} = lookup∈rel ι

  ι-lem2 : ∀{a : AssetId} → (a , 0) ∈ rel ι
  ι-lem2 {a} = ≡∈ ι-lem1 (Σ-≡,≡→≡ (≡.refl , ι-lem0))

  _≋_ : stdlib.Rel (AssetId ⇒ Quantity) 0ℓ
  tm ≋ tm' = ∀{aa} → (lookup tm) aa ≡ (lookup tm') aa


  open IsEquivalence
  ≋-isEquivalence : IsEquivalence {0ℓ} _≋_
  ≋-isEquivalence .refl = ≡.refl
  IsEquivalence.sym ≋-isEquivalence x≋y = ≡.sym x≋y
  IsEquivalence.trans ≋-isEquivalence x y = ≡.trans x y


  ⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
  ⊕-cong {x} {y} {u} {v} x≋y u≋v {a} = Goal
    where
    Goal : lookup (x ⊕ u) a ≡ lookup (y ⊕ v) a
    Goal = begin
      lookup (x ⊕ u) a         ≡⟨ ⊕-lemma x u a ⟩
      lookup x a + lookup u a  ≡⟨ cong (λ w → w + lookup u a) x≋y ⟩
      lookup y a + lookup u a  ≡⟨ cong (λ w → lookup y a + w) u≋v ⟩
      lookup y a + lookup v a  ≡⟨ ≡.sym (⊕-lemma y v a) ⟩
      lookup (y ⊕ v) a         ∎


  ⊕-comm : Algebra.Commutative _≋_ _⊕_
  ⊕-comm u v {aa} = Goal
    where
    Goal : lookup (u ⊕ v) aa ≡ lookup (v ⊕ u) aa
    Goal = begin
      lookup (u ⊕ v) aa          ≡⟨ ⊕-lemma u v aa ⟩
      lookup u aa + lookup v aa  ≡⟨ +-comm (lookup u aa) (lookup v aa) ⟩
      lookup v aa + lookup u aa  ≡⟨ ≡.sym (⊕-lemma v u aa) ⟩
      lookup (v ⊕ u) aa          ∎

  ⊕-assoc : Algebra.Associative _≋_ _⊕_
  ⊕-assoc x y z {a} = Goal
    where
    Goal : lookup ((x ⊕ y) ⊕ z) a ≡ lookup (x ⊕ (y ⊕ z)) a
    Goal = begin
      lookup ((x ⊕ y) ⊕ z) a                  ≡⟨ ⊕-lemma (x ⊕ y) z a ⟩
      lookup (x ⊕ y) a + lookup z a           ≡⟨ cong (λ w → w + lookup z a) (⊕-lemma x y a) ⟩
      lookup x a + lookup y a + lookup z a    ≡⟨ +-assoc (lookup x a) (lookup y a) (lookup z a) ⟩
      lookup x a + (lookup y a + lookup z a)  ≡⟨ cong (λ w → lookup x a + w) (≡.sym (⊕-lemma y z a)) ⟩
      lookup x a + (lookup (y ⊕ z) a)         ≡⟨ ≡.sym (⊕-lemma x (y ⊕ z) a) ⟩
      lookup (x ⊕ (y ⊕ z)) a                  ∎


  ι-zero : ∀{a : AssetId} → lookup ι a ≡ 0
  ι-zero {aa} = (left-unique-rel ι) ι-lem1  (ι-lem2 {aa})

  ι-identity : Algebra.Identity _≋_ ι _⊕_
  proj₁ ι-identity tm {aa} = lid
    where
    lid : lookup (ι ⊕ tm) aa ≡ lookup tm aa
    lid = begin
      lookup (ι ⊕ tm) aa          ≡⟨ ⊕-lemma ι tm aa ⟩
      lookup ι aa + lookup tm aa  ≡⟨ cong (λ x → x + lookup tm aa) ι-zero ⟩
      lookup tm aa                ∎

  proj₂ ι-identity tm {aa} = begin
    lookup (tm ⊕ ι) aa          ≡⟨ ⊕-lemma tm ι aa ⟩
    lookup tm aa + lookup ι aa  ≡⟨ cong (λ x → lookup tm aa + x) ι-zero ⟩
    lookup tm aa + 0            ≡⟨ +-identityʳ (lookup tm aa) ⟩
    lookup tm aa                ∎

  isSemigrp : IsSemigroup _≋_ _⊕_
  isSemigrp = record
    { isMagma = record
        { isEquivalence = ≋-isEquivalence
        ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z }
    ; assoc = ⊕-assoc }

  ≋-⊕-ι-isMonoid : IsMonoid _≋_ _⊕_ ι
  ≋-⊕-ι-isMonoid = record { isSemigroup = isSemigrp ; identity = ι-identity }



  Value-TokenAlgebra  :  ( specialPolicy  : PolicyId                            )
                         ( specialAsset   : AssetName                           )
                         ( specId∈X         : (specialPolicy , specialAsset) ∈ X  )
                         ( policies       : (AssetId ⇒ Quantity) → ℙ PolicyId           )
                         ( size           : AssetId ⇒ Quantity → ℕ                    )

       { decTot  : DecEq (AssetId ⇒ Quantity) }
       ⦃ dec     : DecEq (PolicyId × AssetName) ⦄
       { _∈?_    : ⦃ DecEq (PolicyId × AssetName) ⦄ → Dec₂ (_∈_ {A = PolicyId × AssetName}) }
       {∈-uip    : ∈-irrelevant X}
       ---------------------------------------------------------------------------------------
    →  TokenAlgebra

  Value-TokenAlgebra specialPolicy specialAsset specId∈X policies size {decTot} ⦃ dec ⦄ { _∈?_ }{∈-uip} =
    record
      { Value-CommutativeMonoid = Vcm
      ; coin = λ tm → lookup tm (specialPolicy , specialAsset)
      ; inject = inj
      ; policies = policies
      ; size = size
      ; _≤ᵗ_ = λ u v → ∀ {a}{a∈X} → lookup u (a , a∈X) ≤ lookup v (a , a∈X)
      ; AssetName = AssetName
      ; specialAsset = specialAsset
      ; property = compose-to-id
      ; coinIsMonoidHomomorphism = CoinMonHom
      ; DecEq-Value = decTot
      }
    where


    specId : AssetId
    specId = (specialPolicy , specialAsset)

    open Update ⦃ dec ⦄

    inj : Coin → AssetId ⇒ Quantity
    inj c = update specId c zeroMap

    compose-to-id : (λ m → lookup m specId) ∘ inj ≗ id
    compose-to-id q = lookup-update-id zeroMap
      where open LookupUpdate {X = X}{specId}{⋁A}


    Vcm : CommutativeMonoid 0ℓ 0ℓ
    Vcm =
      record
        { Carrier = AssetId ⇒ Quantity
        ; _≈_ = _≋_
        ; _∙_ = _⊕_
        ; ε = ι
        ; isCommutativeMonoid = record { isMonoid = ≋-⊕-ι-isMonoid ; comm = ⊕-comm }
        }


    open CommutativeMonoid Vcm renaming ( rawMonoid to Vcm-mon ) using ()
    open CommutativeMonoid +-0-commutativeMonoid renaming ( rawMonoid to ℕ-mon) using ( _≈_ )
    open Algebra using (module RawMonoid)
    -- open RawMonoid Vcm-mon renaming ( _∙_ to _⊞_ ; ε to ι )
    open RawMonoid ℕ-mon renaming ( _≈_ to _≈ℕ_ ; _∙_ to _◦_ )

    open IsMagmaHomomorphism using ( isRelHomomorphism ; homo )
    open MonoidMorphisms Vcm-mon ℕ-mon using ( IsMonoidHomomorphism )
    open IsMonoidHomomorphism using ( isMagmaHomomorphism ; ε-homo )

    CoinMonHom : IsMonoidHomomorphism (λ u → lookup u specId)
    isMagmaHomomorphism CoinMonHom .isRelHomomorphism  = record { cong = λ x → x }
    isMagmaHomomorphism CoinMonHom .homo x y           = ⊕-lemma x y specId

    CoinMonHom .ε-homo = ι-lem0

    ------------------------------------------------------------------------------------------------------
    -- odds and ends -------------------------------------------------------------------------------------
    coinQzeroAsSet : ℙ (AssetId × Quantity)
    coinQzeroAsSet = singleton (specId , 0)

    P : AssetId × Quantity → Type
    P ( _ , q) = q ≡ 0

\end{code}
