module CardanoInterface where

--------------------------------------------------------------------------------
-- Cardano ledger interface
--
-- An abstract interface of the ledger, which should be used by
-- consensus and implemented by ledger.
--------------------------------------------------------------------------------

open import Data.Unit

record LedgerInterface : Set₁ where
  field
    Block Slot BBodyEnv BBodyState NewEpochState PParams : Set
    getPParams : NewEpochState → PParams
    _⊢_⇀⦇_,BBODY⦈_ : BBodyEnv → BBodyState → Block → BBodyState → Set
    _⊢_⇀⦇_,TICK⦈_  : ⊤ → NewEpochState → Slot → NewEpochState → Set
