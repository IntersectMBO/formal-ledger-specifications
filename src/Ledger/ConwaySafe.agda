{-# OPTIONS --safe #-}
module Ledger.ConwaySafe where

-- ** Cardano ledger in the Coway era
import Ledger.Conway.Address
import Ledger.Conway.Certs
import Ledger.Conway.Certs.Properties
import Ledger.Conway.Certs.Properties.PoV
import Ledger.Conway.Certs.Properties.PoVLemmas
import Ledger.Conway.Certs.Properties.VoteDelegsVDeleg
import Ledger.Conway.Chain
import Ledger.Conway.Chain.Properties
import Ledger.Conway.Chain.Properties.CredDepsEqualDomRwds
import Ledger.Conway.Chain.Properties.EpochStep
import Ledger.Conway.Chain.Properties.GovDepsMatch
import Ledger.Conway.Chain.Properties.PParamsWellFormed
import Ledger.Conway.Enact
import Ledger.Conway.Epoch
import Ledger.Conway.Epoch.Properties
import Ledger.Conway.Epoch.Properties.ConstRwds
import Ledger.Conway.Epoch.Properties.GovDepsMatch
import Ledger.Conway.Epoch.Properties.NoPropSameDReps
import Ledger.Conway.Fees
import Ledger.Conway.Gov
import Ledger.Conway.Gov.Properties
import Ledger.Conway.GovernanceActions
import Ledger.Conway.GovernanceActions.Properties
import Ledger.Conway.GovernanceActions.Properties.ChangePPGroup
import Ledger.Conway.Ledger
import Ledger.Conway.Ledger.Properties
import Ledger.Conway.Ledger.Properties.GovDepsMatch
import Ledger.Conway.Ledger.Properties.PoV
import Ledger.Conway.PParams
import Ledger.Conway.Properties
import Ledger.Conway.Ratify
import Ledger.Conway.Ratify.Properties
import Ledger.Conway.Rewards
import Ledger.Conway.Script
import Ledger.Conway.Script.Validation
import Ledger.Conway.TokenAlgebra.Base
import Ledger.Conway.TokenAlgebra.Coin
import Ledger.Conway.TokenAlgebra.ValueSet
import Ledger.Conway.TokenAlgebra.ValueVector
import Ledger.Conway.Transaction
import Ledger.Conway.Types.GovStructure
import Ledger.Conway.Utxo
import Ledger.Conway.Utxo.Properties
import Ledger.Conway.Utxo.Properties.MinSpend
import Ledger.Conway.Utxo.Properties.PoV
import Ledger.Conway.Utxow
import Ledger.Conway.Utxow.Properties

-- ** Agda
import EssentialAgda

-- ** Conformance test reconciliation
import Ledger.Conway.Conformance.Certs
import Ledger.Conway.Conformance.Certs.Properties
import Ledger.Conway.Conformance.Chain
import Ledger.Conway.Conformance.Chain.Properties
import Ledger.Conway.Conformance.Equivalence
import Ledger.Conway.Conformance.Epoch
import Ledger.Conway.Conformance.Epoch.Properties
import Ledger.Conway.Conformance.Gov
import Ledger.Conway.Conformance.Ledger
import Ledger.Conway.Conformance.Ledger.Properties
import Ledger.Conway.Conformance.Properties
import Ledger.Conway.Conformance.Utxo
import Ledger.Conway.Conformance.Utxo.Properties
import Ledger.Conway.Conformance.Utxow
import Ledger.Conway.Conformance.Utxow.Properties
import Ledger.Conway.Conformance.Script

-- -- ** Not currently used
import iog-prelude.Tactic.DeriveComp
