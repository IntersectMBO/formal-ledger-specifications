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

open import Data.Bool.Properties using (¬-not)
open import Data.List.Properties using (length-map; ++-identityʳ; map-++; ++-assoc)
open import Data.Nat.Properties using (+-0-monoid)
open import Relation.Binary using (IsEquivalence)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

instance _ = +-0-monoid
{-

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
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ _ _ st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ _ _ st))     = pov h st

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

-- -}
-- ** Proof that govDepsMatch is a LEDGER invariant.

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
  ≡ᵉ fromList (map (λ pr → GovActionDeposit (proj₁ pr)) govSt)

getDeps : LState → DepositPurpose ⇀ Coin
getDeps s = UTxOState.deposits (LState.utxoSt s)

module _  -- ASSUMPTIONS (TODO: eliminate these) --
  {- 1 -} {filterCD : ∀ {pp} {c} → filterˢ isGADeposit (dom (certDeposit c {pp})) ≡ᵉ ∅}
  {- 2 -} {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
  {- 3 -} {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                      → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where

  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

  pattern UTXOW-UTXOS x = UTXOW-inductive⋯ _ _ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x)

  module Ledger-sts-setup
    (tx : Tx) (let open Tx tx renaming (body to txb)) (let open TxBody txb)
    (Γ : LEnv) (let open LEnv Γ renaming (pparams to pp))
    (s : LState)
    where

    f : GovActionID × GovActionState → DepositPurpose
    f = λ (id , _) → GovActionDeposit id

    open PParams pp using (govActionDeposit)

    utxoSt : UTxOState
    utxoSt = LState.utxoSt s

    govSt : GovState
    govSt = LState.govSt s

    utxoDeps : DepositPurpose ⇀ Coin
    utxoDeps = getDeps s

    depUpdate_withIsValid≡_ : LState → Bool → DepositPurpose ⇀ Coin
    depUpdate s withIsValid≡ true = updateDeposits pp txb (getDeps s)
    depUpdate s withIsValid≡ false = getDeps s

    STS→utxoDeps≡' : {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                     → getDeps s' ≡ depUpdate s withIsValid≡ isValid
    STS→utxoDeps≡' (LEDGER-V (refl , UTXOW-UTXOS (Scripts-Yes _) , _ , _)) = refl
    STS→utxoDeps≡' (LEDGER-I (refl , UTXOW-UTXOS (Scripts-No _))) = refl

    STS→utxoDeps≡ : {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → isValid ≡ true
                    → getDeps s' ≡ updateDeposits pp txb (getDeps s)
    STS→utxoDeps≡ (LEDGER-V x) refl = trans (STS→utxoDeps≡' ((LEDGER-V x))) refl

    -- Governance Definitions and Lemmas --

    gΓ : GovEnv
    gΓ = ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ

    updateVote : GovState → GovVote → GovState
    updateVote s v = addVote s gid voter vote
      where open GovVote v

    updateVote-++ : (gs gs' : GovState) (v : GovVote)
                   → updateVote (gs ++ gs') v ≡ updateVote gs v ++ updateVote gs' v
    updateVote-++ [] gs' v = refl
    updateVote-++ (g ∷ gs) gs' v = let open ≡-Reasoning in
      begin
      updateVote (g ∷ gs ++ gs') v
        ≡⟨ cong (updateVote [ g ] v ++_) (updateVote-++ gs gs' v) ⟩
      updateVote [ g ] v ++ (updateVote gs v ++ updateVote gs' v)
        ≡⟨ ++-assoc (updateVote [ g ] v) (updateVote gs v) (updateVote gs' v) ⟩
      (updateVote [ g ] v ++ updateVote gs v) ++ updateVote gs' v
        ≡˘⟨ cong (_++ updateVote gs' v) refl ⟩
      updateVote (g ∷ gs) v ++ updateVote gs' v
        ∎

    updateVotesOnly : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateVotesOnly s [] = s
    updateVotesOnly s (inj₁ v ∷ vps) = updateVotesOnly (updateVote s v) vps
    updateVotesOnly s (inj₂ _ ∷ vps) = updateVotesOnly s vps

    mkAction : GovProposal → ℕ → GovActionID × GovActionState
    mkAction p n = let open GovProposal p in
      ActionId×ActionState (PParams.govActionLifetime pp +ᵉ GovEnv.epoch gΓ)
                           (GovEnv.txid gΓ , n) returnAddr action prevAction

    propToState : GovState → GovProposal → ℕ → GovState
    propToState s p n = s ∷ʳ mkAction p n

    propToState-++ : (gs gs' : GovState) (p : GovProposal) (n : ℕ)
                    → propToState (gs ++ gs') p n ≡ gs ++ propToState gs' p n
    propToState-++ gs gs' p n = let open ≡-Reasoning in
      begin
      propToState (gs ++ gs') p n  ≡⟨ ++-assoc gs gs' [ mkAction p n ] ⟩
      gs ++ gs' ∷ʳ mkAction p n    ≡⟨ cong (gs ++_) refl ⟩
      gs ++ propToState gs' p n    ∎

    updateGovStates : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateGovStates s [] = s
    updateGovStates s (inj₁ v ∷ vps) = updateGovStates (updateVote s v) vps
    updateGovStates s (inj₂ p ∷ vps) = updateGovStates (propToState s p (length vps)) vps

    STS→updateGovSt≡ : {govSt govSt' : GovState} (vps : List (GovVote ⊎ GovProposal))
                       → (gΓ ⊢ govSt ⇀⦇ vps ,GOV⦈ govSt')
                       → govSt' ≡ updateGovStates govSt vps

    STS→updateGovSt≡ [] (BS-base Id-nop) = refl
    STS→updateGovSt≡ (inj₁ v ∷ vps) (BS-ind (_⊢_⇀⦇_,GOV'⦈_.GOV-Vote x) x₁) = STS→updateGovSt≡ vps x₁
    STS→updateGovSt≡ (inj₂ p ∷ vps) (BS-ind (_⊢_⇀⦇_,GOV'⦈_.GOV-Propose x) x₁) = STS→updateGovSt≡ vps x₁

    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true
                 → LState.govSt s' ≡ updateGovStates govSt (txgov txb)
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) (proj₂ (proj₂ (proj₂ x)))

    --                   --
    -- CONNECTING LEMMAS --
    --                   --
    noGACerts : {cs : List DCert}(deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts {[]} _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts {c ∷ cs} deps = let
      upCD = updateCertDeposits pp cs deps
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      filterˢ isGADeposit (dom (updateCertDeposits pp (c ∷ cs) deps))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c {pp}))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upCD ∪ dom (certDeposit c {pp}))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upCD) ∪ filterˢ isGADeposit (dom (certDeposit c {pp}))
        ≈⟨ ∪-cong (noGACerts {cs} deps) (filterCD {pp} {c}) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps)
        ∎

    -- updateProposalDeposits ↔ utxoDeps ∪ proposalDepositsΔ
    updatePropDeps≡ᵉ : {props : List GovProposal}
      → dom (updateProposalDeposits props txid govActionDeposit utxoDeps)
        ≡ᵉ dom (utxoDeps ∪⁺ proposalDepositsΔ props pp txb)

    updatePropDeps≡ᵉ {[]} = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits [] txid govActionDeposit utxoDeps)  ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))                                          ≈⟨ dom∪ ⟩
      dom utxoDeps ∪ dom{X = DepositPurpose ⇀ Coin} ∅                 ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ [] pp txb)                   ∎

    updatePropDeps≡ᵉ {p ∷ ps} = let
      gaD = GovActionDeposit (txid , length ps)
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ{ps}) ≡ᵉ.refl ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom utxoDeps ∪ dom (proposalDepositsΔ ps pp txb)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom utxoDeps) (dom (proposalDepositsΔ ps pp txb)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom utxoDeps ∪ (dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom utxoDeps ∪ dom ((proposalDepositsΔ ps pp txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pp txb)
        ∎


    allGA-propDepsΔ : {props : List GovProposal}
      → filterˢ isGADeposit (dom (proposalDepositsΔ props pp txb))
        ≡ᵉ dom (proposalDepositsΔ props pp txb)

    allGA-propDepsΔ {[]} = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      filterˢ isGADeposit (dom (proposalDepositsΔ [] pp txb))  ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                    ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                        ≈˘⟨ dom∅ ⟩
      dom ((proposalDepositsΔ [] pp txb)ˢ)                     ∎

    allGA-propDepsΔ {(p ∷ ps)} = let
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      upPD = updateProposalDeposits ps txid govActionDeposit ∅
      gaD = GovActionDeposit (txid , length ps) in
      begin
      filterˢ isGADeposit (dom (proposalDepositsΔ (p ∷ ps) pp txb))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (upPD ∪⁺ ❴ gaD , govActionDeposit ❵))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upPD ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upPD) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (allGA-propDepsΔ{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ ❴ gaD ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (proposalDepositsΔ (p ∷ ps) pp txb)
        ∎

    updateVote-map-invar : (gs : GovState) (v : GovVote) → map f (updateVote gs v) ≡ map f gs
    updateVote-map-invar [] v = refl
    updateVote-map-invar (g ∷ gs) v = let open ≡-Reasoning; open GovVote v in
      begin
        map f (updateVote (g ∷ gs) v)
          ≡⟨ cong (map f){x = (addVote (g ∷ gs) gid voter vote)} refl ⟩
        map f ((addVote [ g ] gid voter vote) ++ addVote gs gid voter vote)
          ≡⟨ map-++ f (addVote [ g ] gid voter vote) (addVote gs gid voter vote) ⟩
        map f (addVote [ g ] gid voter vote) ++ map f (addVote gs gid voter vote)
          ≡⟨ cong (map f (addVote [ g ] gid voter vote) ++_) (updateVote-map-invar gs v) ⟩
        map f (addVote [ g ] gid voter vote) ++ map f gs
          ≡⟨ cong (_++ map f gs) refl ⟩
        map f (g ∷ gs)
          ∎

    updateVotesOnly-map-invar : (gs : GovState) (vps : List (GovVote ⊎ GovProposal))
                                → map f (updateVotesOnly gs vps) ≡ map f gs
    updateVotesOnly-map-invar gs [] = refl
    updateVotesOnly-map-invar gs (inj₂ p ∷ vps) = updateVotesOnly-map-invar gs vps
    updateVotesOnly-map-invar gs (inj₁ v ∷ vps) = let open ≡-Reasoning in
      begin
      map f (updateVotesOnly (updateVote gs v) vps)  ≡⟨ updateVotesOnly-map-invar ((updateVote gs v)) vps ⟩
      map f (updateVote gs v)                        ≡⟨ updateVote-map-invar gs v ⟩
      map f gs                                       ∎


    updateGovVote-++ : (gs gs' : GovState) (vps : List (GovVote ⊎ GovProposal))
      → updateGovStates (gs ++ gs') vps ≡ updateVotesOnly gs vps ++ updateGovStates gs' vps

    updateGovVote-++ gs gs' [] = refl
    updateGovVote-++ gs gs' (inj₁ v ∷ vps) = let open ≡-Reasoning in
      begin
      updateGovStates (updateVote (gs ++ gs') v) vps
        ≡⟨ cong (λ x → updateGovStates x vps) (updateVote-++ gs gs' v) ⟩
      updateGovStates ((updateVote gs v) ++ (updateVote gs' v)) vps
        ≡⟨ updateGovVote-++ ((updateVote gs v)) ((updateVote gs' v)) vps ⟩
      updateVotesOnly (updateVote gs v) vps ++ updateGovStates (updateVote gs' v) vps
        ∎

    updateGovVote-++ gs gs' (inj₂ p ∷ vps) = let open ≡-Reasoning in
      begin
      updateGovStates (propToState (gs ++ gs') p (length vps)) vps
        ≡⟨ cong (λ x → updateGovStates x vps) (propToState-++ gs gs' p (length vps)) ⟩
      updateGovStates (gs ++ propToState gs' p (length vps)) vps
        ≡⟨ updateGovVote-++ gs (propToState gs' p (length vps)) vps ⟩
      updateVotesOnly gs vps ++ updateGovStates (propToState gs' p (length vps)) vps
        ∎

    vote-updateGovStates-map-invar : (v : GovVote) (vps : List (GovVote ⊎ GovProposal)) {govSt : GovState}
      → map f (updateGovStates govSt (inj₁ v ∷ vps)) ≡ map f (updateGovStates govSt vps)

    vote-updateGovStates-map-invar v vps {[]} = refl
    vote-updateGovStates-map-invar v [] {g ∷ gs} = let open ≡-Reasoning; open GovVote v in
      begin
      map f (updateVote (g ∷ gs) v)
        ≡⟨ cong (map f){x = (addVote (g ∷ gs) gid voter vote)} refl ⟩
      map f ((addVote [ g ] gid voter vote) ++ addVote gs gid voter vote)
        ≡⟨ map-++ f (addVote [ g ] gid voter vote) (addVote gs gid voter vote) ⟩
      map f (addVote [ g ] gid voter vote) ++ map f (addVote gs gid voter vote)
        ≡⟨ cong (map f (addVote [ g ] gid voter vote) ++_) (vote-updateGovStates-map-invar v []) ⟩
      map f (g ∷ gs)
        ∎

    vote-updateGovStates-map-invar v (inj₁ v' ∷ vps) {govSt@((id , gaSt) ∷ gs)} = let open ≡-Reasoning in
      begin
      map f (updateGovStates govSt (inj₁ v ∷ (inj₁ v' ∷ vps)))
        ≡⟨ vote-updateGovStates-map-invar v' vps {updateVote govSt v} ⟩
      map f (updateGovStates (updateVote govSt v) vps)
        ≡⟨ vote-updateGovStates-map-invar v vps {govSt} ⟩
      map f (updateGovStates govSt vps)
        ≡˘⟨ vote-updateGovStates-map-invar v' vps {govSt} ⟩
      map f (updateGovStates (updateVote govSt v') vps)
        ∎

    vote-updateGovStates-map-invar v (inj₂ p ∷ vps) {govSt@((id , gaSt) ∷ gs)} = let open ≡-Reasoning in
      begin
      map f (updateGovStates (propToState (updateVote govSt v) p (length vps)) vps)
        ≡⟨ refl ⟩
      map f (updateGovStates ((updateVote govSt v) ∷ʳ mkAction p (length vps)) vps)
        ≡⟨ cong (map f) (updateGovVote-++ (updateVote govSt v) [ (mkAction p (length vps)) ] vps) ⟩
      map f ((updateVotesOnly (updateVote govSt v) vps) ++ updateGovStates [ (mkAction p (length vps)) ] vps)
        ≡⟨ map-++ f (updateVotesOnly (updateVote govSt v) vps) (updateGovStates [ (mkAction p (length vps)) ] vps) ⟩
      map f (updateVotesOnly (updateVote govSt v) vps) ++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)
        ≡⟨ cong (_++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)) (updateVotesOnly-map-invar ((updateVote govSt v)) vps) ⟩
      map f (updateVote govSt v) ++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)
        ≡⟨ cong (_++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)) (updateVote-map-invar govSt v) ⟩
      map f govSt ++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)
        ≡˘⟨ cong (_++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)) (updateVotesOnly-map-invar govSt vps) ⟩
      map f (updateVotesOnly govSt vps) ++ map f (updateGovStates [ (mkAction p (length vps)) ] vps)
        ≡˘⟨ map-++ f (updateVotesOnly govSt vps) (updateGovStates [ (mkAction p (length vps)) ] vps) ⟩
      map f ((updateVotesOnly govSt vps) ++ (updateGovStates [ (mkAction p (length vps)) ] vps))
        ≡˘⟨ cong (map f) (updateGovVote-++ govSt [ (mkAction p (length vps)) ] vps) ⟩
      map f (updateGovStates (propToState govSt p (length vps)) vps)
        ∎

    vote-updateGovStates-map-invar++ : (vs : List GovVote) (ps : List GovProposal) {gs : GovState}
       → map f (updateGovStates gs (map inj₁ vs ++ map inj₂ ps)) ≡ map f (updateGovStates gs (map inj₂ ps))
    vote-updateGovStates-map-invar++ [] ps {gs} = refl
    vote-updateGovStates-map-invar++ (v ∷ vs) ps {gs} = let open ≡-Reasoning in
      begin
      map f (updateGovStates (updateVote gs v) (map inj₁ vs ++ map inj₂ ps))
        ≡⟨ vote-updateGovStates-map-invar++ vs ps ⟩
      map f (updateGovStates (updateVote gs v) (map inj₂ ps))
        ≡⟨ vote-updateGovStates-map-invar v (map inj₂ ps) ⟩
      map f (updateGovStates gs (map inj₂ ps))
        ∎

    updateGovStates≡ : (vps : List (GovVote ⊎ GovProposal)) {govSt : GovState}
       → map f (updateGovStates govSt vps) ≡ map f (govSt ++ updateGovStates [] vps)

    updateGovStates≡ [] {govSt} = cong (map f) (sym (++-identityʳ govSt))

    updateGovStates≡ (inj₁ v ∷ vps) {govSt} = let open ≡-Reasoning in
      begin
      map f (updateGovStates (updateVote govSt v) vps)
        ≡⟨ vote-updateGovStates-map-invar  v vps ⟩
      map f (updateGovStates govSt vps)
        ≡⟨ updateGovStates≡ vps ⟩
      map f (govSt ++ updateGovStates [] vps)
        ∎

    updateGovStates≡ (inj₂ p ∷ vps) {govSt} = let open ≡-Reasoning in
      begin
      map f (updateGovStates (propToState govSt p (length vps)) vps)
        ≡⟨ updateGovStates≡ vps ⟩
      map f ((propToState govSt p (length vps)) ++  updateGovStates [] vps)
        ≡⟨ cong (λ u → map f (u ++  updateGovStates [] vps)) refl ⟩
      map f ((govSt ++ [ mkAction p (length vps) ]) ++  updateGovStates [] vps)
        ≡⟨ cong (map f) (++-assoc govSt [ mkAction p (length vps) ] (updateGovStates [] vps)) ⟩
      map f (govSt ++ [ mkAction p (length vps) ] ++  updateGovStates [] vps)
        ≡⟨ cong (λ x → map f (govSt ++ x ++  updateGovStates [] vps)) refl ⟩
      map f (govSt ++ propToState [] p (length vps) ++  updateGovStates [] vps)
        ≡⟨ map-++ f govSt (propToState [] p (length vps) ++ updateGovStates [] vps) ⟩
      map f govSt ++ (map f (propToState [] p (length vps) ++ updateGovStates [] vps))
        ≡˘⟨ cong ((map f govSt) ++_) (updateGovStates≡ vps) ⟩
      map f govSt ++ map f (updateGovStates (propToState [] p (length vps)) vps)
        ≡˘⟨ map-++ f govSt (updateGovStates (propToState [] p (length vps)) vps) ⟩
      map f (govSt ++ updateGovStates (propToState [] p (length vps)) vps)
        ∎

    utxo-govst-connex : {props : List GovProposal}
      → dom (proposalDepositsΔ props pp txb) ≡ᵉ fromList (map f (updateGovStates [] (map inj₂ props)))
    utxo-govst-connex {[]} = dom∅

    utxo-govst-connex {p ∷ ps} = let
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      n = length ps
      n' = length{A = GovVote ⊎ GovProposal} (map inj₂ ps) in
      begin
      dom (proposalDepositsΔ (p ∷ ps) pp txb)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit ∅) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (utxo-govst-connex{ps}) dom-single≡single ⟩
      fromList (map f (updateGovStates [] (map inj₂ ps))) ∪ fromList [ GovActionDeposit (txid , length ps) ]
        ≈⟨ ∪++ ⟩
      fromList (map f (updateGovStates [] (map inj₂ ps)) ++ map f [ (mkAction p (length ps)) ])
        ≈⟨ ≡ᵉ.reflexive (cong fromList (sym (map-++ f (updateGovStates [] (map inj₂ ps)) [ (mkAction p (length ps)) ]))) ⟩
      fromList (map f ((updateGovStates [] (map inj₂ ps)) ∷ʳ (mkAction p (length ps))))
        ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ f (updateGovStates [] (map inj₂ ps)) [ mkAction p n ])) ⟩
      fromList ((map f (updateGovStates [] (map inj₂ ps)) ++ map f [ mkAction p n ]))
        ≈˘⟨ ∪++ ⟩
      fromList (map f (updateGovStates [] (map inj₂ ps))) ∪ fromList (map f [ mkAction p n ])
        ≈˘⟨ ∪-comm (fromList (map f [ mkAction p n ])) (fromList (map f (updateGovStates [] (map inj₂ ps)))) ⟩
      fromList (map f [ mkAction p n ]) ∪ fromList (map f (updateGovStates [] (map inj₂ ps)))
        ≈⟨ ∪++ ⟩
      fromList (map f [ mkAction p n ] ++ map f (updateGovStates [] (map inj₂ ps)))
        ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ f [ mkAction p n ] (updateGovStates [] (map inj₂ ps)))) ⟩
      fromList (map f ([ mkAction p n ] ++ updateGovStates [] (map inj₂ ps)))
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (cong (λ x → map f ([ mkAction p x ] ++ updateGovStates [] (map inj₂ ps))) (length-map inj₂ ps))) ⟩
      fromList (map f ([ mkAction p n' ] ++ updateGovStates [] (map inj₂ ps)))
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (updateGovStates≡ (map inj₂ ps))) ⟩
      fromList (map f (updateGovStates [] (inj₂ p ∷ map inj₂ ps)))
        ∎


  module _
    (tx : Tx) (let open Tx tx renaming (body to txb)) (let open TxBody txb)
    (Γ : LEnv) (let open LEnv Γ renaming (pparams to pp))
    (s : LState)
    where

    -- MAIN THEOREM --
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'

    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ utxoSt' , govSt' , certState' ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid _ _ GOV-sts) aprioriMatch =
      let
        open Ledger-sts-setup tx Γ s;  open PParams pp using (govActionDeposit)
        utxoDeps' = getDeps s'
        UPD = updateProposalDeposits txprop txid (PParams.govActionDeposit pp) utxoDeps
        govSt' = LState.govSt s'
        open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      in
      begin
      filterˢ isGADeposit (dom utxoDeps')
        ≈⟨ filter-pres-≡ᵉ (≡ᵉ.reflexive (cong dom (STS→utxoDeps≡ utxosts tx-valid))) ⟩
      filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
        ≈⟨ noGACerts{txcerts} UPD ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ{txprop}) ⟩
      filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))
        ≈⟨ filter-hom-∪ ⟩
      (filterˢ isGADeposit (dom utxoDeps)) ∪ (filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb)))
        ≈⟨ ∪-cong ≡ᵉ.refl (allGA-propDepsΔ{txprop}) ⟩
      (filterˢ isGADeposit (dom utxoDeps)) ∪ (dom ((proposalDepositsΔ txprop pp txb)ˢ))
        ≈⟨ ∪-cong aprioriMatch (utxo-govst-connex{txprop}) ⟩
      fromList (map f govSt) ∪ fromList (map f (updateGovStates [] (map inj₂ txprop)))
        ≈˘⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive (cong fromList (vote-updateGovStates-map-invar++ txvote txprop))) ⟩
      fromList (map f govSt) ∪ fromList (map f (updateGovStates [] (txgov txb)))
        ≈⟨ ∪++ ⟩
      fromList ((map f govSt) ++ (map f (updateGovStates [] (txgov txb))))
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ f govSt (updateGovStates [] (txgov txb)))) ⟩
      fromList (map f (govSt ++ updateGovStates [] (txgov txb)))
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (updateGovStates≡ (txgov txb))) ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) (updateGovStates govSt (txgov txb)))
        ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ (map (λ (id , _) → GovActionDeposit id)) ) (STS→GovSt≡ utxosts tx-valid)) ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt')
        ∎
