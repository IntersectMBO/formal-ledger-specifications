---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/BlockBody.lagda.md
---

```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.BlockBody
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure using (EBCert)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (EndorserBlock; Announcement)
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs using (totExUnits)

open LeiosCryptoStructure leiosCryptoStructure using (RBHeaderHash)

record BHBody : Type where
  field
    bvkcold      : VKey
    bsize        : ℕ
    slot         : Slot
    bhash        : KeyHash
    hBbsize      : ℕ
    announcedEB  : Maybe Announcement
    certifiedEB  : Bool

record BHeader : Type where
  field
    bhbody : BHBody
    bhsig  : Sig

record CertifiedEB : Type where
  field
    cert     : EBCert
    eb       : EndorserBlock
    closure  : List TopLevelTx

record Block : Type where
  field
    bheader      : BHeader
    bHeaderHash  : RBHeaderHash
    ts           : List TopLevelTx
    ebCert       : Maybe CertifiedEB
    bBodySize    : ℕ
    bBodyHash    : KeyHash
    ≡-bBodySize  : bBodySize ≡ BHBody.hBbsize (BHeader.bhbody bheader)
    ≡-bBodyHash  : bBodyHash ≡ BHBody.bhash (BHeader.bhbody bheader)

BBodyEnv : Type
BBodyEnv = EnactState × Acnt

BBodyState : Type
BBodyState = LedgerState × BlocksMade

incrBlocks : KeyHash → BlocksMade → BlocksMade
incrBlocks hk b = b ∪⁺ singletonᵐ hk 1

leiosBodyChecks : Bool → Maybe CertifiedEB → List TopLevelTx → Type
leiosBodyChecks certified nothing   _    = certified ≡ false
leiosBodyChecks certified (just _)  txs  = certified ≡ true × txs ≡ []

leiosBodyChecks? : ∀ certified ebCert txs → Dec (leiosBodyChecks certified ebCert txs)
leiosBodyChecks? certified nothing  _       = certified ≟ false
leiosBodyChecks? certified (just _) (_ ∷ _) = no λ { (_ , ()) }
leiosBodyChecks? certified (just _) []      with certified ≟ true
... | yes p = yes (p , refl)
... | no ¬p = no (¬p ∘ proj₁)

instance
  Dec-leiosBodyChecks : ∀ {certified ebCert txs} → leiosBodyChecks certified ebCert txs ⁇
  Dec-leiosBodyChecks = ⁇ (leiosBodyChecks? _ _ _)

data _⊢_⇀⦇_,BBODY⦈_
  : BBodyEnv → BBodyState → Block → BBodyState → Type where

  BBODY-Block-Body :
    {acnt    : Acnt}
    {ls ls'  : LedgerState}
    {b       : BlocksMade}
    {block   : Block}
    {es      : EnactState} →

    let
      open BHeader
      open BHBody
      open Block
      open EnactState
      txs = block .ts
      bhb = block .bheader .bhbody
      hk = hash (bhb .bvkcold)
      pp = PParamsOf es
      Γ  = ⟦ bhb .slot , ∣ es .constitution ∣ , pp , es , TreasuryOf acnt ⟧
     in

    ∙ block .bBodySize ≡ bhb .hBbsize
    ∙ block .bBodyHash ≡ bhb .bhash
    ∙ leiosBodyChecks (bhb .certifiedEB) (block .ebCert) txs
    ∙ PParams.maxBlockExUnits pp ≥ᵉ (∑ˡ[ tx ← txs ] totExUnits tx)
    ∙ Γ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (ls' , incrBlocks hk b)
```
