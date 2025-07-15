{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Gov
  (txs : _) (open TransactionStructure txs hiding (epoch))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ledger txs abs

open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert

open import Ledger.Conway.Specification.Gov txs using (GovState) public
import Ledger.Conway.Specification.Gov txs as L

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
  unquoteDecl HasCast-GovEnv = derive-HasCast
    [ (quote GovEnv , HasCast-GovEnv) ]

_⊢_⇀⦇_,GOVS⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
Γ ⊢ govSt ⇀⦇ gvps ,GOVS⦈ govSt'
  = ⟦ txid , epoch , pparams , ppolicy , enactState , conv certState ,
  rewardCreds ⟧ L.⊢ rmOrphanDRepVotes (conv certState) govSt  ⇀⦇ gvps ,GOVS⦈ govSt'
  where open GovEnv Γ
