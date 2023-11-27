open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Deleg.Properties govStructure
open import Ledger.Gov govStructure
open import Ledger.Gov.Properties govStructure
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

-- ** Proof that LEDGER is computational.

instance
  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_
  Computational-LEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}
    computeCerts = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov   = comp {STS = _⊢_⇀⦇_,GOV⦈_}

    module go
      (Γ : LEnv)   (let ⟦ slot , ppolicy , pparams ⟧ˡᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      (let H? = λ {certSt'} → LEDGER-premises {tx}{certSt'} .proj₂)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams ⟧ᵗ

      computeProof : Maybe (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        (certSt' , certStep) ← computeCerts certΓ certSt txcerts
        (govSt'  , govStep)  ← computeGov   govΓ  govSt  (txgov txb)
        case H? {certSt'} of λ where
          (yes h) → just (_ , LEDGER⋯ utxoStep certStep govStep h)
          (no _)  → nothing
        where open import Data.Maybe hiding (map)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ just s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ
                   (LEDGER⋯ utxoStep certStep govStep h)
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | just (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | just (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
      ... | just (govSt' , _) | refl
        rewrite dec-yes (H? {certSt'}) h .proj₂ = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_
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
LEDGER-pov h (LEDGER⋯ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _ _) = pov h st

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
