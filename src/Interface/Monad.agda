{-# OPTIONS --safe --without-K #-}

module Interface.Monad where

open import Prelude

private
  variable
    a b c : Level
    A : Set a
    B : Set b
    C : Set c

record Monad (M : ∀ {a} → Set a → Set a) : Setω where
  infixl 1 _>>=_ _>>_ _>=>_
  infixr 1 _=<<_ _<=<_

  field
    return : A → M A
    _>>=_  : M A → (A → M B) → M B

  _>>_ : M A → M B → M B
  m₁ >> m₂ = m₁ >>= λ _ → m₂

  _=<<_ : (A → M B) → M A → M B
  f =<< c = c >>= f

  _>=>_ : (A → M B) → (B → M C) → (A → M C)
  f >=> g = _=<<_ g ∘ f

  _<=<_ : (B → M C) → (A → M B) → (A → M C)
  g <=< f = f >=> g

  join : M (M A) → M A
  join m = m >>= id

  _<$>_ : (A → B) → M A → M B
  _<$>_ f x = return ∘ f =<< x

  _<&>_ : M A → (A → B) → M B
  _<&>_ = flip _<$>_

  open import Data.List
  open import Data.Maybe using (Maybe; just; nothing)

  traverseList : (A → M B) → List A → M (List B)
  traverseList f [] = return []
  traverseList f (x ∷ l) = do y ← f x; (y ∷_) <$> traverseList f l
  
  sequenceList : List (M A) → M (List A)
  sequenceList = traverseList id

  traverseMaybe : (A → M B) → Maybe A → M (Maybe B)
  traverseMaybe f nothing  = return nothing
  traverseMaybe f (just x) = just <$> f x
  
  sequenceMaybe : Maybe (M A) → M (Maybe A)
  sequenceMaybe = traverseMaybe id
