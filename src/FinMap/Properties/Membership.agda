{-# OPTIONS --safe #-}

open import DecEq
open import Data.List
open import FiniteMap
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
open import FinMap
open import FinSet using (_∈_; _≡ᵉ_; mk∈) renaming (∅ to ∅ᵉ)
open import Relation.Nullary.Negation
open import ListEquality

module FinMap.Properties.Membership {K : Set}{V : Set}{{eq : DecEq K}}{{eq' : DecEq V}} where

private
  variable
    a b : K × V
    l : List (K × V)
    m m' m''  : FinMap K V {{eq}} {{eq'}}

∈ᵐ⇒∈l : a ∈ᵐ m → a ∈l (listOfᵐ m)
∈ᵐ⇒∈l (mk∈ᵐ h) = h

∈l⇒∈ᵐ : a ∈l (listOfᵐ m) → a ∈ᵐ m
∈l⇒∈ᵐ h = mk∈ᵐ h

∈fromList⇒∈l : a ∈ᵐ fromList' l → a ∈l l
∈fromList⇒∈l (mk∈ᵐ h) = remDupCompleteᵐ (eq2in _) _ _ h

≡ˡ⇒≡ᵐ : (listOfᵐ m) ≡ˡ (listOfᵐ m') → m ≡ᵐ m'
≡ˡ⇒≡ᵐ h a = mk⇔ (λ x → mk∈ᵐ (≡ˡ-∈ h (∈ᵐ⇒∈l x)))
                λ x → mk∈ᵐ (≡ˡ-∈' h (∈ᵐ⇒∈l x))

∈∪⇒∈⊎ : a ∈ᵐ m ∪ᵐ m' → a ∈ᵐ m ⊎ a ∈ᵐ m'
∈∪⇒∈⊎ (mk∈ᵐ h) with ∈-split (remDupCompleteᵐ (eq2in _) _ _ h)
... | inj₁ x = inj₁ (mk∈ᵐ x)
... | inj₂ y = inj₂ (mk∈ᵐ y)

∪ᵐʳ : a ∈ᵐ m → a ∈ᵐ m' ∪ᵐ m
∪ᵐʳ {a} {fs-nojunk els {p}} {fs-nojunk els₁} (mk∈ᵐ xin)
  = mk∈ᵐ (dup∈ʳ (eq2in _) a els els₁ xin
            (NoDupInd-corr2 (map proj₁ els)
              (∥-∥-prop3 _ p)))

∪ᵐˡ : a ∈ᵐ m' × a ∉ᵖᵐ m → a ∈ᵐ m' ∪ᵐ m
∪ᵐˡ {a} {fs-nojunk els {p}} {fs-nojunk els₁} ((mk∈ᵐ xin) , notin)
  = mk∈ᵐ (dup∈ˡ (eq2in _) a els₁ els xin notin (NoDupInd-corr2 (map proj₁ els) (∥-∥-prop3 _ p)))

∈⊎⇒∈∪ : (a ∈ᵐ m × a ∉ᵖᵐ m') ⊎ a ∈ᵐ m' → a ∈ᵐ m ∪ᵐ m'
∈⊎⇒∈∪ {a} {m} {m'} (inj₁ x) = ∪ᵐˡ {a} {m} {m'} x
∈⊎⇒∈∪ {a} {m} {m'} (inj₂ y) = ∪ᵐʳ {a} {m'} {m} y


∪ᵐʳ⁻' : a ∈ᵐ m → a ∈ᵖᵐ m' → ¬ a ∈ᵐ m' → ¬ a ∈ᵐ m ∪ᵐ m'
∪ᵐʳ⁻' {a} {fs-nojunk els'} {fs-nojunk els {prf}} h h₁ h₃ with getPair (proj₁ a) els h₁
... | ans with (_≟_ {{eq'}}) (getValue (proj₁ a) els h₁) (proj₂ a)
... | yes refl = ⊥-elim (h₃ (mk∈ᵐ ans))
... | no ¬p with dup∈ʳ (eq2in _) _ els els' ans
                       (NoDupInd-corr2 (map proj₁ els) (∥-∥-prop3 _ prf))
... | res with NoDupProjUnique (proj₁ a) _ (proj₂ a) _ res
                            (NoDupInd-corr2 _ (remDupCorrectᵐ (eq2in (_≟_ {{eq}})) (els' ++ els))) ¬p
... | nod = λ { (mk∈ᵐ x) → nod x}

∪ᵐʳ⁻ : a ∈ᵐ m ∪ᵐ m' → a ∈ᵖᵐ m' → a ∈ᵐ m → a ∈ᵐ m'
∪ᵐʳ⁻ {a} {m} {fs-nojunk els {prf}} h h' h'' with eq2inᵖ eq eq' a els
... | yes p = mk∈ᵐ p
... | no ¬p = ⊥-elim (∪ᵐʳ⁻' {a} {m} {fs-nojunk els {prf}} h'' h' (λ { (mk∈ᵐ x) → ¬p x}) h)

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
∈→filter {fs-nojunk els {prf}} P? a (mk∈ᵐ h) h' = mk∈ᵐ (∈→filter' P? a h h')

filter→∈' : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V))
            → a ∈l filter P? l
            → a ∈l l × P a
filter→∈' {x ∷ l} P? a h with P? x
... | no ¬p = Data.Product.map₁ there (filter→∈' P? a h)
filter→∈' {x ∷ l} P? .x (here refl) | yes p = here refl , p
filter→∈' {x ∷ l} P? a (there h) | yes p = Data.Product.map₁ there (filter→∈' P? a h)

filter→∈ : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V)) → a ∈ᵐ filterᵐ P? m → a ∈ᵐ m × P a
filter→∈ {fs-nojunk els} P? a (mk∈ᵐ h) with filter→∈' P? a h
... | fst , snd = (mk∈ᵐ fst) , snd

∈filter : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (a : (K × V)) → (a ∈ᵐ m × P a) ⇔ a ∈ᵐ filterᵐ P? m
∈filter {m} P? a = mk⇔ (λ { (h , h') → ∈→filter {m = m} P? a h h' }) (filter→∈ {m = m} P? a)

key=>lst : (k : K) → k ∈ FinMap=>Keys m → k ∈l Data.List.map proj₁ (listOfᵐ m)
key=>lst {fs-nojunk els} k (mk∈ h) = h

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
∈→filterᵖ {fs-nojunk els {prf}} P? k (mk∈ x , snd) = mk∈ (∈→filterᵖ' P? k (x , snd))

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
filter→eᵖ s@{fs-nojunk els {prf}} P? k (mk∈ h) with filter→∈ᵖ' {els} P? k h
... | fst , snd = (mk∈ fst) , snd

equivKey : {P : (K × V) → Set} → (P? : ∀ a → Dec (P a)) → (k : K) →
                                    Σ (k ∈ FinMap=>Keys m) (λ x → P (k , ((getValue k _ (key=>lst {m} k x)))))
                                     ⇔ k ∈ FinMap=>Keys (filterᵐ P? m)
equivKey {m} P? k = mk⇔ (λ { h → ∈→filterᵖ {m} P? k h}) (λ h → filter→eᵖ {m} P? k h)

∈-∅ᵐ : ∀ {x} → ¬ x ∈ᵐ (∅ {{eq}} {{eq'}})
∈-∅ᵐ (mk∈ᵐ ())

∈-∅ᵖ : ∀ {x} → x ∉ᵖᵐ (∅ {{eq}} {{eq'}})
∈-∅ᵖ ()

∈×⇒∈∩ : (a ∈ᵐ m × a ∈ᵐ m') → a ∈ᵐ m ∩ᵐ m'
∈×⇒∈∩ {a} {m} {fs-nojunk els} (h₁ , mk∈ᵐ h₂) = ∈→filter {m} (λ a → eq2inᵖ eq eq' a els) a h₁ h₂

∈×⇒∈∩ᵖ : ∀{k} → (k ∈l (map proj₁ (listOfᵐ m)) × k ∈l (map proj₁ (listOfᵐ m'))) → k ∈l (map proj₁ (listOfᵐ (m ∩ᵖ m')))
∈×⇒∈∩ᵖ {m} {fs-nojunk els} {a} (h₁ , h₂) with ∈→filter {m}
                          (λ a → eq2inᵐ eq (proj₁ a)
                            (map proj₁ els))
                          (a , (getValue a _ h₁))
                          (mk∈ᵐ (getPair a _ h₁)) 
                          h₂
... | (mk∈ᵐ ans) = ∃-after-map (a , ((getValue a _ h₁))) _ proj₁ ans

∈∩⇒∈×ᵖ : ∀{k} → k ∈l (map proj₁ (listOfᵐ (m ∩ᵖ m'))) → (k ∈l (map proj₁ (listOfᵐ m)) × k ∈l (map proj₁ (listOfᵐ m')))
∈∩⇒∈×ᵖ {m} {fs-nojunk els'} {a} h with filter→∈ {m} (λ a → eq2inᵐ eq (proj₁ a) (map proj₁ els')) _ (mk∈ᵐ (getPair a _ h))
... | mk∈ᵐ fst , snd = ∃-after-map _ _ proj₁ fst , snd

∈∩⇒∈×ᵖ' : a ∈ᵐ m ∩ᵖ m' → a ∈ᵖᵐ m × a ∈ᵖᵐ m'
∈∩⇒∈×ᵖ' {a} {m} {fs-nojunk els} h with filter→∈ {m} (λ a → eq2inᵐ eq (proj₁ a) (map proj₁ els)) a h
... | mk∈ᵐ fst , snd = ∃-after-map a _ proj₁ fst , snd

∈×⇔∈∩ᵖ : (a ∈ᵖᵐ m × a ∈ᵖᵐ m') ⇔ a ∈ᵖᵐ (m ∩ᵖ m')
∈×⇔∈∩ᵖ {a} {m = m} {m'} = mk⇔ (∈×⇒∈∩ᵖ {m} {m'}) (∈∩⇒∈×ᵖ {m} {m'})

∈∩⇒∈× : a ∈ᵐ m ∩ᵐ m' → a ∈ᵐ m × a ∈ᵐ m'
∈∩⇒∈× {a} {m} {fs-nojunk els} h with filter→∈ {m} (λ a → eq2inᵖ eq eq' a els) a h
... | fst , snd = fst , (mk∈ᵐ snd)

∈×⇔∈∩ : (a ∈ᵐ m × a ∈ᵐ m') ⇔ a ∈ᵐ m ∩ᵐ m'
∈×⇔∈∩ {m = m} {m'} = mk⇔ (∈×⇒∈∩ {m = m} {m' = m'}) (∈∩⇒∈× {m = m} {m' = m'})

∈-×↔∩≡ : (∀ a → (a ∈ᵐ m × a ∈ᵐ m') ⇔ a ∈ᵐ m'') → m ∩ᵐ m' ≡ᵐ m''
∈-×↔∩≡ {m} {m'} {m''} h a = begin
  a ∈ᵐ m ∩ᵐ m'       ≈˘⟨ ∈×⇔∈∩ {m = m} {m' = m'} ⟩
  (a ∈ᵐ m × a ∈ᵐ m') ≈⟨ h a ⟩
  a ∈ᵐ m''          ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

projKeys← : a ∈ᵖᵐ m → proj₁ a ∈ FinMap=>Keys m
projKeys← {a} {fs-nojunk els} h = mk∈ h

projKeys→ : proj₁ a ∈ FinMap=>Keys m → a ∈ᵖᵐ m
projKeys→ {a} {fs-nojunk els} (mk∈ h) = h

projKeys : a ∈ᵖᵐ m ⇔ proj₁ a ∈ FinMap=>Keys m
projKeys {a} {m} = mk⇔ (projKeys← {a} {m}) (projKeys→ {a} {m})

∈×⇒∈∩ᵏ : ∀{k} → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m') → k ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇒∈∩ᵏ {m@(fs-nojunk els₁)} {m'@(fs-nojunk els)} {k} (mk∈ h , mk∈ h₁) = mk∈ (∈×⇒∈∩ᵖ {m} {m'} {k} (h , h₁))

∈∩⇒∈×ᵏ : ∀{k} → k ∈ FinMap=>Keys (m ∩ᵖ m') → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m')
∈∩⇒∈×ᵏ {m@(fs-nojunk els)} {m'@(fs-nojunk els₁)} {k} (mk∈ h) with ∈∩⇒∈×ᵖ {m} {m'} h
... | fst , snd = (mk∈ fst) , (mk∈ snd)

∈×⇔∈∩ᵏ : ∀{k} → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys  m') ⇔ k ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇔∈∩ᵏ {m} {m'} {k} = mk⇔ (∈×⇒∈∩ᵏ {m = m} {m'}) (∈∩⇒∈×ᵏ {m} {m'})

∈-×↔∩≡ᵏ : (∀ k → (k ∈ FinMap=>Keys m × k ∈ FinMap=>Keys m') ⇔ k ∈ FinMap=>Keys m'') → FinMap=>Keys (m ∩ᵖ m') ≡ᵉ FinMap=>Keys m''
∈-×↔∩≡ᵏ {m} {m'} {m''} h a = begin
  a ∈ FinMap=>Keys (m ∩ᵖ m')       ≈˘⟨ ∈×⇔∈∩ᵏ {m} {m'} ⟩
  (a ∈ FinMap=>Keys m × a ∈ FinMap=>Keys m') ≈⟨ h a ⟩
  a ∈ FinMap=>Keys m''          ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

∈×⇒∈∩ᵏ' : (a : (K × V)) → ((proj₁ a) ∈ FinMap=>Keys m × (proj₁ a) ∈ FinMap=>Keys  m') → (proj₁ a) ∈ FinMap=>Keys (m ∩ᵖ m')
∈×⇒∈∩ᵏ' {m@(fs-nojunk els₁)} {m'@(fs-nojunk els)} a (mk∈ h , mk∈ h₁) = mk∈ (∈×⇒∈∩ᵖ {m} {m'} {proj₁ a} (h , h₁))
