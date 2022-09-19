{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxow.Properties (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.Utxow txs
open import Ledger.Utxo txs
open import Ledger.Crypto

open Tx
open TxBody
open TxWitnesses

open import Relation.Nullary.Decidable

open import Data.FinSet.Properties.Equality
import Data.Maybe as M

open import Tactic.ReduceDec
open import MyDebugOptions

-- we need to hide Dec-→
module _ where
  open import Interface.Decidable.Instance hiding (Dec-→) public

private variable A K V : Set

instance
  FSall?' : {P : A → Set} ⦃ P? : Dec₁ P ⦄ ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec (∀ˢ P s)
  FSall?' ⦃ P? = record { P? = P? } ⦄ {s} = allˢ? P? s

  all?' : ⦃ _ : DecEq K ⦄ ⦃ _ : DecEq V ⦄ → {P : K × V → Set} → ⦃ P? : Dec₁ P ⦄ → {m : K ↛ V} → Dec (∀ᵐ P m)
  all?' ⦃ P? = record { P? = P? } ⦄ {m} = allᵐ? P? m

sigCheck : Ser → (VKey × Sig) → Set
sigCheck d = λ where (vk , σ) → isSigned vk d σ

instance
  sig-inst : ∀ {d} → Dec₁ (sigCheck d)
  sig-inst {d} .Dec₁.P? = λ where (vk , σ) → isSigned? vk d σ

  valid-inst : ∀ {khs} {I} → Dec₁ (validP1Script khs I)
  valid-inst {khs} {I} .Dec₁.P? = validP1Script? khs I

  ∈-inst : ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec₁ (_∈' s)
  ∈-inst {s = s} .Dec₁.P? = _∈'? s

  Dec-≡ᵉ' : ⦃ _ : DecEq A ⦄ {s s' : ℙ A} → Dec (s ≡ᵉ' s')
  Dec-≡ᵉ' {s = s} {s'} = Relation.Nullary.Decidable.map (mk⇔ ≡ᵉ⇒≡ᵉ' ≡ᵉ'⇒≡ᵉ) (s ≟ᵉ s')

Computational-Property : UTxOState → Tx → Set
Computational-Property s tx = let
  utxo = UTxOState.utxo s
  txb = body tx
  txw = wits tx
  witsKeyHashes = mapˢ hash (dom (vkSigs txw))
  witsScriptHashes = mapˢ hash (scripts txw)
  in ∀ᵐ (λ where (vk , σ) → isSigned vk (txidBytes (txid txb)) σ) (vkSigs txw)
     × ∀ˢ (validP1Script witsKeyHashes (txvldt txb)) (scriptsP1 txw)
     × witsVKeyNeeded utxo txb ⊆' witsKeyHashes
     × scriptsNeeded utxo txb ≡ᵉ' witsScriptHashes
     × txADhash txb ≡ M.map hash (txAD tx)

Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_
Computational-UTXOW .compute    e s tx = ifᵈ Computational-Property s tx
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
