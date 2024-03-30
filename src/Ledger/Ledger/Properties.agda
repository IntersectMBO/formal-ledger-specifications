{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th -- using (≡ᵉ-isEquivalence; ∪-cong; ≡ᵉ-Setoid; map-≡ᵉ; filter-pres-⊆)
open import Ledger.Deleg.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs
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


isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepPurpose : GovActionID × GovActionState → DepositPurpose
govDepPurpose (id , _) = GovActionDeposit id

govDepPurposes : GovState → List DepositPurpose
govDepPurposes = map govDepPurpose

-- ** Proof that LEDGER preserves the following invariant, so if it holds for
-- some state it also holds when we successfully apply a block to that state.
govDepsMatch : LState → Set
govDepsMatch s = let open UTxOState; open LState s in
  filterˢ isGADeposit (dom (utxoSt .deposits ))
    ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

LEDGER-govDepsMatch : {Γ : LEnv}{s s' : LState}{tx : Tx}
                      → Tx.isValid tx ≡ true
                      → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                      → govDepsMatch s → govDepsMatch s'
LEDGER-govDepsMatch {Γ} s@{⟦ utxoSt , govSt , certState ⟧ˡ}
  s'@{.(⟦ utxoSt' , govSt' , certState' ⟧ˡ)} {tx} txIsValid
  (_⊢_⇀⦇_,LEDGER⦈_.LEDGER {utxoSt' = utxoSt'} {certState'} {govSt'} x) aprioriMatch =
  begin
    gDeps-utxoSt'              ≈⟨ i ⟩
    gDeps-utxoSt ∪ newGovDeps  ≈⟨ ∪-cong aprioriMatch ≡ᵉ.refl ⟩
    gDeps-govSt ∪ newGovDeps   ≈˘⟨ ii ⟩
    gDeps-govSt'               ∎
  where
  open SetoidReasoning ≡ᵉ-Setoid; open UTxOState using (deposits)
  txb : TxBody
  txb = Tx.body tx; open TxBody txb; open LEnv Γ
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose})
  gDeps-utxoSt gDeps-utxoSt' gDeps-govSt gDeps-govSt' : ℙ DepositPurpose
  gDeps-utxoSt  = filterˢ isGADeposit (dom (utxoSt .deposits)) -- GA deposits in old UTXO state
  gDeps-utxoSt' = filterˢ isGADeposit (dom (utxoSt' .deposits)) -- GA deposits in the new UTXO state
  gDeps-govSt   = fromList (govDepPurposes govSt) -- GA deposits in the old GovState
  gDeps-govSt'  = fromList (govDepPurposes govSt') -- GA deposits in the new GovState

  -- It suffices to show that gDeps-utxoSt and gDeps-govSt change by the same amount.
  -- That is, we will prove there is some set
  newGovDeps : ℙ DepositPurpose
  newGovDeps = filterˢ isGADeposit (dom (depositsChangeˢ pparams txb))
  -- such that:


  ⊢utxo : ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXO⦈ utxoSt'
  ⊢utxo with (proj₁ x)
  ...| UTXOW-inductive (_ , _ , _ , _ , _ , h) = h

  ⊢utxo' : ∙ record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
  ⊢utxo' with ⊢utxo
  ...| UTXO-inductive {tx}{Γ}{s} (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , h) = h


  ⊢utxo'' : ∙ record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
          ────────────────────────────────
          (utxoSt' .deposits) ≡ (updateDeposits pparams txb (utxoSt .deposits))
  ⊢utxo'' (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) = refl
  ⊢utxo'' (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = ⊥-elim (¬ft (trans (sym txIsValid) (proj₂ u)))
    where
    ¬ft : ¬ (true ≡ false)
    ¬ft ()

  updateDeps≡ : utxoSt' .deposits ≡ updateDeposits pparams txb (utxoSt .deposits)
  updateDeps≡ = ⊢utxo'' ⊢utxo'

  updateDeps-dom≡ : dom (utxoSt' .deposits) ≡ dom (updateDeposits pparams txb (utxoSt .deposits))
  updateDeps-dom≡ = cong dom updateDeps≡

  updateDeps-dom≡ᵉ : dom (utxoSt' .deposits) ≡ᵉ dom (updateDeposits pparams txb (utxoSt .deposits))
  updateDeps-dom≡ᵉ = ≡ᵉ.reflexive updateDeps-dom≡


  dom-∪ : dom (updateDeposits pparams txb (utxoSt .deposits))
               ≡ᵉ (dom (utxoSt .deposits)) ∪ dom (depositsChangeˢ pparams txb)
  dom-∪ = {!!}

  i : filterˢ isGADeposit (dom (utxoSt' .deposits))
      ≡ᵉ filterˢ isGADeposit (dom (utxoSt .deposits)) ∪ newGovDeps

  i = begin
      filterˢ isGADeposit (dom (utxoSt' .deposits))
        ≈⟨ filter-pres-≡ᵉ updateDeps-dom≡ᵉ ⟩
      filterˢ isGADeposit (dom (updateDeposits pparams txb (utxoSt .deposits)))
        ≈⟨ filter-pres-≡ᵉ dom-∪ ⟩
      filterˢ isGADeposit (dom (utxoSt .deposits) ∪ dom (depositsChangeˢ pparams txb))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (utxoSt .deposits)) ∪ filterˢ isGADeposit (dom (depositsChangeˢ pparams txb))
        ∎

  ii : fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
       ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt) ∪ newGovDeps
  ii = begin
       fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
         ≈⟨ {!!} ⟩
       fromList (map (λ where (id , _) → GovActionDeposit id) govSt) ∪ newGovDeps
         ∎


  -- (below are some assumptions that might be useful) --

  γ : ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
      ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
  γ = (proj₁ x) , (proj₂ (proj₂ x))



  -- gmsc' : record { LEnv Γ } ⊢  utxoSt ⇀⦇ tx ,UTXO⦈ utxoSt'
  --        → ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢  govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
  --        → filterˢ isGADeposit (dom (utxoSt .deposits)) ≡ᵉ fromList (govDepPurposes govSt)
  --          -------------------------------------------------------------------
  --        → filterˢ isGADeposit (dom (utxoSt' .deposits)) ≡ᵉ fromList (govDepPurposes govSt')

  -- gmsc' step@(UTXO-inductive⋯ tx Γ utxoState _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _) hg premise = {!!}

  -- Notes:
  -- In the `_⊢_⇀⦇_,GOV⦈_` rule, the third argument (`txgov txb` here) is a `List (GovVote ⊎ GovProposal)`.
  -- Only the `GovProposal` has a deposits field, so we should filter the `GovProposal`s from the list.
  -- In the `GOV-Propose` constructor of the `_⊢_⇀⦇_,GOV⦈_` type, the `govSt : GovState` is updated
  -- as follows:
  --   govSt' = addAction govSt (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
  -- where
  --   addAction : GovState
  --             → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
  --             → GovState
  --   addAction govSt e aid addr a prev = govSt ∷ʳ (aid , record
  --     { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })
  --
  -- The third argument of the helper type `_⊢_⇀⦇_,GOV'⦈_` is meant to be a single `GovVote ⊎ GovProposal`
  -- and, in the GovProposal instance, it is `inj₂ prop`, where
  --
  --   prop = record { returnAddr = addr ; action = a ; anchor = x
  --                 ; policy = p ; deposit = d ; prevAction = prev }
  --
  -- Question: How to show the deposit field in `prop` yields a new deposit added to govSt'?
  -- Question: Is ordinary union what we want?
  -- Question: What about a `GovActionDeposit id` that already shows up in govSt?
  -- Question: What about epoch boundaries? (out of scope)
  -- Question: Is state fresh/valid?  Valid transition doesn't necessarily mean valid state.
