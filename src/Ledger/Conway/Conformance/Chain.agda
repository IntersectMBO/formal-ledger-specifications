
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Conformance.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Chain txs abs
  using (ChainState; totalRefScriptsSize)
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.BlockBody txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Certs govStructure


data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type where

  CHAIN : ∀ {bcur' ls'} {b : Block} {nes : NewEpochState} {cs : ChainState}

    → let open ChainState cs; open Block b; open BHeader bheader
          open BHBody bhbody; open NewEpochState nes
          open EpochState epochState; open EnactState es renaming (pparams to pp)
          open PParams ∣ pp ∣ using (maxRefScriptSizePerBlock) in

    let  cs'  = record cs {  newEpochState
                             = record nes {  bcur = bcur';
                                             epochState
                                             = record epochState {ls = ls'} } }
    in
    ∙ totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    ∙ tt ⊢ newEpochState ⇀⦇ slot ,TICK⦈ nes
    ∙ (es , acnt) ⊢ (ls , bcur) ⇀⦇ b ,BBODY⦈ (ls' , bcur')
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
