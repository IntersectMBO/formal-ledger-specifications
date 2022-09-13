{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxow.Properties (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Utxow txs
open import Ledger.Utxo txs
open import Ledger.Crypto

open Tx
open TxBody
open TxWitnesses

open import Prelude

open import DecEq

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Unary hiding (⌊_⌋; _⊆_)
open import Relation.Binary using (IsEquivalence)

open import FinMap
open import FinSet
open import FinSet.Properties.Equality

open import Data.Maybe

open import ComputationalRelation
open Computational

open import Tactic.ReduceDec
open import MyDebugOptions

-- we need to hide Dec-→
module _ where
  open import Interface.Decidable.Instance using (¿_¿; Dec-×; DecEq⇒Dec) public

record Dec₁ {A : Set} (P : A → Set) : Set where
  field P? : Decidable P

instance
  FSall?' : {A : Set} {P : A → Set} ⦃ P? : Dec₁ P ⦄ ⦃ _ : DecEq A ⦄ {s : FinSet.FinSet A}
         → Dec (FinSet.All P s)
  FSall?' ⦃ P? = record { P? = P? } ⦄ {s} = FinSet.all? P? s

instance
  all?' : ∀ {K V : Set} ⦃ _ : DecEq K ⦄ ⦃ _ : DecEq V ⦄ → {P : K × V → Set} → ⦃ P? : Dec₁ P ⦄ → {m : FinMap K V} → Dec (FinMap.All P m)
  all?' ⦃ P? = record { P? = P? } ⦄ {m} = FinMap.all? P? m

sigCheck : Ser → (VKey × Sig) → Set
sigCheck d = λ where (vk , σ) → isSigned vk d σ

instance
  sig-inst : ∀ {d} → Dec₁ (sigCheck d)
  sig-inst {d} .Dec₁.P? = λ where (vk , σ) → isSigned? vk d σ

  valid-inst : ∀ {khs} {I} → Dec₁ (validP1Script khs I)
  valid-inst {khs} {I} .Dec₁.P? = validP1Script? khs I

  ∈-inst : {A : Set} ⦃ _ : DecEq A ⦄ {s : FinSet A} → Dec₁ (_∈' s)
  ∈-inst {s = s} .Dec₁.P? = _∈'? s

  Dec-≡ᵉ' : ∀ {A} ⦃ _ : DecEq A ⦄ {s s' : FinSet A} → Dec (s ≡ᵉ' s')
  Dec-≡ᵉ' {s = s} {s'} = Relation.Nullary.Decidable.map (mk⇔ ≡ᵉ⇒≡ᵉ' ≡ᵉ'⇒≡ᵉ) (s ≟ᵉ s')

Computational-Property : UTxOState → Tx → Set
Computational-Property s tx = let
  utxo = UTxOState.utxo s
  txb = body tx
  txw = wits tx
  witsKeyHashes = FinSet.map hash (dom (vkSigs txw))
  witsScriptHashes = FinSet.map hash (scripts txw)
  in FinMap.All (λ where (vk , σ) → isSigned vk (txidBytes (txid txb)) σ) (vkSigs txw)
     × FinSet.All (validP1Script witsKeyHashes (txvldt txb)) (scriptsP1 txw)
     × witsVKeyNeeded utxo txb ⊆' witsKeyHashes
     × scriptsNeeded utxo txb ≡ᵉ' witsScriptHashes
     × txADhash txb ≡ Data.Maybe.map hash (txAD tx)

Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_
Computational-UTXOW .compute    e s tx = if ⌊ ¿ Computational-Property s tx ¿ ⌋
       then compute Computational-UTXO e s (body tx)
       else nothing
Computational-UTXOW .≡-just⇔STS {e} {s} {tx} {s'} =
  let substGoal = subst (λ b → (if b then compute Computational-UTXO e s (body tx) else nothing) ≡ just s')
      comp-p = ¿ Computational-Property s tx ¿
      open Equivalence (≡-just⇔STS Computational-UTXO)
  in mk⇔
    (λ h → case comp-p of λ where
      (yes p@(x , x₁ , x₂ , x₃ , x₄)) →
        UTXOW-inductive x x₁ (⊆'⇒⊆ x₂) (≡ᵉ'⇒≡ᵉ x₃) x₄ (to $ substGoal (fromWitness' comp-p p) h)
      (no ¬p) → case substGoal (fromWitnessFalse' comp-p ¬p) h of λ ())
    λ where (UTXOW-inductive x x₁ x₂ x₃ x₄ x₅) →
              substGoal (sym $ fromWitness' comp-p (x , x₁ , ⊆⇒⊆' x₂ , ≡ᵉ⇒≡ᵉ' x₃ , x₄)) (from x₅)
