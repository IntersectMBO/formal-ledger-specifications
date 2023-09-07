{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.PPUp.Properties (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Prelude hiding (_+_; _*_; Dec₁)

open import Ledger.PPUp txs

-- open import Ledger.Epoch using (EpochStructure)
import Data.Nat as ℕ
open import Algebra
open Semiring Slotʳ hiding (refl; sym)

import Data.Unit.Polymorphic
open import Data.Product.Properties
open import Interface.Decidable.Instance
open import Relation.Nullary.Decidable

-- Ring literals
open import Agda.Builtin.FromNat
open import Algebra.Literals
open Semiring-Lit Slotʳ
-- open import Interface.HasPartialOrder.Instance using (module epochPO)
-- open import Interface.HasStrictTotalOrder.Instance using (module epochSTO)

-- open epochSTO (TransactionStructure.epochStructure txs)
-- open epochPO (TransactionStructure.epochStructure txs)

instance
  _ = Data.Unit.Polymorphic.tt

private
  Current-Property : PPUpdateEnv → Update → Set
  Current-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom (pup ˢ) ⊆ dom (genDelegs ˢ)
      × All (isViableUpdate pparams) (range (pup ˢ))
      × (slot + (2 * StabilityWindow)) < firstSlot (sucᵉ (epoch slot))
      × epoch slot ≡ e

  Future-Property : PPUpdateEnv → Update → Set
  Future-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom (pup ˢ) ⊆ dom (genDelegs ˢ)
      × All (isViableUpdate pparams) (range (pup ˢ))
      × firstSlot (sucᵉ (epoch slot)) ≤ (slot + (2 * StabilityWindow))
      × sucᵉ (epoch slot) ≡ e

instance
  ∈-inst : ∀ {A : Set} ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec₁ (_∈ s)
  ∈-inst {s = s} .Dec₁.P? = _∈? s

  all?' : ∀ {A : Set} {P : A → Set} ⦃ P? : Dec₁ P ⦄ ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec (All P s)
  all?' ⦃ P? = record { P? = P? } ⦄ {s} = all? P?

  Dec₁-isViableUpdate : ∀ {Γ} → Dec₁ (λ z → isViableUpdate (PPUpdateEnv.pparams Γ) z)
  Dec₁-isViableUpdate {Γ} .Dec₁.P? = isViableUpdate? (PPUpdateEnv.pparams Γ)

  _ = Decidable²⇒Dec _<ˢ?_

  Dec-Current-Property : ∀ {Γ u} → Dec (Current-Property Γ u)
  Dec-Current-Property {Γ} = ¿ _ ¿ ×-dec all?' ⦃ Dec₁-isViableUpdate {Γ} ⦄ ×-dec ¿ _ ¿ ×-dec _ ≟ _

  -- Dec-Future-Property : ∀ {Γ u} → Dec (Future-Property Γ u)
  -- Dec-Future-Property {Γ} = {!!}

-- ¿ _ ¿ ×-dec all?' ⦃ Dec₁-isViableUpdate {Γ} ⦄ ×-dec ¿ _ ¿ ×-dec _ ≟ _

-- private
--   helper : ∀ {Γ u} → Dec (Current-Property Γ u) × Dec (Future-Property Γ u) → PPUpdateState → Maybe PPUpdateState
--   helper (no _  , no  _) record { pup = pupˢ ; fpup = fpupˢ } = nothing
--   helper {u = (pup , _)} (no _  , yes _) record { pup = pupˢ ; fpup = fpupˢ } = just record { pup = pupˢ ; fpup = pup ∪ᵐˡ fpupˢ }
--   helper {u = (pup , _)} (yes _ , no  _) record { pup = pupˢ ; fpup = fpupˢ } = just record { pup = pup ∪ᵐˡ pupˢ ; fpup = fpupˢ }
--   helper (yes (_ , _ , p , _) , yes (_ , _ , p' , _)) _       = ⊥-elim (≤ˢ⇒¬>ˢ p' p)

-- Computational-PPUP : Computational _⊢_⇀⦇_,PPUP⦈_
-- Computational-PPUP .compute Γ s (just x@(pup , _)) =
--   helper {Γ} {x} (Dec-Current-Property {Γ} {x} ,′ Dec-Future-Property {Γ} {x}) s
-- Computational-PPUP .compute Γ s nothing = just s
-- Computational-PPUP .≡-just⇔STS {Γ} {s} {e} {s'} = mk⇔
--   (case e return (λ e → compute Computational-PPUP Γ s e ≡ just s' → Γ ⊢ s ⇀⦇ e ,PPUP⦈ s') of λ where
--     nothing  refl → PPUpdateEmpty
--     (just e)      → case (Dec-Current-Property {Γ} {e} ,′ Dec-Future-Property {Γ} {e})
--       return (λ x → helper {Γ} {e} x s ≡ just s' → Γ ⊢ s ⇀⦇ just e ,PPUP⦈ s')
--       of λ where (no _                   , yes (x , x₁ , x₂ , x₃)) refl → PPUpdateFuture x x₁ x₂ x₃
--                  (yes (x , x₁ , x₂ , x₃) , no                   _) refl → PPUpdateCurrent x x₁ x₂ x₃
--                  (yes (_ , _ , p , _)    , yes (_ , _ , ¬p , _))        → contradiction p (≤ˢ⇒¬>ˢ ¬p))
--   (λ where
--     PPUpdateEmpty → refl
--     (PPUpdateCurrent {pup = pup} {e} {pupˢ} {fpupˢ} x x₁ x₂ x₃) → subst
--       (λ a → helper {Γ} {pup , e} a record { pup = pupˢ ; fpup = fpupˢ } ≡
--                just record { pup = pup ∪ᵐˡ pupˢ ; fpup = fpupˢ })
--       (sym $ (×-≡,≡→≡ ((proj₂ $ dec-yes (Dec-Current-Property {Γ} {pup , e}) (x , x₁ , x₂ , x₃)) ,′
--                        (dec-no (Dec-Future-Property {Γ} {pup , e}) λ where (_ , _ , p , _) → contradiction x₂ (≤ˢ⇒¬>ˢ p)))))
--       refl
--     (PPUpdateFuture {pup = pup} {e} {pupˢ} {fpupˢ} x x₁ x₂ x₃) → subst
--       (λ a → helper {Γ} {pup , e} a record { pup = pupˢ ; fpup = fpupˢ } ≡
--                just record { pup = pupˢ ; fpup = pup ∪ᵐˡ fpupˢ })
--       (sym $ (×-≡,≡→≡ ((dec-no (Dec-Current-Property {Γ} {pup , e}) λ where (_ , _ , p , _) → contradiction p (≤ˢ⇒¬>ˢ x₂)) ,′
--                        (proj₂ $ dec-yes (Dec-Future-Property {Γ} {pup , e}) (x , x₁ , x₂ , x₃)))))
--       refl)
