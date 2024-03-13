{-# OPTIONS --safe #-}

module Data.Integer.Ext where

open import Data.Integer
open import Data.Integer.Properties using ([1+m]⊖[1+n]≡m⊖n)
open import Data.Nat as ℕ
open import Data.Nat.Properties using (≤-trans; ≤-reflexive)
open import Data.Product
open import Data.Sign
open import Relation.Binary.PropositionalEquality using (sym; cong)

ℤtoSignedℕ : ℤ → Sign × ℕ
ℤtoSignedℕ x = (sign x , ∣ x ∣)

posPart : ℤ → ℕ
posPart x with ℤtoSignedℕ x
... | (Sign.+ , x) = x
... | _            = 0

negPart : ℤ → ℕ
negPart x with ℤtoSignedℕ x
... | (Sign.- , x) = x
... | _            = 0

∸≤posPart⊖ : {m n : ℕ} → (m ∸ n) ℕ.≤ posPart (m ⊖ n)
∸≤posPart⊖ {ℕ.zero} {ℕ.zero} = z≤n
∸≤posPart⊖ {ℕ.zero} {suc n} = z≤n
∸≤posPart⊖ {suc m} {ℕ.zero} = s≤s (∸≤posPart⊖ {m}{0})
∸≤posPart⊖ {suc m} {suc n} = ≤-trans (∸≤posPart⊖{m}{n})
                                     (≤-reflexive (sym (cong posPart ([1+m]⊖[1+n]≡m⊖n m n))))
