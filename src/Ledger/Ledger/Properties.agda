{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Deleg.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

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

private variable
  tx : Tx
  Γ : LEnv
  s s' : LState
  l : List Tx

FreshTx : Tx → LState → Set
FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
  where open Tx; open TxBody; open UTxOState; open LState

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
govDepsMatch s = let open UTxOState; open LState s in
  filterˢ isGADeposit (dom (utxoSt .deposits ))
  ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

-- LEDGER-govDepsMatch : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
--                       → govDepsMatch s → govDepsMatch s'
-- LEDGER-govDepsMatch h (LEDGER⋯ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _) gms = {!!}
