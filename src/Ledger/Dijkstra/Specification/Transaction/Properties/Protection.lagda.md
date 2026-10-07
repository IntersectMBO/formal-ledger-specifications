# Protection preserves output credentials and value

```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.Transaction.Properties.Protection
  (txs : TransactionStructure) where
open TransactionStructure txs
```

## Theorem: Protection preserves payment, stake and value {#thm:ProtectionPreservation}

```agda
protectAddress : Addr → Addr
protectAddress (inj₁ a) = inj₁ (protect a)
protectAddress (inj₂ a) = inj₂ a

protectOutput : TxOut → TxOut
protectOutput (a , rest) = protectAddress a , rest

payment-preservation : ∀ a → payCred (protectAddress a) ≡ payCred a
payment-preservation (inj₁ a) = refl
payment-preservation (inj₂ a) = refl

stake-preservation : ∀ a → stakeCred (protectAddress a) ≡ stakeCred a
stake-preservation (inj₁ a) = refl
stake-preservation (inj₂ a) = refl

value-preservation : ∀ o → txOutToValue (protectOutput o) ≡ txOutToValue o
value-preservation (a , rest) = refl
```

This operation leaves bootstrap addresses unchanged, because bootstrap addresses
have no protected form. The output's datum and reference script remain unchanged
as well. The actual creation rule separately requires the receiving witnesses.
