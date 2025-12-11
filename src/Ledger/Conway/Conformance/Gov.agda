{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Gov
  (txs : TransactionStructure) (open TransactionStructure txs hiding (epoch))
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs using (GovState) public
import Ledger.Conway.Specification.Gov txs as L
open import Ledger.Conway.Specification.Ledger txs abs


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
