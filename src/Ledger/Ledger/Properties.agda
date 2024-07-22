{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
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
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm)
open import Relation.Binary using (IsEquivalence)
open import Relation.Unary using (Decidable)

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
    computeGov   = comp {STS = _⊢_⇀⦇_,GOV⦈_}

    module go
      (Γ : LEnv)   (let ⟦ slot , ppolicy , pparams , enactState , _ ⟧ˡᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls , UTxOState.deposits utxoSt ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← computeGov   govΓ  govSt  (txgov txb)
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
        with computeGov govΓ govSt (txgov txb) | complete govΓ _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
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

  FreshTx : Tx → LState → Type
  FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
    where open Tx; open TxBody; open UTxOState; open LState

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW⇒UTXO st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW⇒UTXO st))     = pov h st

  data FreshTxs : LEnv → LState → List Tx → Type where
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

-- ** Proof that the set equality `govDepsMatch` (below) is a LEDGER invariant.

-- Mapping a list of `GovActionID × GovActionState`s to a list of
-- `DepositPurpose`s is so common, we give it a name `dpMap`.
dpMap : GovState → List DepositPurpose
dpMap = map (GovActionDeposit ∘ proj₁) -- map (λ (id , _) → GovActionDeposit id)


isGADeposit : DepositPurpose → Type
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false


govDepsMatch : LState → Type
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt)) ≡ᵉ fromList (dpMap govSt)

getDeposits : LState → DepositPurpose ⇀ Coin
getDeposits s = UTxOState.deposits (LState.utxoSt s)

