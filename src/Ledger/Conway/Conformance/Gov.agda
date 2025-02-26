{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Prelude
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Gov
  (txs : _) (open TransactionStructure txs hiding (epoch))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Enact govStructure
open import Ledger.Ledger txs abs

open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert

open import Ledger.Gov txs using (GovState) public
import Ledger.Gov txs as L

record GovEnv : Type where
  field
    txid        : TxId
    epoch       : Epoch
    pparams     : PParams
    ppolicy     : Maybe ScriptHash
    enactState  : EnactState
    certState   : CertState
    rewardCreds : ℙ Credential

instance
  unquoteDecl To-GovEnv = derive-To
    [ (quote GovEnv , To-GovEnv) ]

_⊢_⇀⦇_,GOV⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
Γ ⊢ govSt ⇀⦇ gvps ,GOV⦈ govSt'
  = ⟦ txid , epoch , pparams , ppolicy , enactState , conv certState , rewardCreds ⟧ L.⊢ govSt |ᵒ conv certState ⇀⦇ gvps ,GOV⦈ govSt'
  where open GovEnv Γ
