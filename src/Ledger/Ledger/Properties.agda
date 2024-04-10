{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Deleg.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

open import Data.Bool.Properties    using (¬-not)
open import Data.List.Properties    using (length-map)
open import Data.Nat.Properties     hiding (_≟_)
open import Relation.Binary
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

open import Interface.ComputationalRelation

-- ** Proof that LEDGER is computational.

instance
  _ = Monad-ComputationResult

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
  Computational-LEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}
    computeCerts = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov   = comp {STS = _⊢_⇀⦇_,GOV⦈_}

    module go
      (Γ : LEnv)   (let ⟦ slot , ppolicy , pparams , enactState ⟧ˡᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← map₁ (λ where (inj₁ x) → x; (inj₂ x) → x) $ computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← map₁ (λ where (inj₁ ());    (inj₂ x) → x) $ computeGov   govΓ  govSt  (txgov txb)
          success (_ , LEDGER-V⋯ p utxoStep certStep govStep)
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-V⋯ v utxoStep certStep govStep)
        with isValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ (⊥ ⊎ String)
Computational-LEDGERS = it

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

-- ** Proof that LEDGER preserves values.

module _ where

  private variable
    tx : Tx
    Γ : LEnv
    s s' : LState
    l : List Tx

  FreshTx : Tx → LState → Set
  FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
    where open Tx; open TxBody; open UTxOState; open LState

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ st))     = pov h st

  data FreshTxs : LEnv → LState → List Tx → Set where
    []-Fresh : FreshTxs Γ s []
    ∷-Fresh  : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → FreshTxs Γ s' l
              → FreshTxs Γ s (tx ∷ l)

  LEDGERS-pov : FreshTxs Γ s l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s' → getCoin s ≡ getCoin s'
  LEDGERS-pov _ (BS-base Id-nop) = refl
  LEDGERS-pov {Γ} {_} {_ ∷ l} (∷-Fresh h h₁ h₂) (BS-ind x st) =
    trans (LEDGER-pov h x) $
      LEDGERS-pov (subst (λ s → FreshTxs Γ s l)
                          (sym $ computational⇒rightUnique Computational-LEDGER x h₁)
                          h₂) st

-- ** Proof that govDepsMatch is a LEDGER invariant.

isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (utxoSt .deposits ))
  ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)
  where open UTxOState using (deposits)

V⊎P∖V→DepPurposes : {txid : TxId} → List (GovVote ⊎ GovProposal) → List DepositPurpose
V⊎P∖V→DepPurposes [] = []
V⊎P∖V→DepPurposes {txid} (inj₁ v ∷ vps) = V⊎P∖V→DepPurposes{txid} vps -- omit votes
V⊎P∖V→DepPurposes {txid} (inj₂ p ∷ vps) = GovActionDeposit (txid , length vps) ∷ (V⊎P∖V→DepPurposes{txid} vps)

instance _ = +-0-monoid

