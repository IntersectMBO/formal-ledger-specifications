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
-- open import Ledger.GovernanceActions -- (gs : _) (open GovStructure gs)
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs
open import Data.List.Relation.Unary.Any using (here; there )

open import Data.Bool.Properties    using (¬-not)
open import Data.List using (filter)
open import Data.List.Properties    using (length-map; ++-identityʳ; ++-conicalʳ)
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

f : GovActionID × GovActionState → DepositPurpose
f (id , _) = GovActionDeposit id

isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (utxoSt .deposits )) ≡ᵉ fromList (map (λ pr → GovActionDeposit (proj₁ pr)) govSt)
  where open UTxOState using (deposits)

updateVotes : GovState → List (GovVote) → GovState
updateVotes s [] = s
updateVotes s (v ∷ vs) = updateVotes (addVote s gid voter vote) vs
  where open GovVote v

instance _ = +-0-monoid

module _

  {gΓ : GovEnv}

  -- ASSUMPTIONS (TODO: eliminate these) --
  {- 1 -} {dom-single : ∀ {A} {B} {x : A} {y : B} → dom (❴ x , y ❵ ˢ) ≡ ❴ x ❵ }
  {- 2 -} {filterCD   : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  {- 3 -} {filterGA   : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
  {- 4 -} {filterCR   : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                            → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where

  module Ledger-sts-setup (txb : TxBody)(Γ : LEnv)(pp : PParams)(utxoSt utxoSt' : UTxOState) where

    open UTxOState using (deposits) public
    open TxBody txb public
    open LEnv Γ public; open PParams pp public

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})


    propsToState : List (GovProposal) → GovState
    propsToState [] = []
    propsToState (p ∷ ps) = (propsToState ps) ∷ʳ newAction
      where
      open GovProposal p
      newAction : GovActionID × GovActionState
      newAction = ActionId×ActionState (govActionLifetime +ᵉ GovEnv.epoch gΓ) (txid , length ps) returnAddr action prevAction

    updateGovStates : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateGovStates s vps = updateVotes s (frominj₁ vps) ++ propsToState (frominj₂ vps)

    noGACerts : (pp : PParams)(cs : List DCert)(deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom ((updateCertDeposits pp cs deps)ˢ)) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
    noGACerts _ [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts pp (c ∷ cs) deps =
      let
        upCD = updateCertDeposits pp cs deps
        open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      in
      begin
      filterˢ isGADeposit (dom ((updateCertDeposits pp (c ∷ cs) deps)ˢ))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
      filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pp})ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pp})ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ))
        ≈⟨ ∪-cong (noGACerts pp cs deps) (filterCD {c} {pp}) ⟩
      filterˢ isGADeposit (dom (deps ˢ)) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom (deps ˢ))) ⟩
      filterˢ isGADeposit (dom (deps ˢ))
        ∎

  LEDGER-govDepsMatch : LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch

  LEDGER-govDepsMatch
    (LEDGER-I⋯ tx-not-valid (UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)))
    aprioriMatch = case UTXOS-sts of λ where
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) → contradiction (trans (sym $ proj₂ u) tx-not-valid) (λ ())
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) → aprioriMatch

  LEDGER-govDepsMatch
    Γ@{⟦ _ , _ , pp , _ ⟧ˡᵉ}
    s@{⟦ utxoSt , govSt , _ ⟧ˡ}
    tx@{record { body = txb }}
    s'@{⟦ utxoSt' , govSt' , _ ⟧ˡ}
    (LEDGER-V⋯ tx-valid
      (UTXOW-inductive⋯ _ _ _ _ _
        (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)) _

      GOV-sts) -- ⟦ txid , _ , .pp , _ , _ ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'

    aprioriMatch with txgov txb in p | GOV-sts

  ... | inj₁ v ∷ vps | BS-ind {s' = .(addVote govSt _ _ _)} (GOV-Vote x) govSt₁→₂ = {!!}

    where
    open Ledger-sts-setup txb Γ pp utxoSt utxoSt'

    updateGovSt≡ : govSt' ≡ updateGovStates govSt (inj₁ v ∷ vps)
    updateGovSt≡ = {!!}

    updateGovSt≡ᵉ : fromList (map f govSt') ≡ᵉ fromList (map f (updateGovStates govSt (inj₁ v ∷ vps)))
    updateGovSt≡ᵉ = ≡ᵉ.reflexive (cong (fromList ∘ map f) updateGovSt≡)


  ... | inj₂ p ∷ ps | BS-ind {s' = .(govSt ∷ʳ (ActionId×ActionState _ (TxBody.txid txb , length ps) _ _ _))} (GOV-Propose x) govSt₁→₂ = {!!}


  ... | []          | BS-base Id-nop = goal
    where
    open Ledger-sts-setup txb Γ pp utxoSt utxoSt'

    updateGovSt≡ᵉ : fromList (map f govSt') ≡ᵉ fromList (map f (updateGovStates govSt (txgov txb)))
    updateGovSt≡ᵉ = ≡ᵉ.reflexive (cong (fromList ∘ (map f)) updateGovSt≡)
      where
      open ≡-Reasoning
      updateGovSt≡ : govSt' ≡ updateGovStates govSt (txgov txb)
      updateGovSt≡ = begin
        govSt'                             ≡˘⟨ ++-identityʳ govSt ⟩
        updateGovStates govSt []           ≡˘⟨ cong (updateGovStates govSt) p ⟩
        updateGovStates govSt (txgov txb)  ∎

    updateDeps-dom≡ᵉ : dom utxoDeps' ≡ᵉ dom (updateDeposits pp txb utxoDeps)
    updateDeps-dom≡ᵉ = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (⊢utxo-valid UTXOS-sts))
      where
      ⊢utxo-valid : record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
                    → utxoDeps' ≡ (updateDeposits pp txb utxoDeps)
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = contradiction (trans (sym tx-valid) (proj₂ u)) (λ ())

    noProps : updateProposalDeposits txprop txid govActionDeposit utxoDeps ≡ utxoDeps
    noProps = cong (λ x → updateProposalDeposits x txid govActionDeposit utxoDeps)
                   (map-[] txprop (++-conicalʳ (map inj₁ txvote) (map inj₂ txprop) p))

    open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

    goal : filterˢ isGADeposit (dom (utxoDeps' )) ≡ᵉ fromList (map f govSt')
    goal = let UPD = updateProposalDeposits txprop txid govActionDeposit utxoDeps in
      begin
      filterˢ isGADeposit (dom utxoDeps')
        ≈⟨ filter-pres-≡ᵉ updateDeps-dom≡ᵉ ⟩
      filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
        ≈⟨ ≡ᵉ.reflexive (cong (filterˢ isGADeposit) refl) ⟩
      filterˢ isGADeposit (dom (updateCertDeposits pp txcerts UPD))
        ≈⟨ noGACerts pp txcerts UPD ⟩
      filterˢ isGADeposit (dom UPD)
        ≈⟨ ≡ᵉ.reflexive (cong (λ u → filterˢ isGADeposit (dom u)) noProps) ⟩
      filterˢ isGADeposit (dom (utxoDeps))
        ≈⟨ aprioriMatch ⟩
      fromList (map f govSt)
        ∎
