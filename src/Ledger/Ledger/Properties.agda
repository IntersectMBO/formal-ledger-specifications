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

open import Data.Bool.Properties   using (¬-not)
open import Data.List.Properties   using (length-map)
open import Data.Nat.Properties         hiding (_≟_)
open import Data.Product.Properties using (,-injectiveˡ; ×-≡,≡→≡; ×-≡,≡←≡)
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
      (let H? = LEDGER-premises .proj₂ .dec)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        (certSt' , certStep) ← map₁ (λ where (inj₁ x) → x; (inj₂ x) → x) $ computeCerts certΓ certSt txcerts
        (govSt'  , govStep)  ← map₁ (λ where (inj₁ ());    (inj₂ x) → x) $ computeGov   govΓ  govSt  (txgov txb)
        case H? of λ where
          (yes h) → success (_ , LEDGER⋯ utxoStep certStep govStep)
          (no f)  → failure "Failed at LEDGER"

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER⋯ utxoStep certStep govStep)
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
      ... | success (govSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ (⊥ ⊎ String)
Computational-LEDGERS = it

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

-- ** Proof that LEDGER preserves values.

FreshTx : Tx → LState → Set
FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
  where open Tx; open TxBody; open UTxOState; open LState

module _ where

  private variable
    tx : Tx
    Γ : LEnv
    s s' : LState
    l : List Tx

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER⋯ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _) = pov h st

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

-- ** Proof that LEDGER preserves the following invariant, so if it holds for
-- some state it also holds when we successfully apply a block to that state.

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

instance
  _ = +-0-monoid

module _ -- ASSUMPTIONS (TODO: eliminate these) --
         {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵
                                     ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
         {filterCD : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
         {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                     → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ ))
                       ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
         {dom-single : {d : DepositPurpose}{c : Coin} → ❴ d ❵ˢ ≡ dom ❴ d , c ❵ˢ }
  where

  LEDGER-govDepsMatch : LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch
  LEDGER-govDepsMatch
    Γ@{⟦ slt , ppol , pp , enactSt ⟧ˡᵉ}   -- Γ : LEnv
    s@{⟦ utxoSt , govSt , _ ⟧ˡ}           -- s : LState = UTxOState × GovState × CertState
                                          --                          ^^^^^^^^ = List (GovActionID × GovActionState)
    tx@{record { body = txb ; wits = wits ; isValid = txIsValid ; txAD = txAD }}
    s'@{⟦ utxoSt' , govSt' , _ ⟧ˡ}
    (_⊢_⇀⦇_,LEDGER⦈_.LEDGER ( _⊢_⇀⦇_,UTXOW⦈_.UTXOW-inductive (_ , _ , _ , _ , _ , utxoSTS)
                            , _
                            , govSTS) )
    aprioriMatch

    with (txIsValid ≟ true)

  ...| no ¬p = begin
    filterˢ isGADeposit (dom (utxoSt' .deposits))
      ≈⟨ filter-pres-≡ᵉ (updateDeps-dom≡ᵉ-notValid (¬-not ¬p)) ⟩
    filterˢ isGADeposit (dom (utxoSt .deposits))
      ≈⟨ aprioriMatch ⟩
    fromList (map (λ (id , _) → GovActionDeposit id) govSt)
      ≈˘⟨ govSt-unch ⟩
    fromList (map (λ (id , _) → GovActionDeposit id) govSt')
      ∎
    where
    open SetoidReasoning ≡ᵉ-Setoid
    open UTxOState using (deposits)
    govSt-unch : fromList (map (λ (id , _) → GovActionDeposit id) govSt')
                 ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)
    govSt-unch = ?
    updateDeps-dom≡ᵉ-notValid : txIsValid ≡ false → dom (utxoSt' .deposits) ≡ᵉ dom (utxoSt .deposits)
    updateDeps-dom≡ᵉ-notValid tx-not-valid = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (⊢utxo-not-valid ⊢utxo))
      where
      ¬ft : ¬ (true ≡ false)
      ¬ft ()

      ⊢utxo-not-valid : record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt' → (utxoSt' .deposits) ≡ (utxoSt .deposits)
      ⊢utxo-not-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) = refl
      ⊢utxo-not-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) = ⊥-elim $ ¬ft (trans (sym $ proj₂ u) tx-not-valid)

      ⊢utxo : record { slot = slt ; pparams = pp } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
      ⊢utxo = case utxoSTS of λ where
        (UTXO-inductive (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , h)) → h

  ...| yes p = begin
    filterˢ isGADeposit (dom utxoDeps')
      ≈⟨ filter-pres-≡ᵉ updateDeps-dom≡ᵉ ⟩
    filterˢ isGADeposit (dom (updateDeposits pparams txb utxoDeps))
      ≈⟨ noGACerts{txcerts} ⟩
    filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
      ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ{txprop}) ⟩
    filterˢ isGADeposit (dom (utxoDeps ∪⁺ propDepsChange txprop pparams txb))
      ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
    filterˢ isGADeposit ((dom utxoDeps) ∪ dom (propDepsChange txprop pparams txb))
      ≈⟨ filter-hom-∪ ⟩
    filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (propDepsChange txprop pparams txb))
      ≈⟨ ∪-cong ≡ᵉ.refl (subLemma{txprop}) ⟩
    filterˢ isGADeposit (dom utxoDeps) ∪ dom ((propDepsChange txprop pparams txb)ˢ)
      ≈⟨ ∪-cong aprioriMatch (≡ᵉ.sym claim1) ⟩
    fromList (map (λ (id , _) → GovActionDeposit id) govSt) ∪ fromList (V⊎P∖V→DepPurposes (txgov txb))
      ≈˘⟨ claim2 p ⟩
    fromList (map (λ (id , _) → GovActionDeposit id) govSt')
      ∎
    where
    open SetoidReasoning ≡ᵉ-Setoid

    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

    open UTxOState using (deposits)

    open TxBody txb
    open LEnv Γ; open PParams pp

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    ⊢utxo : record { slot = slt ; pparams = pp } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
    ⊢utxo = case utxoSTS of λ where
     (UTXO-inductive (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , h)) → h

    V⊎P∖V→DepPurposes : List (GovVote ⊎ GovProposal) → List DepositPurpose
    V⊎P∖V→DepPurposes [] = []
    V⊎P∖V→DepPurposes (inj₁ v ∷ vps) = V⊎P∖V→DepPurposes vps -- omit votes
    V⊎P∖V→DepPurposes (inj₂ p ∷ vps) = GovActionDeposit (txid , length vps) ∷ V⊎P∖V→DepPurposes vps

    V⊎P∖V≡ : (votes : List GovVote) {props : List GovProposal}
             → fromList (V⊎P∖V→DepPurposes (map inj₁ votes ++ map inj₂ props))
               ≡ᵉ fromList (V⊎P∖V→DepPurposes (map inj₂ props))
    V⊎P∖V≡ [] = ≡ᵉ.refl
    V⊎P∖V≡ (v ∷ vs) = V⊎P∖V≡ vs

    P→DepPurposes : List GovProposal → List DepositPurpose
    P→DepPurposes [] = []
    P→DepPurposes (p ∷ ps) = GovActionDeposit (txid , length ps) ∷ P→DepPurposes ps

    V⊎P∖V≡P : (votes : List GovVote) {props : List GovProposal}
               → fromList (V⊎P∖V→DepPurposes (map inj₁ votes ++ map inj₂ props)) ≡ᵉ fromList (P→DepPurposes props)
    V⊎P∖V≡P votes {[]} = V⊎P∖V≡ votes
    V⊎P∖V≡P votes {p ∷ ps} = begin
      fromList (V⊎P∖V→DepPurposes (map inj₁ votes ++ map inj₂ (p ∷ ps)))
        ≈⟨ V⊎P∖V≡ votes ⟩
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

    P≡propDepChange : {props : List GovProposal} → fromList (P→DepPurposes props) ≡ᵉ dom ((propDepsChange props pparams txb)ˢ)
    P≡propDepChange {[]} = ≡ᵉ.sym dom∅
    P≡propDepChange {p ∷ ps} = begin
      fromList (P→DepPurposes (p ∷ ps))
        ≈⟨ fromList-∪-singleton ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ fromList (P→DepPurposes ps)
        ≈⟨ ∪-cong ≡ᵉ.refl P≡propDepChange ⟩
      ❴ GovActionDeposit (txid , length ps) ❵ ∪ dom ((propDepsChange ps pparams txb)ˢ)
        ≈⟨ ∪-comm (❴ GovActionDeposit (txid , length ps) ❵) (dom ((propDepsChange ps pparams txb)ˢ)) ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ ❴ GovActionDeposit (txid , length ps) ❵
        ≈⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive dom-single) ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ dom{X = ℙ (DepositPurpose × Coin)} (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ )
        ≈˘⟨ dom∪⁺ ⟩
      dom ((propDepsChange (p ∷ ps) pparams txb)ˢ)
        ∎

    claim1 : fromList (V⊎P∖V→DepPurposes (txgov txb)) ≡ᵉ dom ((propDepsChange txprop pparams txb)ˢ)
    claim1 = begin
      fromList (V⊎P∖V→DepPurposes (txgov txb))
        ≈⟨ V⊎P∖V≡P txvote ⟩
      fromList (P→DepPurposes txprop)
        ≈⟨ P≡propDepChange ⟩
      dom ((propDepsChange txprop pparams txb)ˢ)
        ∎

    claim2 : txIsValid ≡ true
      → fromList (map (λ (id , _) → GovActionDeposit id) govSt')
        ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt) ∪ fromList (V⊎P∖V→DepPurposes (txgov txb))
    claim2 = {!!}

    updateDeps-dom≡ᵉ : dom utxoDeps' ≡ᵉ dom (updateDeposits pparams txb utxoDeps)
    updateDeps-dom≡ᵉ = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (⊢utxo-valid ⊢utxo))
      where
      ¬ft : ¬ (true ≡ false)
      ¬ft ()

      ⊢utxo-valid : record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
                    → utxoDeps' ≡ (updateDeposits pparams txb utxoDeps)
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = ⊥-elim $ ¬ft (trans (sym p) (proj₂ u))

    updatePropDeps≡ᵉ : {props : List GovProposal}
       → dom ((updateProposalDeposits props txid govActionDeposit utxoDeps)ˢ)
         ≡ᵉ dom ((utxoDeps ∪⁺ propDepsChange props pparams txb)ˢ)
    updatePropDeps≡ᵉ {[]} = begin
      dom ((updateProposalDeposits [] txid govActionDeposit utxoDeps)ˢ)
        ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))
        ≈⟨ dom∪ ⟩
      dom (utxoDeps ˢ) ∪ dom{X = DepositPurpose ⇀ Coin} ∅
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ propDepsChange [] pparams txb) ˢ)
        ∎

    updatePropDeps≡ᵉ {x ∷ props} = let gaD = GovActionDeposit (txid , length props) in
      begin
      dom (updateProposalDeposits (x ∷ props) txid govActionDeposit utxoDeps ˢ)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits props txid govActionDeposit utxoDeps ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ{props}) ≡ᵉ.refl ⟩
      dom ((utxoDeps ∪⁺ propDepsChange props pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom (utxoDeps ˢ) ∪ dom ((propDepsChange props pparams txb) ˢ)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom (utxoDeps ˢ)) (dom ((propDepsChange props pparams txb) ˢ)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom (utxoDeps ˢ) ∪ (dom ((propDepsChange props pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom (utxoDeps ˢ) ∪ dom ((propDepsChange props pparams txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ propDepsChange (x ∷ props) pparams txb) ˢ)
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

    subLemma : {props : List GovProposal}
      → filterˢ isGADeposit (dom ((propDepsChange props pparams txb)ˢ)) ≡ᵉ dom ((propDepsChange props pparams txb)ˢ)
    subLemma {[]} = begin
      filterˢ isGADeposit (dom ((propDepsChange [] pparams txb)ˢ))  ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)       ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                         ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                             ≈˘⟨ dom∅ ⟩
      dom ((propDepsChange [] pparams txb)ˢ)                        ∎

    subLemma {(p ∷ ps)} =
      let
        upPD = updateProposalDeposits ps txid govActionDeposit ∅
        gaD = GovActionDeposit (txid , length ps)
      in
      begin
      filterˢ isGADeposit (dom ((propDepsChange (p ∷ ps) pparams txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom ((upPD ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ)) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (subLemma{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ ❴ gaD ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((propDepsChange (p ∷ ps) pparams txb)ˢ)
        ∎
