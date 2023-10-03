{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ledger.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov govStructure
open import Ledger.Utxo txs
import Ledger.Utxo.Properties txs as P
open import Ledger.Utxow txs
import Ledger.Utxow.Properties txs as PW
open import Ledger.Ledger txs

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
      where
      utxoΓ = UTxOEnv ∋ record{ LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams ⟧ᵗ

      module _ (cs : CertState) where
        LEDGER-premises : Set
        LEDGER-premises = mapˢ RwdAddr.stake (dom (txwdrls ˢ))
                        ⊆ dom (cs .CertState.dState .DState.voteDelegs ˢ)

        LEDGER-premises? = ¿ LEDGER-premises ¿

      computeProof : Maybe (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        (certSt' , certStep) ← computeCerts certΓ certSt txcerts
        (govSt'  , govStep)  ← computeGov   govΓ  govSt  (txgov txb)
        case LEDGER-premises? certSt' of λ where
          (yes h) → just (_ , LEDGER utxoStep certStep govStep h)
          (no _)  → nothing
        where open import Data.Maybe hiding (map)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ just s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER utxoStep certStep govStep h)
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | just (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | just (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
      ... | just (govSt' , _) | refl
        rewrite dec-yes (LEDGER-premises? certSt') h .proj₂ = refl

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
FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo ˢ))
  where open Tx; open TxBody; open UTxOState; open LState

LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
LEDGER-pov h (LEDGER (UTXOW-inductive _ _ _ _ _ st) _ _ _) = P.pov h st

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