module _  -- ASSUMPTIONS (TODO: eliminate/prove these) --
  {- 1 -} {filterCD : ∀ pp c → filterˢ isGADeposit (dom (certDeposit c pp)) ≡ᵉ ∅}
  {- 2 -} {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                      → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})
  pattern UTXOW-UTXOS x = UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x)

  filterGA : ∀ txid n → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵
  proj₁ (filterGA txid n) {a} x = (proj₂ (from ∈-filter x)) where open Equivalence
  proj₂ (filterGA txid n) {a} x = to ∈-filter (ξ (from ∈-singleton x) , x)
    where
    open Equivalence
    ξ : a ≡ GovActionDeposit (txid , n) → isGADeposit a
    ξ refl = refl

  module LEDGER-PROPS (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)


    -- initial utxo deposits
    utxoDeps : DepositPurpose ⇀ Coin
    utxoDeps = UTxOState.deposits (LState.utxoSt s)

    -- utxo deposits after the transaction
    utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps' = updateDeposits pp txb utxoDeps

    -- GovState definitions and lemmas --
    mkAction : GovProposal → ℕ → GovActionID × GovActionState
    mkAction p n = let open GovProposal p in
      mkGovStatePair
        (PParams.govActionLifetime pp +ᵉ (epoch slot))
        (txid , n) returnAddr action prevAction

    -- update GovState with a proposal
    propUpdate : GovState → GovProposal → ℕ → GovState
    propUpdate s p n = insertGovAction s (mkAction p n)

    -- update GovState with a vote
    voteUpdate : GovState → GovVote → GovState
    voteUpdate s v = addVote s gid voter vote
      where open GovVote v

    -- update GovState with only the votes in a list of votes and proposals
    updateVotesOnly : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateVotesOnly s [] = s
    updateVotesOnly s (inj₁ v ∷ vps) = updateVotesOnly (voteUpdate s v) vps
    updateVotesOnly s (inj₂ _ ∷ vps) = updateVotesOnly s vps

    -- update GovState with a list of votes and proposals
    updateGovStates : List (GovVote ⊎ GovProposal) → ℕ → GovState → GovState
    updateGovStates [] _ s = s
    updateGovStates (inj₁ v ∷ vps) k s = updateGovStates vps (suc k) (voteUpdate s v)
    updateGovStates (inj₂ p ∷ vps) k s = updateGovStates vps (suc k) (propUpdate s p k)

    -- updateGovStates faithfully represents a step of the LEDGER sts
    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true → LState.govSt s' ≡ updateGovStates (txgov txb) 0 (LState.govSt s)
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) 0 (proj₂ (proj₂ (proj₂ x)))
      where
      STS→updateGovSt≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt govSt' : GovState}
        → (_⊢_⇀⟦_⟧ᵢ*'_ IdSTS _⊢_⇀⦇_,GOV'⦈_ (⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ , k) govSt vps govSt')
        → govSt' ≡ updateGovStates vps k govSt
      STS→updateGovSt≡ [] _ (BS-base Id-nop) = refl
      STS→updateGovSt≡ (inj₁ v ∷ vps) k {govSt}(BS-ind {s' = .(voteUpdate govSt v)} (GOV-Vote x) h)
        = STS→updateGovSt≡ vps (suc k) h
      STS→updateGovSt≡ (inj₂ p ∷ vps) k (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ vps (suc k) h

  module SetoidProperties (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    govSt : GovState
    govSt = LState.govSt s
    open LEDGER-PROPS tx Γ s using (utxoDeps; propUpdate; mkAction; updateGovStates; STS→GovSt≡)

    open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

    -- No governance action deposits come fro the certs update.
    noGACerts : (cs : List DCert) (deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts (c ∷ cs) deps =
      let upCD = updateCertDeposits pp cs deps
      in begin
      filterˢ isGADeposit (dom (updateCertDeposits pp (c ∷ cs) deps))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c pp} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c pp))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
      filterˢ isGADeposit (dom upCD ∪ dom (certDeposit c pp))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upCD) ∪ filterˢ isGADeposit (dom (certDeposit c pp))
        ≈⟨ ∪-cong (noGACerts cs deps) (filterCD pp c) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps) ∎

    votes-dpMap-invar : (vs : List GovVote) (ps : List GovProposal) {k : ℕ} {govSt : GovState}
      → fromList (dpMap (updateGovStates (map inj₂ ps ++ map inj₁ vs) k govSt )) ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ ps) k govSt))
    votes-dpMap-invar = {!!}

    utxo-govst-connex : ∀ {utxoDs gSt txp txi gad}
      → filterˢ isGADeposit (dom (utxoDs)) ≡ᵉ fromList (dpMap gSt)
      → filterˢ isGADeposit (dom (updateProposalDeposits txp txi gad utxoDs))
        ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ txp) 0 gSt))
    utxo-govst-connex {utxoDs} {gSt} {[]} {txi} {gad} x = x
    utxo-govst-connex {utxoDs} {gSt} {p ∷ ps} {txi} {gad} x = begin
      filterˢ isGADeposit (dom (updateProposalDeposits (p ∷ ps) txi gad utxoDs))
        ≈⟨ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits ps txi gad utxoDs
        ∪⁺ ❴ GovActionDeposit (txi , length ps) , gad ❵))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
      filterˢ isGADeposit ((dom (updateProposalDeposits ps txi gad utxoDs))
        ∪ (dom{X = DepositPurpose ⇀ Coin} ❴ GovActionDeposit (txi , length ps) , gad ❵))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits ps txi gad utxoDs)) ∪ filterˢ isGADeposit
          (dom{X = DepositPurpose ⇀ Coin} ❴ GovActionDeposit (txi , length ps) , gad ❵)
        ≈⟨ ∪-cong (utxo-govst-connex {txp = ps} x) (filter-pres-≡ᵉ dom-single≡single) ⟩
      fromList (dpMap (updateGovStates (map inj₂ ps) 0 gSt))
        ∪ filterˢ isGADeposit ❴ GovActionDeposit (txi , length ps) ❵
        ≈⟨ ∪-cong  ≡ᵉ.refl (filterGA txi _) ⟩
      fromList (dpMap (updateGovStates (map inj₂ ps) 0 gSt)) ∪ ❴ GovActionDeposit (txi , length ps) ❵
        ≈⟨ {!!} ⟩
      fromList (dpMap (updateGovStates (map inj₂ ps) (suc 0) (propUpdate gSt p 0)))
        ≈⟨ ≡ᵉ.refl ⟩
      fromList (dpMap (updateGovStates (inj₂ p ∷ (map inj₂ ps)) 0 gSt))
        ≈⟨ ≡ᵉ.refl ⟩
      fromList (dpMap (updateGovStates (map inj₂ (p ∷ ps)) 0 gSt)) ∎


    -- GA Deposits Invariance Property for LEDGER STS --------------------------------------------------------------------
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ .(⟦ ((UTxOState.utxo (LState.utxoSt s) ∣ txins ᶜ) ∪ˡ (outs txb))
                                , _ , updateDeposits pp txb (UTxOState.deposits (LState.utxoSt s)) , _ ⟧ᵘ)
                            , govSt' , _ ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch = begin
        filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
          ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
        filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
          ≈⟨ utxo-govst-connex {txp = txprop} aprioriMatch ⟩
        fromList (dpMap (updateGovStates (map inj₂ txprop) 0 govSt))
          ≈˘⟨ votes-dpMap-invar txvote txprop ⟩
        fromList (dpMap (updateGovStates (txgov txb) 0 govSt ))
          ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
        fromList (dpMap govSt') ∎

    LEDGER-govDepsMatch utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch


  module EPOCH-PROPS (tx : Tx) (Γ : LEnv) (eps : EpochState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp); open EpochState eps hiding (es); open LState ls
    open GovActionState; open RatifyState fut using (removed)

    -- GA Deposits Invariance Property for EPOCH STS -----------------------------------------------
    EPOCH-govDepsMatch :
      (ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ (UTxOState.deposits utxoSt ˢ))
      (eps' : EpochState) {e : Epoch}
      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      → govDepsMatch (EpochState.ls eps) → govDepsMatch (EpochState.ls eps')

    EPOCH-govDepsMatch ratify-removed ⟦ acnt' , ls' ,  es , _ , fut' ⟧ᵉ'
      (EPOCH x _) = ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym χ'≡χ))
                            ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
      where

      -- the combinator used in the EPOCH rule
      χ : (DepositPurpose ⇀ Coin) → ℙ DepositPurpose
      χ deps = mapˢ (proj₁ ∘ proj₂)
        (flip concatMapˢ removed  (λ (gaid , gast) → mapˢ (returnAddr gast ,_) ((deps ∣ ❴ GovActionDeposit gaid ❵) ˢ)))

      -- a simpler combinator that suffices here;
      χ' : ℙ DepositPurpose
      χ' = mapˢ (GovActionDeposit ∘ proj₁) removed
      -- Below we prove χ and χ' are essentially equivalent.

      P : GovActionID × GovActionState → Type
      P = λ u → proj₁ u ∉ mapˢ proj₁ removed

      P? : Decidable P
      P? = λ u → ¿ P u ¿

      utxoDeps : Deposits
      utxoDeps = UTxOState.deposits utxoSt

      -- utxo deposits restricted to new form of set used in EPOCH rule
      utxoDeps' : Deposits
      utxoDeps' = utxoDeps ∣ χ' ᶜ

      -- utxo deposits restricted to old form of set used in EPOCH rule
      utxoDeps'' : Deposits
      utxoDeps'' = utxoDeps ∣ χ utxoDeps ᶜ

      open Equivalence

      χ'≡χ : χ' ≡ᵉ χ utxoDeps
      χ'≡χ = χ'⊆χ , χ⊆χ'
        where
        χ'⊆χ : χ' ⊆ χ utxoDeps
        χ'⊆χ {a} x with from ∈-map x
        ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
        ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
          to ∈-map ((returnAddr gast , gadc)
                   , refl
                   , to ∈-concatMapˢ ((gaid , gast)
                                     , gaidgast∈rem
                                     , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
        χ⊆χ' : χ utxoDeps ⊆ χ'
        χ⊆χ' {a} x with from ∈-map x
        ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
        ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
        ... | (.dp , _) , refl , q∈ =
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
        ii a∈ a∈χ' with from (∈ˡ-map-filter{l = govSt}{P? = P?}) a∈
        ... | _ , _ , refl , Pb with ∈-map⁻' a∈χ'
        ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

        iii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
              → a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt
        iii a∈ with from (∈ˡ-map-filter{l = govSt}{P? = P?}) a∈
        ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


      main-invariance-lemma :
          filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) govSt)
          ---------------------------------------------------------------------------------------------------
        → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt))

      main-invariance-lemma HYP a = let open R.EquationalReasoning in
        a ∈ (filterˢ isGADeposit (dom utxoDeps'))                       ∼⟨ R.SK-sym ∈-filter ⟩
        (isGADeposit a × a ∈ dom utxoDeps')                             ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
        (isGADeposit a × a ∉ χ' × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ ×-⇔-swap ⟩
        (a ∉ χ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
        (a ∉ χ' × isGADeposit a × a ∈ dom utxoDeps)                     ∼⟨ R.K-refl ×-cong ∈-filter ⟩
        (a ∉ χ' × a ∈ filterˢ isGADeposit (dom utxoDeps))               ∼⟨ R.K-refl ×-cong (HYP a) ⟩
        (a ∉ χ' × a ∈ fromList (map (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
        (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
        (a ∈ˡ map (GovActionDeposit ∘ proj₁)(filter P? govSt))          ∼⟨ ∈-fromList ⟩
        a ∈ fromList (map (GovActionDeposit ∘ proj₁)(filter P? govSt))  ∎


  -- GA Deposits Invariance Property for CHAIN STS --------------------------------------------------------------------
  module _ (tx : Tx) (Γ : LEnv) (b : Block) (cs : ChainState) where
    open Block b; open ChainState cs
    open NewEpochState newEpochState
    open EpochState epochState; open EnactState es
    open RatifyState fut using (removed)
    open SetoidProperties using (LEDGER-govDepsMatch)

    updateChainState : ChainState → NewEpochState → ChainState
    updateChainState s nes =
      record s { newEpochState =
        record nes { epochState =
          record (NewEpochState.epochState (ChainState.newEpochState s))
            { ls = EpochState.ls (NewEpochState.epochState nes) }
        }
      }

    CHAIN-govDepsMatch : {nes : NewEpochState}
      → mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ (getDeposits ls ˢ)
      → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ (updateChainState cs nes)
      → govDepsMatch ls → govDepsMatch (EpochState.ls (NewEpochState.epochState nes))

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-New (_ , eps₁→eps₂)) ledgers) =
      (RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ rrm _ eps₁→eps₂)

    CHAIN-govDepsMatch _ (CHAIN (NEWEPOCH-Not-New _) ledgers) =
      RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂)) ledgers) =
      (RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ rrm _ eps₁→eps₂)
