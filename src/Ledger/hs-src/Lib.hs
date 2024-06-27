module Lib
  ( module X
  , module Lib
  ) where

import MAlonzo.Code.Ledger.Foreign.HSTypes              as X (HSSet(..), HSMap(..), ComputationResult(..))

import MAlonzo.Code.Ledger.Foreign.HSLedger.Address     as X (Credential(..), BaseAddr(..), BootstrapAddr(..), RwdAddr(..))
import MAlonzo.Code.Ledger.Foreign.HSLedger.PParams     as X (DrepThresholds(..), PoolThresholds(..), Acnt(..), PParams(..), PParamsUpdate(..))
import MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction as X (Tag(..), Timelock(..), TxWitnesses(..), TxBody(..), Tx(..))
import MAlonzo.Code.Ledger.Foreign.HSLedger.Cert        as X (CertState(..), certsStep', certStep')
import MAlonzo.Code.Ledger.Foreign.HSLedger.Chain       as X (ChainState(..), Block(..), chainStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Certs       as X (PoolParams(..), PState(..), DelegEnv(..), CertEnv(..), DState(..), DCert(..), GState(..), delegStep, govCertStep, poolStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Enact       as X (EnactState(..), EnactEnv(..), enactStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch       as X (Snapshot(..), Snapshots(..), EpochState(..), epochStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Gov         as X (GovRole(..), Anchor(..), VDeleg(..), Vote(..), GovVote(..), GovEnv(..), GovProposal(..), GovActionState(..), govStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger      as X (LEnv(..), LState(..), ledgerStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch    as X (NewEpochState(..), newEpochStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify      as X (StakeDistrs(..), RatifyEnv(..), RatifyState(..), ratifyStep)
import MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo        as X (DepositPurpose(..), UTxOEnv(..), UTxOState(..), utxoStep, utxoStep', utxowStep)

type TxId = Integer

mkTxId :: Integer -> TxId
mkTxId = id

type Ix = Integer

type P1Script = Timelock
type P2Script = ()
type Script = Either P1Script P2Script

type Datum = ()
type DataHash = ()
type Value = Integer

type Addr = Either BaseAddr BootstrapAddr

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Value, (Maybe (Either Datum DataHash), Maybe Script)))

type UTxO = HSMap TxIn TxOut
