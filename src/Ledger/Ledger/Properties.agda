{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract
import Ledger.Certs

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Certs.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

open import Data.Bool.Properties using (¬-not)
open import Data.List.Base using (filter)
open import Data.List.Ext using (∈ˡ-map-filter)
open import Data.List.Ext.Properties using (_×-cong_)
open import Data.List.Properties using (++-identityʳ; map-++; ++-assoc; length-++)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import Data.Product.Base using (swap)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm; +-assoc)
open import Relation.Binary using (IsEquivalence)
open import Relation.Unary using (Decidable)

open import Tactic.GenError using (genErrors)

import Function.Related.Propositional as R

import Relation.Binary.Reasoning.Setoid as SetoidReasoning

instance _ = +-0-monoid

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
    computeGov   = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

    module go
      (Γ : LEnv)   (let open LEnv Γ)
      (s : LState) (let open LState s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls , _ ⟧
      govΓ : CertState → GovEnv
      govΓ = λ certState → ⟦ txid , epoch slot , pparams , ppolicy , enactState , certState , _ ⟧

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← computeCerts certΓ certState txcerts
          let wdrlCreds = mapˢ RwdAddr.stake (dom txwdrls)
          wdrlsCheck ← case ¿ filterˢ isKeyHash wdrlCreds ⊆ dom (certSt' .CertState.dState .DState.voteDelegs) ¿ of λ where
            (yes q) → success q
            (no ¬q) → failure (genErrors ¬q)
          (govSt'  , govStep)  ← computeGov (govΓ certSt') (rmOrphanDRepVotes certSt' govSt) (txgov txb)
          success (_ , LEDGER-V⋯ p utxoStep certStep wdrlsCheck govStep)
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ledgerSt (LEDGER-V⋯ v utxoStep certStep u govStep)
        with isValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certState txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom txwdrls)) ⊆ dom (certSt' .CertState.dState .DState.voteDelegs) ¿ (λ { x → u x })
      ... | (_ , p)
        with computeGov (govΓ certSt') (rmOrphanDRepVotes certSt' govSt ) (txgov txb) | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ certSt') _ _ _ govStep
      ... | success (govSt' , _) | refl rewrite p = refl
      completeness ledgerSt (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s) + getCoin (LState.certState s)

-- ** Proof that LEDGER preserves values.

FreshTx : Tx → LState → Type
FreshTx tx ls = txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
  where open Tx tx; open TxBody body; open UTxOState; open LState

module _
  (tx : Tx) (let open Tx tx; open TxBody body)
  ( indexedSumᵛ'-∪  :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → disjoint (dom m) (dom m') → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
  ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
  ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
  ( getCoin-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                       → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
  ( ≡ᵉ-getCoinˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                       → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
  where

  private variable
    Γ : LEnv
    l : List Tx

  pattern UTXO-induction r = UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ r _ _ _

  LEDGER-pov :  {s s' : LState} → FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                → getCoin s ≡ getCoin s'
  LEDGER-pov
    {s  = s}
    {s' = s'}
    h (LEDGER-V {utxoSt' = utxoSt''} ( valid , UTXOW⇒UTXO st@(UTXO-induction r) , h' , _ )) =
    let
      open LState s
      open CertState certState
      open LState s' renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certState')
      open CertState certState'
      open ≡-Reasoning
      open CERTSpov indexedSumᵛ'-∪ sumConstZero res-decomp  getCoin-cong ≡ᵉ-getCoinˢ r
      -- certState  = ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
      -- certState' = ⟦ stᵈ' , stᵖ' , stᵍ' ⟧ᶜˢ
      zeroMap    = constMap (mapˢ RwdAddr.stake (dom txwdrls)) 0
    in
    begin
      getCoin utxoSt + getCoin certState
        ≡⟨ cong (getCoin utxoSt +_) (CERTS-pov h') ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txwdrls)
        ≡˘⟨ cong (λ u → getCoin utxoSt + (getCoin certState' + φ (getCoin txwdrls , u))) valid ⟩
      getCoin utxoSt + (getCoin certState' + φ (getCoin txwdrls , isValid))
        ≡⟨ cong (getCoin utxoSt +_) (+-comm (getCoin certState') _) ⟩
      getCoin utxoSt + (φ (getCoin txwdrls , isValid) + getCoin certState')
        ≡˘⟨ +-assoc (getCoin utxoSt) (φ (getCoin txwdrls , isValid)) (getCoin certState') ⟩
      getCoin utxoSt + φ (getCoin txwdrls , isValid) + getCoin certState'
        ≡⟨ cong (_+ getCoin certState') (pov h st) ⟩
      getCoin utxoSt' + getCoin certState'
        ∎

  LEDGER-pov  {s = s}
              {s' = s'}
              h (LEDGER-I {utxoSt' = utxoSt''} (invalid , UTXOW⇒UTXO st)) =
    let
        open LState s
        open CertState certState
        open LState s' renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certState')
        open UTxOState utxoSt
        open UTxOState utxoSt' renaming (utxo to utxo'; fees to fees'
                                        ; deposits to deposits'; donations to donations') in
    cong (_+ rewardsBalance dState)
    ( begin
      getCoin ⟦ utxo , fees , deposits , donations ⟧
        ≡˘⟨ +-identityʳ (getCoin ⟦ utxo , fees , deposits , donations ⟧) ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + 0
        ≡˘⟨ cong (λ x → getCoin ⟦ utxo , fees , deposits , donations ⟧ + φ(getCoin txwdrls , x)) invalid ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + φ(getCoin txwdrls , isValid) ≡⟨ pov h st ⟩
      getCoin ⟦ utxo' , fees' , deposits' , donations' ⟧ ∎ )
    where open ≡-Reasoning


-- ** Proof that the set equality `govDepsMatch` (below) is a LEDGER invariant.

-- Mapping a list of `GovActionID × GovActionState`s to a list of
-- `DepositPurpose`s is so common, we give it a name `dpMap`;
-- it's equivalent to `map (λ (id , _) → GovActionDeposit id)`.
dpMap : GovState → List DepositPurpose
dpMap = map (GovActionDeposit ∘ proj₁)

isGADeposit : DepositPurpose → Type
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false

govDepsMatch : LState → Type
govDepsMatch ledgerSt =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt)) ≡ᵉ fromList (dpMap govSt)
  where
    open LState ledgerSt

module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})
pattern UTXOW-UTXOS x = UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x)
open Equivalence

filterGA : ∀ txid n → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵
proj₁ (filterGA txid n) {a} x = (proj₂ (from ∈-filter x)) where open Equivalence
proj₂ (filterGA txid n) {a} x = to ∈-filter (ξ (from ∈-singleton x) , x)
  where
  ξ : a ≡ GovActionDeposit (txid , n) → isGADeposit a
  ξ refl = refl

module LEDGER-PROPS (tx : Tx) (Γ : LEnv) (s : LState) where
  open Tx tx renaming (body to txb); open TxBody txb
  open LEnv Γ renaming (pparams to pp)
  open PParams pp using (govActionDeposit)
  open LState s
  open CertState certState
  open DState dState

  -- initial utxo deposits
  utxoDeps : DepositPurpose ⇀ Coin
  utxoDeps = UTxOState.deposits (LState.utxoSt s)

  -- GovState definitions and lemmas --
  mkAction : GovProposal → ℕ → GovActionID × GovActionState
  mkAction p n = let open GovProposal p in
    mkGovStatePair
      (PParams.govActionLifetime pp +ᵉ epoch slot)
      (txid , n) returnAddr action prevAction

  -- update GovState with a proposal
  propUpdate : GovState → GovProposal → ℕ → GovState
  propUpdate s p n = insertGovAction s (mkAction p n)

  -- update GovState with a vote
  voteUpdate : GovState → GovVote → GovState
  voteUpdate s v = addVote s gid voter vote
    where open GovVote v

  -- update GovState with a list of votes and proposals
  updateGovStates : List (GovVote ⊎ GovProposal) → ℕ → GovState → GovState
  updateGovStates [] _ s = s
  updateGovStates (inj₁ v ∷ vps) k s = updateGovStates vps (suc k) (voteUpdate s v)
  updateGovStates (inj₂ p ∷ vps) k s = updateGovStates vps (suc k) (propUpdate s p k)

  -- updateGovStates faithfully represents a step of the LEDGER sts
  STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
               → isValid ≡ true → LState.govSt s' ≡ updateGovStates (txgov txb) 0 (rmOrphanDRepVotes (LState.certState s') (LState.govSt s))
  -- STS→GovSt≡ (LEDGER-V ( _ , _ , _ , x )) refl = STS→updateGovSt≡ (txgov txb) 0 x
  STS→GovSt≡ (LEDGER-V (_ , _ , _ , _ , x)) refl = STS→updateGovSt≡ (txgov txb) 0 x
    where
    STS→updateGovSt≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {certSt : CertState} {govSt govSt' : GovState}
      → (_⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{_⊢_⇀⦇_,GOV⦈_} (⟦ txid , epoch slot , pp , ppolicy , enactState , certSt , dom rewards ⟧ , k) govSt vps govSt')
      → govSt' ≡ updateGovStates vps k govSt
    STS→updateGovSt≡ [] _ (BS-base Id-nop) = refl
    STS→updateGovSt≡ (inj₁ v ∷ vps) k (BS-ind (GOV-Vote x) h)
      = STS→updateGovSt≡ vps (suc k) h
    STS→updateGovSt≡ (inj₂ p ∷ vps) k (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ vps (suc k) h

  opaque
    unfolding addVote

    dpMap-rmOrphanDRepVotes : ∀ certState govSt → dpMap (rmOrphanDRepVotes certState govSt) ≡ dpMap govSt
    dpMap-rmOrphanDRepVotes certState govSt = sym (fmap-∘ govSt) -- map proj₁ ∘ map (map₂ _) ≡ map (proj₁ ∘ map₂ _) ≡ map proj₁

module SetoidProperties (tx : Tx) (Γ : LEnv) (s : LState) where
  open Tx tx renaming (body to txb); open TxBody txb
  open LEnv Γ renaming (pparams to pp)
  open PParams pp using (govActionDeposit; poolDeposit)
  govSt : GovState
  govSt = LState.govSt s
  open LEDGER-PROPS tx Γ s using (utxoDeps; propUpdate; mkAction; updateGovStates; STS→GovSt≡; voteUpdate; dpMap-rmOrphanDRepVotes)
  open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

  CredDepIsNotGADep : ∀ {a c} → a ≡ CredentialDeposit c → ¬ isGADeposit a
  CredDepIsNotGADep refl ()

  PoolDepIsNotGADep : ∀ {a c} → a ≡ PoolDeposit c → ¬ isGADeposit a
  PoolDepIsNotGADep refl ()

  DRepDepIsNotGADep : ∀ {a c} → a ≡ DRepDeposit c → ¬ isGADeposit a
  DRepDepIsNotGADep refl ()

  filterCR : (c : DCert) (deps : Deposits)
             → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
  filterCR (dereg c _) deps = ≡ᵉ.sym $ begin
    filterˢ isGADeposit (dom (deps ˢ)) ≈˘⟨ filter-pres-≡ᵉ $ dom-cong (res-ex-∪ Dec-∈-singleton) ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr)ˢ ∪ (deps ∣ cr ᶜ)ˢ)) ≈⟨ filter-pres-≡ᵉ dom∪ ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr) ˢ) ∪ dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr) ˢ)) ∪ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ ∪-cong filter0 ≡ᵉ.refl ⟩
    ∅ ∪ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ ∪-identityˡ $ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ)) ∎
    where
    cr = ❴ CredentialDeposit c ❵
    filter0 = filter-∅ (λ _ → CredDepIsNotGADep ∘ (from ∈-singleton) ∘ res-dom)
  filterCR (deregdrep c _) deps = ≡ᵉ.sym $ begin
    filterˢ isGADeposit (dom (deps ˢ)) ≈˘⟨ filter-pres-≡ᵉ $ dom-cong (res-ex-∪ Dec-∈-singleton) ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr)ˢ ∪ (deps ∣ cr ᶜ)ˢ)) ≈⟨ filter-pres-≡ᵉ dom∪ ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr) ˢ) ∪ dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr) ˢ)) ∪ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ ∪-cong filter0 ≡ᵉ.refl ⟩
    ∅ ∪ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ≈⟨ ∪-identityˡ $ filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ )) ⟩
    filterˢ isGADeposit (dom ((deps ∣ cr ᶜ) ˢ)) ∎
    where
    cr = ❴ DRepDeposit c ❵
    filter0 = filter-∅ (λ _ → DRepDepIsNotGADep ∘ (from ∈-singleton) ∘ res-dom)
  filterCR (delegate _ _ _ _)  deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))
  filterCR (regpool _ _)       deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))
  filterCR (regdrep _ _ _)     deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))
  filterCR (retirepool _ _)    deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))
  filterCR (ccreghot _ _)      deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))
  filterCR (reg _ _)           deps = filter-pres-≡ᵉ (dom-cong (resᵐ-∅ᶜ {M = deps}))

  filterCD : (c : DCert) (deps : Deposits) → filterˢ isGADeposit (dom (certDeposit c pp ˢ)) ≡ᵉ ∅
  filterCD (delegate _ _ _ _)  deps = filter-∅ λ _ → CredDepIsNotGADep ∘ from ∈-singleton ∘ dom-single→single
  filterCD (reg _ _)           deps = filter-∅ λ _ → CredDepIsNotGADep ∘ from ∈-singleton ∘ dom-single→single
  filterCD (regpool _ _)       deps = filter-∅ λ _ → PoolDepIsNotGADep ∘ from ∈-singleton ∘ dom-single→single
  filterCD (regdrep _ _ _)     deps = filter-∅ λ _ → DRepDepIsNotGADep ∘ from ∈-singleton ∘ dom-single→single
  filterCD (dereg _ _)         deps = ≡ᵉ.trans (filter-pres-≡ᵉ dom∅) $ filter-∅ λ _ a∈ _ → ∉-∅ a∈
  filterCD (retirepool _ _)    deps = ≡ᵉ.trans (filter-pres-≡ᵉ dom∅) $ filter-∅ λ _ a∈ _ → ∉-∅ a∈
  filterCD (deregdrep _ _)     deps = ≡ᵉ.trans (filter-pres-≡ᵉ dom∅) $ filter-∅ λ _ a∈ _ → ∉-∅ a∈
  filterCD (ccreghot _ _)      deps = ≡ᵉ.trans (filter-pres-≡ᵉ dom∅) $ filter-∅ λ _ a∈ _ → ∉-∅ a∈

  noGACerts : (cs : List DCert) (deps : Deposits)
    → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
  noGACerts [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
  noGACerts (dcert@(delegate _ _ _ _) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∪⁺ cd))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∪⁺ cd)) ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
    filterˢ isGADeposit (dom deps ∪ dom (cd ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom deps) ∪ filterˢ isGADeposit (dom (cd ˢ)) ≈⟨ ∪-cong ≡ᵉ.refl $ filterCD dcert deps ⟩
    filterˢ isGADeposit (dom deps) ∪ ∅ ≈⟨ ∪-identityʳ $ filterˢ isGADeposit (dom deps) ⟩
    filterˢ isGADeposit (dom deps) ∎
    where
      cd = certDeposit dcert pp
      filter0 = filterCD dcert deps
  noGACerts (dcert@(reg _ _) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∪⁺ cd))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∪⁺ cd)) ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
    filterˢ isGADeposit (dom deps ∪ dom (cd ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom deps) ∪ filterˢ isGADeposit (dom (cd ˢ)) ≈⟨ ∪-cong ≡ᵉ.refl $ filterCD dcert deps ⟩
    filterˢ isGADeposit (dom deps) ∪ ∅ ≈⟨ ∪-identityʳ $ filterˢ isGADeposit (dom deps) ⟩
    filterˢ isGADeposit (dom deps) ∎
    where
      cd = certDeposit dcert pp
      filter0 = filterCD dcert deps
  noGACerts (dcert@(regpool _ _) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∪⁺ cd))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∪⁺ cd)) ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
    filterˢ isGADeposit (dom deps ∪ dom (cd ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom deps) ∪ filterˢ isGADeposit (dom (cd ˢ)) ≈⟨ ∪-cong ≡ᵉ.refl filter0 ⟩
    filterˢ isGADeposit (dom deps) ∪ ∅ ≈⟨ ∪-identityʳ $ filterˢ isGADeposit (dom deps) ⟩
    filterˢ isGADeposit (dom deps) ∎
    where
      cd = certDeposit dcert pp
      filter0 = filterCD dcert deps
  noGACerts (dcert@(regdrep _ _ _) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∪⁺ certDeposit dcert pp))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∪⁺ cd)) ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
    filterˢ isGADeposit (dom deps ∪ dom (cd ˢ )) ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom deps) ∪ filterˢ isGADeposit (dom (cd ˢ)) ≈⟨ ∪-cong ≡ᵉ.refl filter0 ⟩
    filterˢ isGADeposit (dom deps) ∪ ∅ ≈⟨ ∪-identityʳ $ filterˢ isGADeposit (dom deps) ⟩
    filterˢ isGADeposit (dom deps) ∎
    where
      cd = certDeposit dcert pp
      filter0 = filterCD dcert deps
  noGACerts (dcert@(dereg c v) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∣ certRefund (dereg c v)ᶜ))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∣ certRefund (dereg c v)ᶜ)) ≈⟨ filterCR dcert deps ⟩
    filterˢ isGADeposit (dom deps) ∎
  noGACerts (dcert@(deregdrep c v) ∷ cs) deps = begin
    filterˢ isGADeposit (dom (updateCertDeposits pp cs (deps ∣ certRefund (deregdrep c v)ᶜ))) ≈⟨ noGACerts cs _ ⟩
    filterˢ isGADeposit (dom (deps ∣ certRefund (deregdrep c v)ᶜ)) ≈⟨ filterCR dcert deps ⟩
    filterˢ isGADeposit (dom deps) ∎
  noGACerts (retirepool _ _ ∷ cs) deps = noGACerts cs deps
  noGACerts (ccreghot _ _ ∷ cs) deps = noGACerts cs deps

  opaque
    unfolding addVote

    dpMap∘voteUpdate≡dpMap : (v : GovVote) {govSt : GovState}
      → dpMap (voteUpdate govSt v) ≡ dpMap govSt
    dpMap∘voteUpdate≡dpMap v {[]} = refl
    dpMap∘voteUpdate≡dpMap v {(aid , ast) ∷ govSt} =
      cong (λ x → (GovActionDeposit ∘ proj₁) (aid , ast) ∷ x) (dpMap∘voteUpdate≡dpMap v)

  props-dpMap-votes-invar : (vs : List GovVote) (ps : List GovProposal) {k : ℕ} {govSt : GovState}
    → fromList (dpMap (updateGovStates (map inj₂ ps ++ map inj₁ vs) k govSt ))
      ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ ps) k govSt))
  props-dpMap-votes-invar [] ps {k} {govSt} = ≡ᵉ.reflexive
    (cong (λ x → fromList (dpMap (updateGovStates x k govSt))) (++-identityʳ (map inj₂ ps)))
  props-dpMap-votes-invar (v ∷ vs) [] {k} {govSt} = begin
    fromList (dpMap (updateGovStates (map inj₁ (v ∷ vs)) k govSt))
      ≈⟨ props-dpMap-votes-invar vs [] ⟩
    fromList (dpMap (updateGovStates (map inj₂ []) (suc k) (voteUpdate govSt v)))
      ≡⟨ cong fromList (dpMap∘voteUpdate≡dpMap v) ⟩
    fromList (dpMap govSt)
      ∎
  props-dpMap-votes-invar (v ∷ vs) (p ∷ ps) {k} {govSt} = props-dpMap-votes-invar (v ∷ vs) ps

  dpMap-update-∪ : ∀ gSt p k
    → fromList (dpMap gSt) ∪ ❴ GovActionDeposit (txid , k) ❵
        ≡ᵉ fromList (dpMap (propUpdate gSt p k))
  dpMap-update-∪ [] p k = ∪-identityˡ (fromList (dpMap [ mkAction p k ]))
  dpMap-update-∪ (g@(gaID₀ , gaSt₀) ∷ gSt) p k
    with (govActionPriority (GovActionState.action gaSt₀))
         ≤? (govActionPriority (GovActionState.action (proj₂ (mkAction p k))))
  ... | yes _  = begin
      fromList (dpMap (g ∷ gSt)) ∪ ❴ GovActionDeposit (txid , k) ❵
        ≈⟨ ∪-cong fromList-∪-singleton ≡ᵉ.refl ⟩
      (❴ GovActionDeposit gaID₀ ❵ ∪ fromList (dpMap gSt)) ∪ ❴ GovActionDeposit (txid , k) ❵
        ≈⟨ ∪-assoc ❴ GovActionDeposit gaID₀ ❵ (fromList (dpMap gSt)) ❴ GovActionDeposit (txid , k) ❵ ⟩
      ❴ GovActionDeposit gaID₀ ❵ ∪ (fromList (dpMap gSt) ∪ ❴ GovActionDeposit (txid , k) ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl (dpMap-update-∪ gSt p k) ⟩
      ❴ GovActionDeposit gaID₀ ❵ ∪ fromList (dpMap (propUpdate gSt p k))
        ≈˘⟨ fromList-∪-singleton ⟩
      fromList (dpMap (g ∷ insertGovAction gSt (mkAction p k)))
        ∎
  ... | no _   = begin
      fromList (dpMap (g ∷ gSt)) ∪ ❴ GovActionDeposit (txid , k) ❵
        ≈⟨ ∪-comm (fromList (dpMap (g ∷ gSt))) ❴ GovActionDeposit (txid , k) ❵ ⟩
      ❴ GovActionDeposit (txid , k) ❵ ∪ fromList (dpMap (g ∷ gSt))
        ≈˘⟨ fromList-∪-singleton ⟩
      fromList (dpMap ((mkAction p k) ∷ g ∷ gSt))
        ∎

  connex-lemma : ∀ gSt p ps {k}
    → fromList (dpMap (updateGovStates (map inj₂ ps) k gSt)) ∪ ❴ GovActionDeposit (txid , k + length ps) ❵
        ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ ps) (suc k) (propUpdate gSt p k)))
  connex-lemma gSt p [] {k} = begin
      fromList (dpMap gSt) ∪ ❴ GovActionDeposit (txid , k + 0) ❵
        ≡⟨ cong (λ x → fromList (dpMap gSt) ∪ ❴ GovActionDeposit (txid , x) ❵) (+-identityʳ k) ⟩
      fromList (dpMap gSt) ∪ ❴ GovActionDeposit (txid , k) ❵
        ≈⟨ dpMap-update-∪ gSt p k ⟩
      fromList (dpMap (propUpdate gSt p k))
        ∎
  connex-lemma gSt p (p' ∷ ps) {k} = begin
    fromList (dpMap (updateGovStates (map inj₂ (p' ∷ ps)) k gSt))
      ∪ ❴ GovActionDeposit (txid , k + length (p' ∷ ps)) ❵
        ≡⟨ cong (λ x → fromList (dpMap (updateGovStates (map inj₂ (p' ∷ ps)) k gSt))
            ∪ ❴ GovActionDeposit (txid , x) ❵) (+-suc k (length ps)) ⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) (suc k) (propUpdate gSt p' k)))
      ∪ ❴ GovActionDeposit (txid , (suc k) + length ps) ❵
        ≈˘⟨ ∪-cong (connex-lemma gSt p' ps) ≡ᵉ.refl ⟩
    (fromList (dpMap (updateGovStates (map inj₂ ps) k gSt))
      ∪ ❴ GovActionDeposit (txid , k + length ps) ❵)
      ∪ ❴ GovActionDeposit (txid , (suc k) + length ps) ❵
        ≈⟨ ∪-cong (connex-lemma gSt p ps) ≡ᵉ.refl ⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) (suc k) (propUpdate gSt p k)))
      ∪ ❴ GovActionDeposit (txid , (suc k) + length ps) ❵
        ≈⟨ connex-lemma (propUpdate gSt p k) p' ps ⟩
    fromList (dpMap (updateGovStates (map inj₂ (p' ∷ ps)) (suc k) (propUpdate gSt p k)))
        ∎

  utxo-govst-connex : ∀ txp {utxoDs gSt gad}
    → filterˢ isGADeposit (dom (utxoDs)) ≡ᵉ fromList (dpMap gSt)
    → filterˢ isGADeposit (dom (updateProposalDeposits txp txid gad utxoDs))
      ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ txp) 0 gSt))
  utxo-govst-connex [] x = x
  utxo-govst-connex (p ∷ ps) {utxoDs} {gSt} {gad} x = begin
    filterˢ isGADeposit (dom (updateProposalDeposits (p ∷ ps) txid gad utxoDs))
      ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
    filterˢ isGADeposit ((dom (updateProposalDeposits ps txid gad utxoDs))
      ∪ (dom{X = DepositPurpose ⇀ Coin} ❴ GovActionDeposit (txid , length ps) , gad ❵))
      ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom (updateProposalDeposits ps txid gad utxoDs)) ∪ filterˢ isGADeposit
        (dom{X = DepositPurpose ⇀ Coin} ❴ GovActionDeposit (txid , length ps) , gad ❵)
      ≈⟨ ∪-cong (utxo-govst-connex ps x) (filter-pres-≡ᵉ dom-single≡single) ⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) 0 gSt))
      ∪ filterˢ isGADeposit ❴ GovActionDeposit (txid , length ps) ❵
      ≈⟨ ∪-cong  ≡ᵉ.refl (filterGA txid _) ⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) 0 gSt)) ∪ ❴ GovActionDeposit (txid , length ps) ❵
      ≈⟨ connex-lemma gSt p ps ⟩
    fromList (dpMap (updateGovStates (map inj₂ (p ∷ ps)) 0 gSt)) ∎

  -- The list of natural numbers from 0 up to `n` - 1.
  ⟦0:<_⟧ : ℕ → List ℕ
  ⟦0:< 0     ⟧ = []
  ⟦0:< suc n ⟧ = ⟦0:< n ⟧ ++ [ n ]

  connex-lemma-rep : ∀ k govSt ps →
    fromList (dpMap (updateGovStates (map inj₂ ps) k govSt))
    ≡ᵉ
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧)
  connex-lemma-rep k govSt [] = begin
    fromList (dpMap govSt)
      ≈˘⟨ ∪-identityʳ (fromList (dpMap govSt)) ⟩
    fromList (dpMap govSt) ∪ fromList []
      ≡⟨⟩
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< 0 ⟧) ∎
  connex-lemma-rep k govSt (p ∷ ps) = begin
    fromList (dpMap (updateGovStates (map inj₂ (p ∷ ps)) k govSt))
      ≡⟨⟩
    fromList (dpMap (updateGovStates (inj₂ p ∷ map inj₂ ps) k govSt))
      ≡⟨⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k)))
      ≈˘⟨ connex-lemma govSt p ps {k} ⟩
    fromList (dpMap (updateGovStates (map inj₂ ps) k govSt)) ∪ ❴ GovActionDeposit (txid , k + length ps) ❵
      ≈⟨ ∪-cong (connex-lemma-rep k govSt ps) ≡ᵉ.refl ⟩
    (fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧)) ∪ ❴ GovActionDeposit (txid , k + length ps) ❵
      ≈⟨ ∪-assoc (fromList (dpMap govSt)) (fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧)) ❴ GovActionDeposit (txid , k + length ps) ❵ ⟩
    fromList (dpMap govSt) ∪ (fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧) ∪ ❴ GovActionDeposit (txid , k + length ps) ❵)
      ≡⟨⟩
    fromList (dpMap govSt) ∪ (fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧) ∪ fromList [ GovActionDeposit (txid , k + length ps) ])
      ≈⟨ ∪-cong ≡ᵉ.refl (∪-fromList-++ (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧) [ GovActionDeposit (txid , k + length ps) ]) ⟩
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length ps ⟧ ++ [ GovActionDeposit (txid , k + length ps) ])
      ≡˘⟨ cong (λ x → fromList (dpMap govSt) ∪ fromList x) (map-++ _ ⟦0:< length ps ⟧ [ length ps ]) ⟩
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) (⟦0:< length ps ⟧ ++ [ length ps ]))
      ≡⟨⟩
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length (p ∷ ps) ⟧) ∎

  -- Removing orphan DRep votes does not modify the set of GAs in GovState
  |ᵒ-GAs-pres : ∀ k govSt certState →
    fromList (dpMap (updateGovStates (txgov txb) k (rmOrphanDRepVotes certState govSt)))
    ≡ᵉ
    fromList (dpMap (updateGovStates (txgov txb) k govSt))
  |ᵒ-GAs-pres k govSt certState = begin
    fromList (dpMap (updateGovStates (txgov txb) k (rmOrphanDRepVotes certState govSt)))
      ≈⟨ props-dpMap-votes-invar txvote txprop {k} {rmOrphanDRepVotes certState govSt} ⟩
    fromList (dpMap (updateGovStates (map inj₂ txprop) k (rmOrphanDRepVotes certState govSt)))
      ≈⟨ connex-lemma-rep k (rmOrphanDRepVotes certState govSt) txprop ⟩
    fromList (dpMap (rmOrphanDRepVotes certState govSt)) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length txprop ⟧)
      ≡⟨ cong (λ x → fromList x ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length txprop ⟧)) (dpMap-rmOrphanDRepVotes certState govSt) ⟩
    fromList (dpMap govSt) ∪ fromList (map (λ i → GovActionDeposit (txid , k + i)) ⟦0:< length txprop ⟧)
      ≈˘⟨ connex-lemma-rep k govSt txprop ⟩
    fromList (dpMap (updateGovStates (map inj₂ txprop) k govSt))
      ≈˘⟨ props-dpMap-votes-invar txvote txprop {k} {govSt} ⟩
    fromList (dpMap (updateGovStates (txgov txb) k govSt)) ∎

  -- GA Deposits Invariance Property for LEDGER STS ----------------------------------------------------
  LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                        → govDepsMatch s → govDepsMatch s'
  LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

  LEDGER-govDepsMatch {s' = s'}
    utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ _ GOV-sts) aprioriMatch =
    let open LState s' renaming (govSt to govSt'; certState to certState') in
    begin
      filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
        ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ utxo-govst-connex txprop aprioriMatch ⟩
      fromList (dpMap (updateGovStates (map inj₂ txprop) 0 govSt))
        ≈˘⟨ props-dpMap-votes-invar txvote txprop ⟩
      fromList (dpMap (updateGovStates (txgov txb) 0 govSt ))
        ≈˘⟨ |ᵒ-GAs-pres 0 govSt certState' ⟩
      fromList (dpMap (updateGovStates (txgov txb) 0 (rmOrphanDRepVotes certState' govSt)))
        ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
      fromList (dpMap govSt') ∎

  LEDGER-govDepsMatch {s' = s'} utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch

module EPOCH-Body (eps : EpochState) where
  open EpochState eps hiding (es) public
  open RatifyState fut using (removed) renaming (es to esW) public
  open LState ls public
  open GovActionState public
  open UTxOState public

  es       = record esW { withdrawals = ∅ }
  tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt
  orphans  = fromList $ getOrphans es tmpGovSt
  removed' = removed ∪ orphans
  removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
    mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
  govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

module EPOCH-PROPS {eps : EpochState} where
  open EPOCH-Body eps

  -- GA Deposits Invariance Property for EPOCH STS -----------------------------------------------
  EPOCH-govDepsMatch :
    (ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed' ⊆ mapˢ proj₁ (UTxOState.deposits utxoSt ˢ))
    {eps' : EpochState} {e : Epoch}
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    → govDepsMatch (EpochState.ls eps) → govDepsMatch (EpochState.ls eps')

  EPOCH-govDepsMatch ratify-removed (EPOCH x _) =
      ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym χ'≡χ))
      ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
    where

    -- the combinator used in the EPOCH rule
    χ : ℙ DepositPurpose
    χ = mapˢ (proj₁ ∘ proj₂) removedGovActions

    -- a simpler combinator that suffices here;
    χ' : ℙ DepositPurpose
    χ' = mapˢ (GovActionDeposit ∘ proj₁) removed'
    -- Below we prove χ and χ' are essentially equivalent.

    P : GovActionID × GovActionState → Type
    P = λ u → proj₁ u ∉ mapˢ proj₁ removed'

    P? : Decidable P
    P? = λ u → ¿ P u ¿

    utxoDeps : Deposits
    utxoDeps = UTxOState.deposits utxoSt

    -- utxo deposits restricted to new form of set used in EPOCH rule
    utxoDeps' : Deposits
    utxoDeps' = utxoDeps ∣ χ' ᶜ

    χ'≡χ : χ' ≡ᵉ χ
    χ'≡χ = χ'⊆χ , χ⊆χ'
      where
      χ'⊆χ : χ' ⊆ χ
      χ'⊆χ {a} x with from ∈-map x
      ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
      ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
        to ∈-map ((returnAddr {txs} gast , gadc)
                 , refl
                 , to ∈-concatMapˢ ((gaid , gast)
                                   , gaidgast∈rem
                                   , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
      χ⊆χ' : χ ⊆ χ'
      χ⊆χ' {a} x with from ∈-map x
      ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
      ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
      ... | (_ , _) , refl , q∈ =
        to ∈-map ((gaid , gast)
                 , proj₁ (×-≡,≡←≡ (proj₂ (res-singleton'' {m = utxoDeps} q∈)))
                 , gaid-gast-∈-removed)


    map-filter-decomp : ∀ a → (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)
                               ⇔ (a ∈ˡ map (GovActionDeposit ∘ proj₁)(filter P? govSt))
    map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
      where
      i : ((a ∉ χ') × (a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt))
          → a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
      i (a∉χ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
      ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                       (b , ∈-filter⁺ P? b∈ (a∉χ' ∘ ∈-map⁺-∘) , refl)

      ii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt) → a ∉ χ'
      ii a∈ a∈χ' with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | _ , _ , refl , Pb with ∈-map⁻' a∈χ'
      ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

      iii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
            → a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt
      iii a∈ with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


    main-invariance-lemma :
        filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) govSt)
        ---------------------------------------------------------------------------------------------------
      → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt))

    main-invariance-lemma HYP a = let open R.EquationalReasoning in
      a ∈ filterˢ isGADeposit (dom utxoDeps')                         ∼⟨ R.SK-sym ∈-filter ⟩
      (isGADeposit a × a ∈ dom utxoDeps')                             ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
      (isGADeposit a × a ∉ χ' × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ ×-⇔-swap ⟩
      (a ∉ χ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
      (a ∉ χ' × isGADeposit a × a ∈ dom utxoDeps)                     ∼⟨ R.K-refl ×-cong ∈-filter ⟩
      (a ∉ χ' × a ∈ filterˢ isGADeposit (dom utxoDeps))               ∼⟨ R.K-refl ×-cong (HYP a) ⟩
      (a ∉ χ' × a ∈ fromList (map (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
      (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
      a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)           ∼⟨ ∈-fromList ⟩
      a ∈ fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt)) ∎

-- GA Deposits Invariance Property for CHAIN STS -----------------------------------------------
module _ (b : Block) (cs : ChainState) where
  open Block b; open ChainState cs
  open NewEpochState newEpochState
  open SetoidProperties using (LEDGER-govDepsMatch)
  open EPOCH-Body epochState
  open EnactState es using (pparams)
  pp = pparams .proj₁

  updateChainState : ChainState → NewEpochState → ChainState
  updateChainState s nes =
    record s { newEpochState =
      record nes { epochState =
        record (NewEpochState.epochState (ChainState.newEpochState s))
          { ls = EpochState.ls (NewEpochState.epochState nes) }
      }
    }

  CHAIN-govDepsMatch : {nes : NewEpochState}
    → mapˢ (GovActionDeposit ∘ proj₁) removed' ⊆ mapˢ proj₁ (UTxOState.deposits (LState.utxoSt ls) ˢ)
    → totalRefScriptsSize ls ts ≤ (PParams.maxRefScriptSizePerBlock pp)
    → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ (updateChainState cs nes)
    → govDepsMatch ls → govDepsMatch (EpochState.ls (NewEpochState.epochState nes))

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-New (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-Not-New _) ledgers) =
    RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂
