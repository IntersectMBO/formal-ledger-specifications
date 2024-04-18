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
open import Data.List.Relation.Unary.Any using (here; there )

open import Data.Bool.Properties    using (¬-not)
open import Data.List using (filter)
open import Data.List.Properties    using (length-map; ++-identityʳ; ++-conicalʳ; map-++; ++-assoc)
open import Data.List.Ext.Properties using (map-∷ʳ; frominj₁; ∈-frominj₁; frominj₂; ∈-frominj₂; map-[])
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary using (IsEquivalence)
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

-- supporting functions and lemmas ----------------------------------
f : GovActionID × GovActionState → DepositPurpose
f = λ (id , _) → GovActionDeposit id

isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
  ≡ᵉ fromList (map (λ pr → GovActionDeposit (proj₁ pr)) govSt)

instance _ = +-0-monoid

getDeps : LState → DepositPurpose ⇀ Coin
getDeps s = UTxOState.deposits (LState.utxoSt s)


module _  -- ASSUMPTIONS (TODO: eliminate these) --
  {- 1 -} {filterCD   : ∀ {pp} {c} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  {- 2 -} {filterCR   : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                        → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where

  module Ledger-sts-setup
    (tx : Tx) (let open Tx tx renaming (body to txb)) (let open TxBody txb)
    (Γ : LEnv) (let open LEnv Γ renaming (pparams to pp))
    (s : LState)
    where

    utxoSt : UTxOState
    utxoSt = LState.utxoSt s
    govSt : GovState
    govSt = LState.govSt s

    depUpdate_withIsValid≡_ : LState → Bool → DepositPurpose ⇀ Coin
    depUpdate s withIsValid≡ true = updateDeposits pp txb (getDeps s)
    depUpdate s withIsValid≡ false = getDeps s

    STS→utxoDeps≡' : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                    → getDeps s' ≡ depUpdate s withIsValid≡ isValid

    STS→utxoDeps≡' {.(⟦ utxoSt' , _ , _ ⟧ˡ)} (LEDGER-V {utxoSt' = utxoSt'}
      (val , UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts) , _ , _)) =
        trans (⊢utxo-valid UTXOS-sts) (sym (cong (depUpdate s withIsValid≡_) val))
          where
          ⊢utxo-valid : record { slot = slot ; pparams = pp } ⊢ LState.utxoSt s ⇀⦇ tx ,UTXOS⦈ utxoSt'
                        → UTxOState.deposits utxoSt' ≡ updateDeposits pp txb (getDeps s)
          ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
          ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = contradiction (trans (sym val) (proj₂ u)) (λ ())

    STS→utxoDeps≡' {.(⟦ utxoSt' , _ , _ ⟧ˡ)} (LEDGER-I {utxoSt' = utxoSt'}
      (¬val , UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts))) =
        trans (⊢utxo-invalid UTXOS-sts) (sym (cong (depUpdate s withIsValid≡_) ¬val))
          where
          ⊢utxo-invalid : record { slot = slot ; pparams = pp } ⊢ LState.utxoSt s ⇀⦇ tx ,UTXOS⦈ utxoSt'
                        → UTxOState.deposits utxoSt' ≡ getDeps s
          ⊢utxo-invalid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) = contradiction (trans (sym ¬val) (proj₂ u)) (λ ())
          ⊢utxo-invalid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) = refl

    STS→utxoDeps≡ᵉ' : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                    → dom (getDeps s') ≡ᵉ dom (depUpdate s withIsValid≡ isValid)
    STS→utxoDeps≡ᵉ' utxos-sts = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (STS→utxoDeps≡' utxos-sts))


    STS→utxoDeps≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                    → isValid ≡ true → getDeps s' ≡ updateDeposits pp txb (getDeps s)
    STS→utxoDeps≡ utxo-sts txvalid = trans (STS→utxoDeps≡' utxo-sts) (cong (depUpdate s withIsValid≡_) txvalid)


    STS→utxoDeps≡ᵉ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                    → isValid ≡ true → dom (getDeps s') ≡ᵉ dom (updateDeposits pp txb (getDeps s))
    STS→utxoDeps≡ᵉ utxo-sts txvalid = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (STS→utxoDeps≡ utxo-sts txvalid))


    -- Governance Functions and Lemmas --

    gΓ : GovEnv
    gΓ = ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ

    updateVote : GovState → GovVote → GovState  -- new --
    updateVote s v = addVote s gid voter vote
      where open GovVote v

    mkAction : GovProposal → ℕ → GovActionID × GovActionState
    mkAction p n = let open GovProposal p in
      ActionId×ActionState (PParams.govActionLifetime pp +ᵉ GovEnv.epoch gΓ)
                           (GovEnv.txid gΓ , n) returnAddr action prevAction

    propToState : GovState → GovProposal → ℕ → GovState
    propToState s p n = s ∷ʳ mkAction p n

    updateGovStates : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateGovStates s [] = s
    updateGovStates s (inj₁ v ∷ vps) = updateGovStates (updateVote s v) vps
    updateGovStates s (inj₂ p ∷ vps) = updateGovStates (propToState s p (length vps)) vps

    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

    STS→updateGovSt≡ : {govSt govSt' : GovState} (vps : List (GovVote ⊎ GovProposal))
                       → (gΓ ⊢ govSt ⇀⦇ vps ,GOV⦈ govSt')
                       → govSt' ≡ updateGovStates govSt vps

    STS→updateGovSt≡ [] (BS-base Id-nop) = refl
    STS→updateGovSt≡ (inj₁ v ∷ vps) (BS-ind (_⊢_⇀⦇_,GOV'⦈_.GOV-Vote x) x₁) = STS→updateGovSt≡ vps x₁
    STS→updateGovSt≡ (inj₂ p ∷ vps) (BS-ind (_⊢_⇀⦇_,GOV'⦈_.GOV-Propose x) x₁) = STS→updateGovSt≡ vps x₁

    govUpdate_withIsValid≡_ : LState → Bool → GovState
    govUpdate s withIsValid≡ true = updateGovStates govSt (txgov txb)
    govUpdate s withIsValid≡ false = govSt


    STS→GovSt≡' : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → LState.govSt s' ≡ govUpdate s withIsValid≡ isValid

    STS→GovSt≡' {⟦ _ , govSt' , _ ⟧ˡ} (LEDGER-V x) = let open ≡-Reasoning in
      begin
      govSt'                             ≡⟨ STS→updateGovSt≡ (txgov txb) (proj₂ (proj₂ (proj₂ x))) ⟩
      updateGovStates govSt (txgov txb)  ≡˘⟨ cong (govUpdate s withIsValid≡_) (proj₁ x) ⟩
      govUpdate s withIsValid≡ isValid   ∎

    STS→GovSt≡' {⟦ _ , .govSt , _ ⟧ˡ} (LEDGER-I x) = sym (cong (govUpdate s withIsValid≡_) (proj₁ x))

    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true
                 → LState.govSt s' ≡ updateGovStates govSt (txgov txb)
    STS→GovSt≡ utxo-sts txvalid = trans (STS→GovSt≡' utxo-sts) (cong (govUpdate s withIsValid≡_) txvalid)


    --                   --
    -- CONNECTING LEMMAS --
    --                   --
    noGACerts : {cs : List DCert}(deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom ((updateCertDeposits pp cs deps)ˢ)) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
    noGACerts {[]} _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts {c ∷ cs} deps = let
      upCD = updateCertDeposits pp cs deps
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      in begin
        filterˢ isGADeposit (dom ((updateCertDeposits pp (c ∷ cs) deps)ˢ))
          ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
        filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pp})ˢ))
          ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
        filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pp})ˢ))
          ≈⟨ filter-hom-∪ ⟩
        filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ))
          ≈⟨ ∪-cong (noGACerts {cs} deps) (filterCD {pp} {c}) ⟩
        filterˢ isGADeposit (dom (deps ˢ)) ∪ ∅
          ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom (deps ˢ))) ⟩
        filterˢ isGADeposit (dom (deps ˢ))
          ∎