module _
  -- ASSUMPTIONS (TODO: eliminate these) --
  {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵
                              ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
  {filterCD : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
              → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ ))
                ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  {dom-single : {d : DepositPurpose} {c : Coin} → ❴ d ❵ˢ ≡ dom ❴ d , c ❵ˢ }
  {ΔgovSt≡ : {txid : TxId} {govSt govSt' : GovState} {txb : TxBody}
             → fromList (map (λ (id , _) → GovActionDeposit id) govSt')
               ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)
                  ∪ fromList (V⊎P∖V→DepPurposes{txid} (txgov txb))}
  where

  LEDGER-govDepsMatch : LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch

  LEDGER-govDepsMatch
    (LEDGER-I⋯ tx-not-valid (UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ⊢utxo)))
    aprioriMatch = case ⊢utxo of λ where
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) → contradiction (trans (sym $ proj₂ u) tx-not-valid) (λ ())
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) → aprioriMatch

  LEDGER-govDepsMatch
    Γ@{⟦ _ , _ , pp , _ ⟧ˡᵉ}      -- Γ : LEnv
    s@{⟦ utxoSt , govSt , _ ⟧ˡ}   -- s : LState = UTxOState × GovState × CertState
    tx@{record { body = txb }}
    s'@{⟦ utxoSt' , govSt' , _ ⟧ˡ}
    (LEDGER-V⋯ tx-valid (UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)) _ _)
    aprioriMatch =

    begin
      filterˢ isGADeposit (dom utxoDeps')
        ≈⟨ filter-pres-≡ᵉ updateDeps-dom≡ᵉ ⟩
      filterˢ isGADeposit (dom (updateDeposits pparams txb utxoDeps))
        ≈⟨ noGACerts{txcerts} ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ{txprop}) ⟩
      filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pparams txb))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pparams txb))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (proposalDepositsΔ txprop pparams txb))
        ≈⟨ ∪-cong ≡ᵉ.refl (allGA-propDepsΔ{txprop}) ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ dom ((proposalDepositsΔ txprop pparams txb)ˢ)
        ≈⟨ ∪-cong aprioriMatch (≡ᵉ.sym (≡ᵉ.trans (V⊎P∖V≡P txvote) P≡propDepChange)) ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt) ∪ fromList (V⊎P∖V→DepPurposes (txgov txb))
        ≈˘⟨ ΔgovSt≡{txid} {govSt} {govSt'} {txb} ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt')
        ∎

    where
    open SetoidReasoning ≡ᵉ-Setoid
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})
    open UTxOState using (deposits)
    open TxBody txb; open LEnv Γ; open PParams pp

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    P→DepPurposes : List GovProposal → List DepositPurpose
    P→DepPurposes [] = []
    P→DepPurposes (p ∷ ps) = GovActionDeposit (txid , length ps) ∷ P→DepPurposes ps

    V⊎P∖V≡ : (votes : List GovVote) (props : List GovProposal)
             → fromList (V⊎P∖V→DepPurposes{txid} (map inj₁ votes ++ map inj₂ props))
               ≡ᵉ fromList (V⊎P∖V→DepPurposes{txid} (map inj₂ props))
    V⊎P∖V≡ [] _ = ≡ᵉ.refl
    V⊎P∖V≡ (v ∷ vs) ps = V⊎P∖V≡ vs ps

    V⊎P∖V≡P : (votes : List GovVote) {props : List GovProposal}
              → fromList (V⊎P∖V→DepPurposes (map inj₁ votes ++ map inj₂ props)) ≡ᵉ fromList (P→DepPurposes props)
    V⊎P∖V≡P votes {[]} = V⊎P∖V≡ votes []
    V⊎P∖V≡P votes {p ∷ ps} = begin
      fromList (V⊎P∖V→DepPurposes (map inj₁ votes ++ map inj₂ (p ∷ ps)))
        ≈⟨ V⊎P∖V≡ votes (p ∷ ps) ⟩
      fromList (GovActionDeposit (txid , length{A = GovVote ⊎ GovProposal} (map inj₂ ps)) ∷ V⊎P∖V→DepPurposes (map inj₂ ps))
        ≈⟨ ≡ᵉ.reflexive (cong (λ x → fromList (GovActionDeposit (txid , x) ∷ V⊎P∖V→DepPurposes (map inj₂ ps))) (length-map inj₂ ps)) ⟩
      fromList (GovActionDeposit (txid , length ps) ∷ V⊎P∖V→DepPurposes (map inj₂ ps))
        ≈⟨ fromList-∪-singleton ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ fromList (V⊎P∖V→DepPurposes (map inj₂ ps))
        ≈⟨ ∪-cong ≡ᵉ.refl (V⊎P∖V≡P []) ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ fromList (P→DepPurposes ps)
        ≈˘⟨ fromList-∪-singleton ⟩
      fromList (P→DepPurposes (p ∷ ps))
        ∎

    P≡propDepChange : {props : List GovProposal} → fromList (P→DepPurposes props) ≡ᵉ dom ((proposalDepositsΔ props pparams txb)ˢ)
    P≡propDepChange {[]} = ≡ᵉ.sym dom∅
    P≡propDepChange {p ∷ ps} = begin
      fromList (P→DepPurposes (p ∷ ps))
        ≈⟨ fromList-∪-singleton ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ fromList (P→DepPurposes ps)
        ≈⟨ ∪-cong ≡ᵉ.refl P≡propDepChange ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ dom ((proposalDepositsΔ ps pparams txb)ˢ)
        ≈⟨ ∪-comm (❴ GovActionDeposit (txid , length ps) ❵) (dom ((proposalDepositsΔ ps pparams txb)ˢ)) ⟩
      dom ((proposalDepositsΔ ps pparams txb)ˢ) ∪ ❴ GovActionDeposit (txid , length ps) ❵
        ≈⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive dom-single) ⟩
      dom ((proposalDepositsΔ ps pparams txb)ˢ) ∪ dom{X = ℙ (DepositPurpose × Coin)} (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ )
        ≈˘⟨ dom∪⁺ ⟩
      dom ((proposalDepositsΔ (p ∷ ps) pparams txb)ˢ)
        ∎

    -- TODO: prove this and remove from list of module assumptions
    -- ΔgovSt≡ : fromList (map (λ (id , _) → GovActionDeposit id) govSt')
    --          ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt) ∪ fromList (V⊎P∖V→DepPurposes (txgov txb))
    -- ΔgovSt≡ = {!!}

    updateDeps-dom≡ᵉ : dom utxoDeps' ≡ᵉ dom (updateDeposits pparams txb utxoDeps)
    updateDeps-dom≡ᵉ = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (⊢utxo-valid UTXOS-sts))
      where
      ⊢utxo-valid : record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
                    → utxoDeps' ≡ (updateDeposits pparams txb utxoDeps)
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = contradiction (trans (sym tx-valid) (proj₂ u)) (λ ())

    updatePropDeps≡ᵉ : {props : List GovProposal}
       → dom ((updateProposalDeposits props txid govActionDeposit utxoDeps)ˢ)
         ≡ᵉ dom ((utxoDeps ∪⁺ proposalDepositsΔ props pparams txb)ˢ)
    updatePropDeps≡ᵉ {[]} = begin
      dom ((updateProposalDeposits [] txid govActionDeposit utxoDeps)ˢ)
        ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))
        ≈⟨ dom∪ ⟩
      dom (utxoDeps ˢ) ∪ dom{X = DepositPurpose ⇀ Coin} ∅
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ [] pparams txb) ˢ)
        ∎

    updatePropDeps≡ᵉ {p ∷ ps} = let gaD = GovActionDeposit (txid , length ps) in
      begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps ˢ)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ{ps}) ≡ᵉ.refl ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ ps pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom (utxoDeps ˢ) ∪ dom ((proposalDepositsΔ ps pparams txb) ˢ)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom (utxoDeps ˢ)) (dom ((proposalDepositsΔ ps pparams txb) ˢ)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom (utxoDeps ˢ) ∪ (dom ((proposalDepositsΔ ps pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom (utxoDeps ˢ) ∪ dom ((proposalDepositsΔ ps pparams txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pparams txb) ˢ)
        ∎

    noGACerts : ∀ {cs} {deps}
      → filterˢ isGADeposit (dom ((updateCertDeposits pparams cs deps)ˢ)) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
    noGACerts {[]} {deps} = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts {c ∷ cs} {deps} = let upCD = updateCertDeposits pparams cs deps in
      begin
      filterˢ isGADeposit (dom ((updateCertDeposits pparams (c ∷ cs) deps)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (((upCD ∪⁺ certDeposit c {pparams}) ∣ certRefund c ᶜ)ˢ))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pparams}} ⟩
      filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pparams})ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pparams})ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pparams})ˢ))
        ≈⟨ ∪-cong (noGACerts {cs} {deps}) (filterCD {c} {pparams}) ⟩
      filterˢ isGADeposit (dom (deps ˢ)) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom (deps ˢ))) ⟩
      filterˢ isGADeposit (dom (deps ˢ))
        ∎

    allGA-propDepsΔ : {props : List GovProposal}
      → filterˢ isGADeposit (dom ((proposalDepositsΔ props pparams txb)ˢ)) ≡ᵉ dom ((proposalDepositsΔ props pparams txb)ˢ)
    allGA-propDepsΔ {[]} = begin
      filterˢ isGADeposit (dom ((proposalDepositsΔ [] pparams txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)
        ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅
        ≈⟨ ∅-least filter-⊆ ⟩
      ∅
        ≈˘⟨ dom∅ ⟩
      dom ((proposalDepositsΔ [] pparams txb)ˢ)
        ∎

    allGA-propDepsΔ {(p ∷ ps)} =
      let
        upPD = updateProposalDeposits ps txid govActionDeposit ∅
        gaD = GovActionDeposit (txid , length ps)
      in
      begin
      filterˢ isGADeposit (dom ((proposalDepositsΔ (p ∷ ps) pparams txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom ((upPD ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ)) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (allGA-propDepsΔ{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom ((proposalDepositsΔ ps pparams txb)ˢ) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom ((proposalDepositsΔ ps pparams txb)ˢ) ∪ ❴ gaD ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom ((proposalDepositsΔ ps pparams txb)ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((proposalDepositsΔ (p ∷ ps) pparams txb)ˢ)
        ∎
