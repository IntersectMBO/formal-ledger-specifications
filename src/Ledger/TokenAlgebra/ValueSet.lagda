\subsection{Value Set}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive renaming (Set to Type)

module Ledger.TokenAlgebra.ValueSet

       -- TODO: determine how these three parameters should be defined in modules that depend on this one.
       {PolicyID : Type}    -- identifies monetary policies
       {ByteString : Type}  -- could postulate `ByteString` here, but then we'd have to drop `--safe` pragma
       {AdaName : ByteString}
 where
\end{code}

-- PLANNED --

open import Ledger.Prelude           hiding (Coin)

open import Ledger.TokenAlgebra {PolicyID}{ByteString}{AdaName}
                                     using ( AssetID ; Quantity ; TokenAlgebra )

open import Algebra                  using (CommutativeMonoid ; Commutative)
open import Algebra.Core             using (Op₂)
open import Data.Nat                 using (ℕ ; _≤_ ; _>_)
                                     renaming (zero to 0ℕ ; _+_ to _+ℕ_)


_⊗_ :  (Ru Rv : Rel AssetID Quantity)
 →     ∃[ Y ] ( ∀{a b} → ((∃[ q₁ ] (∃[ q₂ ] (a , q₁) ∈ Ru × (a , q₂) ∈ Rv × b ≡ q₁ +ℕ q₂)) ⇔ (a , b) ∈ Y ))
Ru ⊗ Rv = {!!}


_⊞_ : Op₂ (AssetID ↛ Quantity)
proj₁ ((Ru , _) ⊞ (Rv , _)) = proj₁ (Ru ⊗ Rv)
proj₂ ((Ru , luu) ⊞ (Rv , luv)) {a} {b} {b'} ab ab' = {!!}
 where
 h1 : ∃[ q₁ ] (∃[ q₂ ] (a , q₁) ∈ Ru × (a , q₂) ∈ Rv × (b ≡ q₁ + q₂))
 h1 = Equivalence.from (proj₂ (Ru ⊗ Rv)) ab
 h2 : ∃[ q₃ ] (∃[ q₄ ] (a , q₃) ∈ Ru × (a , q₄) ∈ Rv × (b' ≡ q₃ + q₄))
 h2 = Equivalence.from (proj₂ (Ru ⊗ Rv)) ab'

 q₁ q₂ q₃ q₄ : Quantity
 q₁ = proj₁ h1
 q₂ = proj₁ (proj₂ h1)
 q₃ = proj₁ h2
 q₄ = proj₁ (proj₂ h2)

 h11 : (a , q₁) ∈ Ru
 h11 = proj₁ (proj₂ (proj₂ h1))
 h12 : (a , q₂) ∈ Rv
 h12 = proj₁ (proj₂ (proj₂ (proj₂ h1)))
 h21 : (a , q₃) ∈ Ru
 h21 = proj₁ (proj₂ (proj₂ h2))
 h22 : (a , q₄) ∈ Rv
 h22 = proj₁ (proj₂ (proj₂ (proj₂ h2)))

 q₁q₂≡q₃q₄ : q₁ + q₂ ≡ q₃ + q₄
 q₁q₂≡q₃q₄ = trans (cong (λ x → x + q₂) (luu h11 h21)) (cong (λ x → q₃ + x) (luv h12 h22))

 b≡q₁q₂ : b ≡ q₁ + q₂
 b≡q₁q₂ = proj₂ (proj₂ (proj₂ (proj₂ h1)))

 b'≡q₃q₄ : b' ≡ q₃ + q₄
 b'≡q₃q₄ = proj₂ (proj₂ (proj₂ (proj₂ h2)))

 Goal : b ≡ b'
 Goal = trans b≡q₁q₂ (trans q₁q₂≡q₃q₄ (sym b'≡q₃q₄))


-- ι-map : Rel AssetID Quantity
-- ι-map = {!!} -- what we want: ∃[ Y ] (∀{a : AssetID}{q : Quantity} → ((a , q) ∈ Y → q ≡ 0))

-- ι : AssetID ↛ Quantity
-- proj₁ ι = ι-map
-- proj₂ ι = {!!}

