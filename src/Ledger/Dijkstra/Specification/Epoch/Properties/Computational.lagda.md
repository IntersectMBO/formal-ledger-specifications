---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Epoch.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Agda.Builtin.FromNat
import Relation.Binary.PropositionalEquality as PE

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.PoolReap txs
open import Ledger.Dijkstra.Specification.PoolReap.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Rewards.Properties.Computational txs abs

open Computational ⦃...⦄

module _ {eps : EpochState} {e : Epoch} where

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total =
    -, EPOCH
         ( POOLREAP-total  .proj₂
         , SNAP-total      .proj₂
         , RATIFIES-total' .proj₂)

  EPOCH-deterministic : ∀ eps' eps''
                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps''
                      → eps' ≡ eps''
  EPOCH-deterministic
      eps'
      eps''
      (EPOCH
        {dState' = dState'₁}
        {acnt' = acnt'₁}
        {pState'' = pState'₁}
        {ss' = ss'₁}
        (p₁ , p₂ , p₃)
      )
      (EPOCH
        {dState' = dState'₂}
        {acnt' = acnt'₂}
        {pState'' = pState'₂}
        {ss' = ss'₂}
        (p₁' , p₂' , p₃')
      ) = eps'≡eps''
       where
         ls : LedgerState
         ls = LedgerStateOf eps

         es : EnactState
         es = EnactStateOf (RatifyStateOf eps)

         govUpd : Governance-Update
         govUpd = GovernanceUpdate.updates ls (RatifyStateOf eps)

         govSt' = Governance-Update.govSt' govUpd

         module pPRUpd =  Pre-POOLREAP-Update (Pre-POOLREAPUpdate.updates ls es govUpd)

         pPRUpd₁ = Post-POOLREAPUpdate.updates es ls dState'₁ acnt'₁ govUpd
         module pPRUpd₁ = Post-POOLREAP-Update pPRUpd₁

         pPRUpd₂ = Post-POOLREAPUpdate.updates es ls dState'₂ acnt'₂ govUpd
         module pPRUpd₂ = Post-POOLREAP-Update pPRUpd₂

         prs'≡prs'' : ⟦ acnt'₁ , dState'₁ , pState'₁ ⟧ᵖ ≡
                      ⟦ acnt'₂ , dState'₂ , pState'₂ ⟧ᵖ
         prs'≡prs'' = POOLREAP-deterministic-≡ refl refl p₁ p₁'

         pPRUpd₁≡pPRUpd₂ : pPRUpd₁ ≡ pPRUpd₂
         pPRUpd₁≡pPRUpd₂ rewrite (cong PoolReapState.dState prs'≡prs'') | (cong PoolReapState.acnt prs'≡prs'') = refl

         ls'₁ = ⟦ pPRUpd.utxoSt' , govSt' , ⟦ pPRUpd₁.dState'' , pState'₁ , pPRUpd.gState' ⟧ᶜˢ ⟧
         ls'₂ = ⟦ pPRUpd.utxoSt' , govSt' , ⟦ pPRUpd₂.dState'' , pState'₂ , pPRUpd.gState' ⟧ᶜˢ ⟧

         ls'₁≡ls'₂ : ls'₁ ≡ ls'₂
         ls'₁≡ls'₂ = cong₂ (λ ds ps → ⟦ pPRUpd.utxoSt' , govSt' , ⟦ ds , ps , pPRUpd.gState' ⟧ᶜˢ ⟧)
                       (cong Post-POOLREAP-Update.dState'' pPRUpd₁≡pPRUpd₂)
                       (cong PoolReapState.pState prs'≡prs'')

         ss'₁≡ss'₂ : ss'₁ ≡ ss'₂
         ss'₁≡ss'₂ = SNAP-deterministic ls'₁≡ls'₂ p₂ p₂'

         mkΓ : Snapshots → Post-POOLREAP-Update → LedgerState → RatifyEnv
         mkΓ ss'' pPR ls'' =
           ⟦ calculateVDelegDelegatedStake e pPRUpd.utxoSt' govSt' pPRUpd.gState' (Post-POOLREAP-Update.dState'' pPR)
           , calculatePoolDelegatedStakeForVoting (Snapshots.mark ss'') govSt'
           , e
           , DRepsOf ls''
           , CCHotKeysOf ls''
           , TreasuryOf (Post-POOLREAP-Update.acnt'' pPR)
           , PoolsOf ls''
           , VoteDelegsOf ls'' ⟧

         Γ≡Γ' : mkΓ ss'₁ pPRUpd₁ ls'₁ ≡ mkΓ ss'₂ pPRUpd₂ ls'₂
         Γ≡Γ' = trans (cong (λ x → mkΓ x pPRUpd₁ ls'₁) ss'₁≡ss'₂)
                (trans (cong (λ x → mkΓ ss'₂ x ls'₁) pPRUpd₁≡pPRUpd₂)
                       (cong (mkΓ ss'₂ pPRUpd₂) ls'₁≡ls'₂))

         fut'≡fut'' : RatifyStateOf eps' ≡ RatifyStateOf eps''
         fut'≡fut'' = RATIFIES-deterministic-≡ Γ≡Γ' refl refl p₃ p₃'

         eps'≡eps'' : eps' ≡ eps''
         eps'≡eps''
           rewrite ss'₁≡ss'₂
             | cong PoolReapState.pState prs'≡prs''
             | cong Post-POOLREAP-Update.acnt'' pPRUpd₁≡pPRUpd₂
             | cong Post-POOLREAP-Update.dState'' pPRUpd₁≡pPRUpd₂
             | fut'≡fut'' = refl

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' p = EPOCH-deterministic (proj₁ EPOCH-total) eps' (proj₂ EPOCH-total) p

  abstract
    EPOCH-total' : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    EPOCH-total' = EPOCH-total

    EPOCH-complete' : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total' ≡ eps'
    EPOCH-complete' = EPOCH-complete

instance
  Computational-EPOCH : Computational _⊢_⇀⦇_,EPOCH⦈_ ⊥
  Computational-EPOCH .computeProof Γ s sig = success EPOCH-total'
  Computational-EPOCH .completeness Γ s sig s' h = cong success (EPOCH-complete' s' h)

module _ {e : Epoch} where

  NEWEPOCH-total : ∀ nes'' → ∃[ nes' ] _ ⊢ nes'' ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total nes with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes
  ... | yes p | just ru | PE.[ refl ] =  ⟦ e , _ , _ , EPOCH-total' .proj₁ , nothing , _ ⟧
                                      , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing | PE.[ refl ] = ⟦ e , _ , _ , proj₁ EPOCH-total' , nothing , _ ⟧
                                      , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  ... | no ¬p | _ | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → proj₁ (NEWEPOCH-total nes) ≡ nes'
  NEWEPOCH-complete nes nes' h with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes | h
  ... | yes p | just ru | PE.[ refl ] | NEWEPOCH-New (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = ⊥-elim $ x p
  ... | yes p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-New (x , x₁)  = ⊥-elim $ ¬p x
  ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = refl
  ... | no ¬p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) = ⊥-elim $ ¬p x

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof Γ s sig = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong success (NEWEPOCH-complete _ s' h)
```