--------------------------------------------------------
-- ** Proof that govDepsMatch is a LEDGERS invariant.

-- MAIN THEOREM ----------------------------------------

    -- MAIN THEOREM (in valid tx case) --
    MainTheorem : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
      → isValid ≡ true
      → filterˢ isGADeposit (dom (getDeps s))  ≡ᵉ fromList (map (λ gaid → GovActionDeposit (proj₁ gaid)) govSt)
      → filterˢ isGADeposit (dom (getDeps s')) ≡ᵉ fromList (map (λ gaid → GovActionDeposit (proj₁ gaid)) (LState.govSt s'))
    MainTheorem {s'} utxosts tx-valid aprioriMatch =
      let
        utxoDeps = getDeps s
        utxoDeps' = getDeps s'
        UPD = updateProposalDeposits txprop txid (PParams.govActionDeposit pp) utxoDeps
        govSt' = LState.govSt s'
        open PParams pp using (govActionDeposit)
        open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      in begin
        filterˢ isGADeposit (dom utxoDeps')
          ≈⟨ filter-pres-≡ᵉ (STS→utxoDeps≡ᵉ utxosts tx-valid) ⟩
        filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
          ≈⟨ ≡ᵉ.refl ⟩
        filterˢ isGADeposit (dom (updateCertDeposits pp txcerts UPD))
          ≈⟨ noGACerts{txcerts} UPD ⟩
        filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
          ≈⟨ {!!} ⟩
        filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
        filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-hom-∪ ⟩
        (filterˢ isGADeposit (dom utxoDeps)) ∪ (filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb)))
          ≈⟨ ∪-cong ≡ᵉ.refl {!!} ⟩
        (filterˢ isGADeposit (dom utxoDeps)) ∪ (dom ((proposalDepositsΔ txprop pp txb)ˢ))
          ≈⟨ {!!} ⟩
        fromList (map (λ (id , _) → GovActionDeposit id) (updateGovStates govSt (txgov txb)))
          ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ (map (λ (id , _) → GovActionDeposit id)) ) (STS→GovSt≡ utxosts tx-valid)) ⟩
        fromList (map (λ (id , _) → GovActionDeposit id) govSt')
          ∎


  module _
    (tx : Tx) (let open Tx tx renaming (body to txb)) (let open TxBody txb)
    (Γ : LEnv) (let open LEnv Γ renaming (pparams to pp))
    (s : LState)
    where

    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch
      (LEDGER-I⋯ tx-not-valid
        (UTXOW-inductive⋯ _ _ _ _ _
          (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)))
      aprioriMatch = case UTXOS-sts of λ where
        (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) → contradiction (trans (sym $ proj₂ u) tx-not-valid) (λ ())
        (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) → aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ utxoSt' , govSt' , certState' ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid
        (UTXOW-inductive⋯ _ _ _ _ _
          (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)) _
        GOV-sts)
      aprioriMatch with (txgov txb) in pf | GOV-sts
    ... | inj₁ v ∷ vps | BS-ind (GOV-Vote x) govSt₁→₂ = {!!}
    ... | inj₂ p ∷ vps | BS-ind {.(⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ)} (GOV-Propose x) govSt₁→₂ = {!!}
    ... | []           | BS-base Id-nop =
      let
       open Ledger-sts-setup tx Γ s;  open PParams pp using (govActionDeposit)
       open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
       utxoDeps = UTxOState.deposits utxoSt
       utxoDeps' = UTxOState.deposits utxoSt'
       UPD = updateProposalDeposits txprop txid govActionDeposit utxoDeps
      in begin
        filterˢ isGADeposit (dom utxoDeps')
          ≈⟨ filter-pres-≡ᵉ (STS→utxoDeps≡ᵉ utxosts tx-valid) ⟩
        filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
          ≈⟨ ≡ᵉ.reflexive (cong (filterˢ isGADeposit) refl) ⟩
        filterˢ isGADeposit (dom (updateCertDeposits pp txcerts UPD))
          ≈⟨ noGACerts{txcerts} UPD ⟩
        filterˢ isGADeposit (dom UPD)
          ≈⟨ ≡ᵉ.reflexive (cong (λ u → filterˢ isGADeposit (dom u))
             (cong (λ x → updateProposalDeposits x txid (PParams.govActionDeposit pp) utxoDeps)
                 (map-[] txprop (++-conicalʳ (map inj₁ txvote) (map inj₂ txprop) pf)))) ⟩
        filterˢ isGADeposit (dom (utxoDeps))
          ≈⟨ aprioriMatch ⟩
        fromList (map (λ (id , _) → GovActionDeposit id) govSt)
          ∎
