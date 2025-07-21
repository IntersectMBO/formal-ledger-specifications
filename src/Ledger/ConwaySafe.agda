{-# OPTIONS --safe #-}
module Ledger.ConwaySafe where

-- ** Cardano ledger in the Coway era
import Ledger.Core.Specification.Address
import Ledger.Conway.Specification.Certs
import Ledger.Conway.Specification.Certs.Properties
import Ledger.Conway.Specification.Certs.Properties.PoV
import Ledger.Conway.Specification.Certs.Properties.PoVLemmas
import Ledger.Conway.Specification.Certs.Properties.VoteDelegsVDeleg
import Ledger.Conway.Specification.Chain
import Ledger.Conway.Specification.Chain.Properties
import Ledger.Conway.Specification.Chain.Properties.CredDepsEqualDomRwds
import Ledger.Conway.Specification.Chain.Properties.EpochStep
import Ledger.Conway.Specification.Chain.Properties.GovDepsMatch
import Ledger.Conway.Specification.Chain.Properties.PParamsWellFormed
import Ledger.Conway.Specification.Enact
import Ledger.Conway.Specification.Enact.Properties
import Ledger.Conway.Specification.Epoch
import Ledger.Conway.Specification.Epoch.Properties
import Ledger.Conway.Specification.Epoch.Properties.ConstRwds
import Ledger.Conway.Specification.Epoch.Properties.GovDepsMatch
import Ledger.Conway.Specification.Epoch.Properties.NoPropSameDReps
import Ledger.Conway.Specification.Fees
import Ledger.Conway.Specification.Gov
import Ledger.Conway.Specification.Gov.Actions
import Ledger.Conway.Specification.Gov.Properties
import Ledger.Conway.Specification.Gov.Properties.ChangePPGroup
import Ledger.Conway.Specification.Ledger
import Ledger.Conway.Specification.Ledger.Properties
import Ledger.Conway.Specification.Ledger.Properties.GovDepsMatch
import Ledger.Conway.Specification.Ledger.Properties.PoV
import Ledger.Conway.Specification.PParams
import Ledger.Conway.Specification.Properties
import Ledger.Conway.Specification.Ratify
import Ledger.Conway.Specification.Ratify.Properties
import Ledger.Conway.Specification.Rewards
import Ledger.Conway.Specification.Script
import Ledger.Conway.Specification.Script.Validation
import Ledger.Conway.Specification.Test.Examples
import Ledger.Conway.Specification.TokenAlgebra.Base
import Ledger.Conway.Specification.TokenAlgebra.Coin
import Ledger.Conway.Specification.TokenAlgebra.ValueSet
import Ledger.Conway.Specification.TokenAlgebra.ValueVector
import Ledger.Conway.Specification.Transaction
import Ledger.Conway.Specification.Types.GovStructure
import Ledger.Conway.Specification.Utxo
import Ledger.Conway.Specification.Utxo.Properties
import Ledger.Conway.Specification.Utxo.Properties.MinSpend
import Ledger.Conway.Specification.Utxo.Properties.PoV
import Ledger.Conway.Specification.Utxow
import Ledger.Conway.Specification.Utxow.Properties

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
