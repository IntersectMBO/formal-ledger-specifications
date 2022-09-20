{-# OPTIONS --safe #-}

open import Interface.DecEq
open import Data.List
open import Data.Product hiding (map)
open import Utilities.ListProperties renaming (_∈_ to _∈l_)
open import Utilities.Logic hiding (DecEq)
open import Function
open import Data.Sum hiding (map)
open import Relation.Nullary
open import Data.List.Properties
open import Agda.Builtin.Unit
open import Agda.Builtin.Equality
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Function.Properties.Equivalence
open import Level
open import Relation.Binary.PropositionalEquality using (subst; sym; refl; _≡_; inspect; [_]; cong; trans) --maybe not nceccessary
open import Function.Related
open import Data.Product.Function.NonDependent.Propositional
open import Relation.Binary.Morphism
open import Relation.Binary hiding (_⇔_)
open import Data.FinMap
open import Data.FinMap.Core
open import Data.FinSet using (_∈_; _≡ᵉ_) renaming (∅ to ∅ᵉ)
open import Relation.Nullary.Negation
open import FiniteSubset
open import Data.FinMap.Properties.Equality using (∈-∅; ≡ᵐ-∈)
open import Data.FinSet.Properties.Membership using (∈-∅)
open import Data.FinSet.Properties.Equality

module Data.FinMap.Properties.Membership {K : Set}{V : Set}{{eq : DecEq K}}{{eq' : DecEq V}} where

private
  variable
    a b : K × V
    l : List (K × V)
    m m' m''  : FinMap K V {{eq}} {{eq'}}

∈⇒∈l : a ∈ᵐ m → a ∈l (listOfᵐ m)
∈⇒∈l = id

∈l⇒∈ : a ∈l (listOfᵐ m) → a ∈ᵐ m
∈l⇒∈ = id

∈fromList⇒∈l : a ∈ᵐ fromList' l → a ∈l l
∈fromList⇒∈l h = remDupCompleteᵐ (eq2in _) _ _ h

∈∪⇒∈⊎ : a ∈ᵐ m ∪ᵐ m' → a ∈ᵐ m ⊎ a ∈ᵐ m'
∈∪⇒∈⊎ h = ∈-split (remDupCompleteᵐ (eq2in _) _ _ h)

∪ᵐʳ : a ∈ᵐ m → a ∈ᵐ m' ∪ᵐ m
∪ᵐʳ {a} {fs-nojunk els {p}} {fs-nojunk els₁} xin
  = dup∈ʳ (eq2in _) a els els₁ xin
          (NoDupInd-corr2 (map proj₁ els)
          (∥-∥-prop3 _ p))

∪ᵐˡ : a ∈ᵐ m' × a ∉ᵖᵐ m → a ∈ᵐ m' ∪ᵐ m
∪ᵐˡ {a} {fs-nojunk els {p}} {fs-nojunk els₁} (xin , notin)
  = dup∈ˡ (eq2in _) a els₁ els xin notin (NoDupInd-corr2 (map proj₁ els) (∥-∥-prop3 _ p))

∈⊎⇒∈∪ : (a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m' → a ∈ᵐ m ∪ᵐ m'
∈⊎⇒∈∪ {a} {m} {m'} (inj₁ x) = ∪ᵐˡ {a} {m} {m'} x
∈⊎⇒∈∪ {a} {m} {m'} (inj₂ y) = ∪ᵐʳ {a} {m'} {m} y


∪ᵐʳ⁻' : a ∈ᵐ m → a ∈ᵖᵐ m' → ¬ a ∈ᵐ m' → ¬ a ∈ᵐ m ∪ᵐ m'
∪ᵐʳ⁻' {a} {fs-nojunk els'} {fs-nojunk els {prf}} h h₁ h₃ with getPair (proj₁ a) els h₁
... | ans with (_≟_ {{eq'}}) (getValue (proj₁ a) els h₁) (proj₂ a)
... | yes refl = ⊥-elim (h₃ ans)
... | no ¬p with dup∈ʳ (eq2in _) _ els els' ans
                       (NoDupInd-corr2 (map proj₁ els) (∥-∥-prop3 _ prf))
... | res = NoDupProjUnique (proj₁ a) _ (proj₂ a) _ res
                            (NoDupInd-corr2 _ (remDupCorrectᵐ (eq2in (_≟_ {{eq}})) (els' ++ els))) ¬p

∪ᵐʳ⁻ : a ∈ᵐ m ∪ᵐ m' → a ∈ᵖᵐ m' → a ∈ᵐ m → a ∈ᵐ m'
∪ᵐʳ⁻ {a} {m} {fs-nojunk els {prf}} h h' h'' with eq2inᵖ eq eq' a els
... | yes p = p
... | no ¬p = ⊥-elim (∪ᵐʳ⁻' {a} {m} {fs-nojunk els {prf}} h'' h' ¬p h)


∈∪⇒∈⊎' : a ∈ᵐ m ∪ᵐ m' → (a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m'
∈∪⇒∈⊎' {a} {m} {fs-nojunk els' {prf}} h with eq2inᵐ eq (proj₁ a) (map proj₁ els')
                                                | ∈∪⇒∈⊎ {a} {m} {(fs-nojunk els' {prf})} h
... | no ¬p | inj₁ x = inj₁ (x , ¬p)
... | yes p | inj₁ x = inj₂ (∪ᵐʳ⁻ {a} {m} {fs-nojunk els' {prf}} h p x)
... | no ¬p | inj₂ y = inj₂ y
... | yes p | inj₂ y = inj₂ y

∈⊎⇔∈∪ : ((a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m') ⇔ a ∈ᵐ m ∪ᵐ m'
∈⊎⇔∈∪ {m = m} {m'} = mk⇔ (∈⊎⇒∈∪ {m = m} {m' = m'}) (∈∪⇒∈⊎' {m = m} {m' = m'})

∈-⊎↔∪≡ : (∀ a → ((a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m') ⇔ a ∈ᵐ m'') → m ∪ᵐ m' ≡ᵐ m''
∈-⊎↔∪≡ {m} {m'} {m''} h a =
       begin
         a ∈ᵐ m ∪ᵐ m'       ≈˘⟨ ∈⊎⇔∈∪ {m = m} {m' = m'} ⟩
         ((a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m') ≈⟨ h a ⟩
         a ∈ᵐ m''          ∎
         where open SetoidReasoning (⇔-setoid 0ℓ)

∈→filter' : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V)) → a ∈l l → P a → a ∈l filter P? l
∈→filter' {x ∷ l} P? .x (here refl) h' rewrite filter-accept P? {xs = l} h' = here refl
∈→filter' {x ∷ l} P? a (there h) h' with P? x
... | no ¬p = ∈→filter' P? a h h'
... | yes p = there $ ∈→filter' P? a h h'

∈→filter : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V))
              → a ∈ᵐ m → P a
              → a ∈ᵐ filterᵐ P? m
∈→filter {fs-nojunk els {prf}} P? a h h' = ∈→filter' P? a h h'

filter→∈' : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V))
            → a ∈l filter P? l
            → a ∈l l × P a
filter→∈' {x ∷ l} P? a h with P? x
... | no ¬p = Data.Product.map₁ there (filter→∈' P? a h)
filter→∈' {x ∷ l} P? .x (here refl) | yes p = here refl , p
filter→∈' {x ∷ l} P? a (there h) | yes p = Data.Product.map₁ there (filter→∈' P? a h)

filter→∈ : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V)) → a ∈ᵐ filterᵐ P? m → a ∈ᵐ m × P a
filter→∈ {fs-nojunk els} P? a h = filter→∈' P? a h

∈filter : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V)) → (a ∈ᵐ m × P a) ⇔ a ∈ᵐ filterᵐ P? m
∈filter {m} P? a = mk⇔ (λ { (h , h') → ∈→filter {m = m} P? a h h' }) (filter→∈ {m = m} P? a)

key=>lst : (k : K) → k ∈ FinMap=>Keys m → k ∈l Data.List.map proj₁ (listOfᵐ m)
key=>lst {fs-nojunk els} k x = x

∈→filterᵖ' : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a))
                     → (k : K)
                     → Σ (k ∈l map proj₁ l) (λ x → P (k , (getValue k _ x)))
                     → k ∈l map proj₁ (filter P? l)
∈→filterᵖ' {x ∷ l} P? .(proj₁ x) (here refl , h') rewrite filter-accept P? {xs = l} h' = here refl
∈→filterᵖ' {x ∷ l} P? k (there h , h') with P? x
... | no ¬p = ∈→filterᵖ' P? k (h , h')
... | yes p = there $ ∈→filterᵖ' P? k (h , h')

∈→filterᵖ : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (k : K)
              →  Σ (k ∈ FinMap=>Keys m) (λ x → P (k , (getValue k _ (key=>lst {m} k x))))
              → k ∈  FinMap=>Keys (filterᵐ P? m)
∈→filterᵖ {fs-nojunk els {prf}} P? k h = ∈→filterᵖ' P? k h

filter→∈ᵖ' : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (k : K)
            → k ∈l map proj₁ (filter P? l)
            → Σ (k ∈l map proj₁ l) (λ x → P (k , ((getValue k _ x))))
filter→∈ᵖ' {x ∷ l} P? k h with P? x
... | no ¬p = Data.Product.map (λ x₁ → there (proj₁ (filter→∈ᵖ' P? k h))) (λ x₁ → proj₂ (filter→∈ᵖ' {l} P? k h)) (k , P?)
filter→∈ᵖ' {x ∷ l} P? .(proj₁ x) (here refl) | yes p = (here refl) , p
filter→∈ᵖ' {x ∷ l} P? k (there h) | yes p = Data.Product.map (λ x₁ → there (proj₁ (filter→∈ᵖ' P? k h))) (λ x₁ → proj₂ (filter→∈ᵖ' {l} P? k h)) (k , P?)

filter→eᵖ : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (k : K)
              → k ∈ FinMap=>Keys (filterᵐ P? m)
              →  Σ (k ∈ FinMap=>Keys m) (λ x → P (k , ((getValue k _ (key=>lst {m} k x)))))
filter→eᵖ  s@{fs-nojunk els {prf}} P? k h = filter→∈ᵖ' {els} P? k h

equivKey : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (k : K) →
                                    Σ (k ∈ FinMap=>Keys m) (λ x → P (k , ((getValue k _ (key=>lst {m} k x)))))
                                     ⇔ k ∈ FinMap=>Keys (filterᵐ P? m)
equivKey {m} P? k = mk⇔ (λ { h → ∈→filterᵖ {m} P? k h}) (λ h → filter→eᵖ {m} P? k h)

∈-∅ᵐ : ∀ {x} → ¬ x ∈ᵐ (∅ {{eq}} {{eq'}})
∈-∅ᵐ ()

∈-∅ᵖ : ∀ {x} → x ∉ᵖᵐ (∅ {{eq}} {{eq'}})
∈-∅ᵖ ()

∈×⇒∈∩ : (a ∈ᵐ m × a ∈ᵐ m') → a ∈ᵐ m ∩ᵐ m'
∈×⇒∈∩ {a} {m} {fs-nojunk els} (h₁ , h₂) = ∈→filter {m} (λ a → eq2inᵖ eq eq' a els) a h₁ h₂

∈×⇒∈∩ᵖ : ∀{k} → (k ∈l (map proj₁ (listOfᵐ m)) × k ∈l (map proj₁ (listOfᵐ m'))) → k ∈l (map proj₁ (listOfᵐ (m ∩ᵖ m')))
∈×⇒∈∩ᵖ {m} {fs-nojunk els} {a} (h₁ , h₂) with ∈→filter {m}
                          (λ a → eq2inᵐ eq (proj₁ a)
                            (map proj₁ els))
                          (a , (getValue a _ h₁))
                          (getPair a _ h₁)
                          h₂
... | ans = ∃-after-map (a , ((getValue a _ h₁))) _ proj₁ ans

∈∩⇒∈×ᵖ : ∀{k} → k ∈l (map proj₁ (listOfᵐ (m ∩ᵖ m'))) → (k ∈l (map proj₁ (listOfᵐ m)) × k ∈l (map proj₁ (listOfᵐ m')))
∈∩⇒∈×ᵖ {m} {fs-nojunk els'} {a} h with filter→∈ {m} (λ a → eq2inᵐ eq (proj₁ a) (map proj₁ els')) _ (getPair a _ h)
... | fst , snd = ∃-after-map _ _ proj₁ fst , snd

∈∩⇒∈×ᵖ' : a ∈ᵐ m ∩ᵖ m' → a ∈ᵖᵐ m × a ∈ᵖᵐ m'
∈∩⇒∈×ᵖ' {a} {m} {fs-nojunk els} h with filter→∈ {m} (λ a → eq2inᵐ eq (proj₁ a) (map proj₁ els)) a h
... | fst , snd = ∃-after-map a _ proj₁ fst , snd

∈×⇔∈∩ᵖ : (a ∈ᵖᵐ m × a ∈ᵖᵐ m') ⇔ a ∈ᵖᵐ (m ∩ᵖ m')
∈×⇔∈∩ᵖ {a} {m = m} {m'} = mk⇔ (∈×⇒∈∩ᵖ {m} {m'}) (∈∩⇒∈×ᵖ {m} {m'})

∈∩⇒∈× : a ∈ᵐ m ∩ᵐ m' → a ∈ᵐ m × a ∈ᵐ m'
∈∩⇒∈× {a} {m} {fs-nojunk els} h = filter→∈ {m} (λ a → eq2inᵖ eq eq' a els) a h

∈×⇔∈∩ : (a ∈ᵐ m × a ∈ᵐ m') ⇔ a ∈ᵐ m ∩ᵐ m'
∈×⇔∈∩ {m = m} {m'} = mk⇔ (∈×⇒∈∩ {m = m} {m' = m'}) (∈∩⇒∈× {m = m} {m' = m'})

∈-×↔∩≡ : (∀ a → (a ∈ᵐ m × a ∈ᵐ m') ⇔ a ∈ᵐ m'') → m ∩ᵐ m' ≡ᵐ m''
∈-×↔∩≡ {m} {m'} {m''} h a = begin
  a ∈ᵐ m ∩ᵐ m'       ≈˘⟨ ∈×⇔∈∩ {m = m} {m' = m'} ⟩
  (a ∈ᵐ m × a ∈ᵐ m') ≈⟨ h a ⟩
  a ∈ᵐ m''          ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

projKeys← : a ∈ᵖᵐ m → proj₁ a ∈ FinMap=>Keys m
projKeys← {a} {fs-nojunk els} x = x

projKeys→ : proj₁ a ∈ FinMap=>Keys m → a ∈ᵖᵐ m
projKeys→ {a} {fs-nojunk els} x = x

projKeys : a ∈ᵖᵐ m ⇔ proj₁ a ∈ FinMap=>Keys m
projKeys {a} {m} = mk⇔ (projKeys← {a} {m}) (projKeys→ {a} {m})

∈×⇒∈∩ᵏ : ∀{k} → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m') → k ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇒∈∩ᵏ m@{fs-nojunk els₁} m'@{fs-nojunk els} {k} h = ∈×⇒∈∩ᵖ {m} {m'} {k} h

∈∩⇒∈×ᵏ : ∀{k} → k ∈ FinMap=>Keys (m ∩ᵖ m') → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m')
∈∩⇒∈×ᵏ m@{fs-nojunk els} m'@{fs-nojunk els₁} {k} h = ∈∩⇒∈×ᵖ {m} {m'} h

∈×⇔∈∩ᵏ : ∀{k} → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m') ⇔ k ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇔∈∩ᵏ {m} {m'} {k} = mk⇔ (∈×⇒∈∩ᵏ {m = m} {m'}) (∈∩⇒∈×ᵏ {m} {m'})

∈-×↔∩≡ᵏ : (∀ k → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys m') ⇔ k ∈ FinMap=>Keys m'') → FinMap=>Keys (m ∩ᵖ m') ≡ᵉ FinMap=>Keys m''
∈-×↔∩≡ᵏ {m} {m'} {m''} h a = begin
  a ∈ FinMap=>Keys (m ∩ᵖ m')       ≈˘⟨ ∈×⇔∈∩ᵏ {m} {m'} ⟩
  (a ∈ FinMap=>Keys m × a ∈ FinMap=>Keys m') ≈⟨ h a ⟩
  a ∈ FinMap=>Keys m''          ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

∈×⇒∈∩ᵏ' : (a : (K × V)) → ((proj₁ a) ∈ FinMap=>Keys m × (proj₁ a) ∈ FinMap=>Keys  m') → (proj₁ a) ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇒∈∩ᵏ' m@{fs-nojunk els₁} m'@{fs-nojunk els} a h = ∈×⇒∈∩ᵖ {m} {m'} {proj₁ a} h

projEmpty← : FinMap=>Keys m ≡ᵉ ∅ᵉ -> m ≡ᵐ ∅
projEmpty← {fs-nojunk []} x a = mk⇔ (λ x₁ → x₁) λ x₁ → x₁
projEmpty← m@{fs-nojunk (x₁ ∷ els) {prf}} x a =
  ⊥-elim (Data.FinSet.Properties.Membership.∈-∅
         {K} {proj₁ x₁}
             (≡ᵉ-∈ {K}
                   {FinMap=>Keys m}
                   {fs-nojunk []}
                     x (here refl)))

projEmpty→ : m ≡ᵐ ∅ → FinMap=>Keys m ≡ᵉ ∅ᵉ
projEmpty→ {fs-nojunk []} x a = mk⇔ (λ x₁ → x₁) λ x₁ → x₁
projEmpty→ m@{fs-nojunk (e ∷ els)} x a =
  ⊥-elim (Data.FinMap.Properties.Equality.∈-∅ {K} {V} {e}
    (≡ᵐ-∈ {K} {V} {m} {∅} x (here refl)))

projEmpty : FinMap=>Keys m ≡ᵉ ∅ᵉ ⇔ m ≡ᵐ ∅
projEmpty {m} = mk⇔ (projEmpty← {m}) (projEmpty→ {m})
