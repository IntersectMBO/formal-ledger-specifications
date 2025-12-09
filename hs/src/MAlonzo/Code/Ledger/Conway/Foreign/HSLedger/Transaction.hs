{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Tag = Spend  | Mint  | Cert  | Rewrd  | Vote  | Propose 
  deriving (Show, Eq, Generic)
data Timelock = RequireAllOf [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireAnyOf [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireMOf Integer [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireSig Integer | RequireTimeStart Integer | RequireTimeExpire Integer
  deriving (Show, Eq, Generic)
data HSTimelock = HSTimelock {timelock :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock, tlScriptHash :: Integer, tlScriptSize :: Integer}
 deriving (Show, Eq, Generic)
data HSPlutusScript = MkHSPlutusScript {psScriptHash :: Integer, psScriptSize :: Integer}
 deriving (Show, Eq, Generic)
data TxWitnesses = MkTxWitnesses {vkSigs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.HSVKey Integer), scripts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)), txdats :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), txrdmrs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Tag, Integer) (Integer, (Integer, Integer)))}
 deriving (Show, Eq, Generic)
data TxBody = MkTxBody {txIns :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), refInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), collateralInputs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet (Integer, Integer)), txOuts :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))), txId :: Integer, txCerts :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DCert], txFee :: Integer, txWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RewardAddress Integer), txVldt :: ((Maybe Integer), (Maybe Integer)), txADhash :: (Maybe Integer), txDonation :: Integer, txGovVotes :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote], txGovProposals :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.GovProposal], txNetworkId :: (Maybe Integer), currentTreasury :: (Maybe Integer), mint :: Integer, reqSignerHashes :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), scriptIntegrityHash :: (Maybe Integer)}
 deriving (Show, Eq, Generic)
data Tx = MkTx {body :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.TxBody, wits :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.TxWitnesses, txsize :: Integer, isValid :: Bool, txAD :: (Maybe Integer)}
 deriving (Show, Eq, Generic)
type TxId = Integer
type Ix = Integer
type TxIn = (Integer, Integer)
type P1Script = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock
type P2Script = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript
type Script = (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)
type Datum = Integer
type DataHash = Integer
type Value = Integer
type TxOut = ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))
type RdmrPtr = (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Tag, Integer)
type ScriptHash = Integer
type AuxiliaryData = Integer
type Withdrawals = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RewardAddress Integer)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.DCertsOf
d_DCertsOf_12 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_2284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_DCertsOf_12 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_2292
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.GovProposalsOf
d_GovProposalsOf_14 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_2304 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_14 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_2312
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasDCerts
d_HasDCerts_16 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasDCerts-Tx
d_HasDCerts'45'Tx_20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_2284
d_HasDCerts'45'Tx_20
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_2370
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasDonations-Tx
d_HasDonations'45'Tx_22 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_22
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_2380
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasDonations-TxBody
d_HasDonations'45'TxBody_24 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_24
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_2340
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasFees-Tx
d_HasFees'45'Tx_26 :: MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_26
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_2368
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasGovProposals
d_HasGovProposals_28 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_32 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_2304
d_HasGovProposals'45'Tx_32
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_2372
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxBody
d_HasTxBody_34 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxBody-Tx
d_HasTxBody'45'Tx_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_2264
d_HasTxBody'45'Tx_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_2366
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxId
d_HasTxId_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxId-Tx
d_HasTxId'45'Tx_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_2324
d_HasTxId'45'Tx_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_2378
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_46 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_2376
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_48 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_2374
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx
d_Tx_50 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody
d_TxBody_54 = ()
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBodyOf
d_TxBodyOf_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_2264 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_TxBodyOf_58 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_2272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxIdOf
d_TxIdOf_60 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_2324 ->
  AgdaAny -> Integer
d_TxIdOf_60 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_2332
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.lookupScriptHash
d_lookupScriptHash_62 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_62
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_lookupScriptHash_2440
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Transaction._.refScripts
d_refScripts_64 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_64
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_refScripts_2382
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Transaction._.txscripts
d_txscripts_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_66
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_txscripts_2430
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasDCerts.DCertsOf
d_DCertsOf_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_2284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_DCertsOf_70 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_2292
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_2304 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_2312
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxBody.TxBodyOf
d_TxBodyOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_2264 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_TxBodyOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_2272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.HasTxId.TxIdOf
d_TxIdOf_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_2324 ->
  AgdaAny -> Integer
d_TxIdOf_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_2332
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx.body
d_body_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_body_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx.isValid
d_isValid_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Bool
d_isValid_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx.txAD
d_txAD_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Maybe Integer
d_txAD_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx.txsize
d_txsize_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Integer
d_txsize_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.Tx.wits
d_wits_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
d_wits_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.collateralInputs
d_collateralInputs_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_98 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.currentTreasury
d_currentTreasury_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Maybe Integer
d_currentTreasury_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2250
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.mint
d_mint_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_mint_102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2252
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.refInputs
d_refInputs_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.reqSignerHashes
d_reqSignerHashes_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [Integer]
d_reqSignerHashes_106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_2254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Maybe Integer
d_scriptIntegrityHash_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_2256
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txADhash
d_txADhash_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Maybe Integer
d_txADhash_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txCerts
d_txCerts_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txDonation
d_txDonation_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_txDonation_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_2242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txFee
d_txFee_116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_txFee_116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txGovProposals
d_txGovProposals_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txGovVotes
d_txGovVotes_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txId
d_txId_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_txId_122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txIns
d_txIns_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txNetworkId
d_txNetworkId_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Maybe Integer
d_txNetworkId_126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txOuts
d_txOuts_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txVldt
d_txVldt_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction._.TxBody.txWithdrawals
d_txWithdrawals_132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Tag
d_HsTy'45'Tag_134 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tag_134 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Tag
d_Conv'45'Tag_136 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tag_136
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Spend_10
                -> coe C_Spend_221
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Mint_12
                -> coe C_Mint_223
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Cert_14
                -> coe C_Cert_225
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Rewrd_16
                -> coe C_Rewrd_227
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Vote_18
                -> coe C_Vote_229
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Propose_20
                -> coe C_Propose_231
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_221
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Spend_10
              C_Mint_223
                -> coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Mint_12
              C_Cert_225
                -> coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Cert_14
              C_Rewrd_227
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Rewrd_16
              C_Vote_229
                -> coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Vote_18
              C_Propose_231
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Propose_20
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Timelock
d_HsTy'45'Timelock_138 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Timelock_138 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Timelock
d_Conv'45'Timelock_140 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Timelock_140 = coe d_'46'extendedlambda_917
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-HSTimelock
d_HsTy'45'HSTimelock_142 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSTimelock_142 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-HSTimelock
d_Conv'45'HSTimelock_144 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSTimelock_144
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Script.C_constructor_372 v1 v2 v3
                -> coe
                     C_HSTimelock_2393
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18 d_'46'extendedlambda_917
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_HSTimelock_2393 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.C_constructor_372
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20 d_'46'extendedlambda_917
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-HSPlutusScript
d_HsTy'45'HSPlutusScript_146 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSPlutusScript_146 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-HSPlutusScript
d_Conv'45'HSPlutusScript_148 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSPlutusScript_148
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Script.C_MkHSPlutusScript_388 v1 v2
                -> coe C_MkHSPlutusScript_3487 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSPlutusScript_3487 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.C_MkHSPlutusScript_388
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-TxWitnessess
d_HsTy'45'TxWitnessess_150 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxWitnessess_150 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-TxWitnessess
d_Conv'45'TxWitnessess_152 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxWitnessess_152
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3274 v1 v2 v3 v4
                -> coe
                     C_MkTxWitnesses_4111
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe d_Conv'45'HSTimelock_144) (coe d_Conv'45'HSPlutusScript_148)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe d_Conv'45'Tag_136)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxWitnesses_4111 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3274
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe d_Conv'45'HSTimelock_144) (coe d_Conv'45'HSPlutusScript_148)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v3))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Tag_22
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe d_Conv'45'Tag_136)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v4)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-TxBody
d_HsTy'45'TxBody_154 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxBody_154 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-TxBody
d_Conv'45'TxBody_156 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxBody_156
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
                -> coe
                     C_MkTxBody_12223
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v3))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe d_Conv'45'HSTimelock_144)
                                                (coe d_Conv'45'HSPlutusScript_148))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe
                              (\ v19 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v9)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           v17))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v18)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBody_12223 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2258
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v3))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe d_Conv'45'HSTimelock_144)
                                          (coe d_Conv'45'HSPlutusScript_148)))))))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v4)))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                        v6)
                     (coe v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v19
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v20
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                         (coe v19) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                          (coe v20)))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                             (coe v20))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                          (coe v20))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v8)))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           (\ v19 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v9))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                        v12)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe v16)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                              (coe v17))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v18)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Tx
d_HsTy'45'Tx_158 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tx_158 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Tx
d_Conv'45'Tx_160 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tx_160
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2364 v1 v2 v3 v4 v5
                -> coe
                     C_MkTx_95577
                     (coe
                        C_MkTxBody_12223
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2224
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2226
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                   (coe d_Conv'45'HSTimelock_144)
                                                   (coe d_Conv'45'HSPlutusScript_148))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
                           (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2234
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2236
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2238
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2240
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_2242
                           (coe v1))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2244
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2248
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2250
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2252
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_2254
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_2256
                              (coe v1))))
                     (coe
                        C_MkTxWitnesses_4111
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3264
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                    (coe d_Conv'45'HSTimelock_144)
                                    (coe d_Conv'45'HSPlutusScript_148)))
                              (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3266
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3268
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe d_Conv'45'Tag_136)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3270
                                    (coe v2))))))
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTx_95577 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2364
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2258 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          C_MkTxBody_12223
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe d_Conv'45'HSTimelock_144)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_148))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14))))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v25 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v15)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v16)
                                          (coe v17)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                v23))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v24)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxBody_12223 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_2258
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                               (coe d_Conv'45'HSTimelock_144)
                                                               (coe
                                                                  d_Conv'45'HSPlutusScript_148)))))))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v10)))
                                          (coe v11)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                             v12)
                                          (coe v13)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v25
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v26
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                              (coe v25) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                               (coe v26)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                                                  (coe v26))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                                               (coe v26))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v14)))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                (\ v25 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v15))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v16)
                                          (coe v17)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v20)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v21)
                                          (coe v22)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v24)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3274 v7 v8 v9 v10
                                     -> coe
                                          C_MkTxWitnesses_4111
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe d_Conv'45'HSTimelock_144)
                                                      (coe d_Conv'45'HSPlutusScript_148)))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe d_Conv'45'Tag_136)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkTxWitnesses_4111 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3274
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                      (coe d_Conv'45'HSTimelock_144)
                                                      (coe d_Conv'45'HSPlutusScript_148)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_456
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Tag_22
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe d_Conv'45'Tag_136)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v10)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3) (coe v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.Tag
d_Tag_219 = ()
type T_Tag_219 = Tag
pattern C_Spend_221 = Spend
pattern C_Mint_223 = Mint
pattern C_Cert_225 = Cert
pattern C_Rewrd_227 = Rewrd
pattern C_Vote_229 = Vote
pattern C_Propose_231 = Propose
check_Spend_221 :: T_Tag_219
check_Spend_221 = Spend
check_Mint_223 :: T_Tag_219
check_Mint_223 = Mint
check_Cert_225 :: T_Tag_219
check_Cert_225 = Cert
check_Rewrd_227 :: T_Tag_219
check_Rewrd_227 = Rewrd
check_Vote_229 :: T_Tag_219
check_Vote_229 = Vote
check_Propose_231 :: T_Tag_219
check_Propose_231 = Propose
cover_Tag_219 :: Tag -> ()
cover_Tag_219 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.Timelock
d_Timelock_351 = ()
type T_Timelock_351 = Timelock
pattern C_RequireAllOf_353 a0 = RequireAllOf a0
pattern C_RequireAnyOf_375 a0 = RequireAnyOf a0
pattern C_RequireMOf_397 a0 a1 = RequireMOf a0 a1
pattern C_RequireSig_433 a0 = RequireSig a0
pattern C_RequireTimeStart_459 a0 = RequireTimeStart a0
pattern C_RequireTimeExpire_497 a0 = RequireTimeExpire a0
check_RequireAllOf_353 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_351 ->
  T_Timelock_351
check_RequireAllOf_353 = RequireAllOf
check_RequireAnyOf_375 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_351 ->
  T_Timelock_351
check_RequireAnyOf_375 = RequireAnyOf
check_RequireMOf_397 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_351 ->
  T_Timelock_351
check_RequireMOf_397 = RequireMOf
check_RequireSig_433 :: Integer -> T_Timelock_351
check_RequireSig_433 = RequireSig
check_RequireTimeStart_459 :: Integer -> T_Timelock_351
check_RequireTimeStart_459 = RequireTimeStart
check_RequireTimeExpire_497 :: Integer -> T_Timelock_351
check_RequireTimeExpire_497 = RequireTimeExpire
cover_Timelock_351 :: Timelock -> ()
cover_Timelock_351 x
  = case x of
      RequireAllOf _ -> ()
      RequireAnyOf _ -> ()
      RequireMOf _ _ -> ()
      RequireSig _ -> ()
      RequireTimeStart _ -> ()
      RequireTimeExpire _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction..extendedlambda
d_'46'extendedlambda_917 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_'46'extendedlambda_917
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireAllOf_106 v1
                -> coe
                     C_RequireAllOf_353
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_140))
                        v1)
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireAnyOf_108 v1
                -> coe
                     C_RequireAnyOf_375
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_140))
                        v1)
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireMOf_110 v1 v2
                -> coe
                     C_RequireMOf_397 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_140))
                        v2)
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireSig_112 v1
                -> coe C_RequireSig_433 (coe v1)
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireTimeStart_114 v1
                -> coe C_RequireTimeStart_459 (coe v1)
              MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireTimeExpire_116 v1
                -> coe C_RequireTimeExpire_497 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RequireAllOf_353 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireAllOf_106
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_140))
                        v1)
              C_RequireAnyOf_375 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireAnyOf_108
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_140))
                        v1)
              C_RequireMOf_397 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireMOf_110
                     (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_140))
                        v2)
              C_RequireSig_433 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireSig_112
                     (coe v1)
              C_RequireTimeStart_459 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireTimeStart_114
                     (coe v1)
              C_RequireTimeExpire_497 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.C_RequireTimeExpire_116
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock
d_HSTimelock_2391 = ()
type T_HSTimelock_2391 = HSTimelock
pattern C_HSTimelock_2393 a0 a1 a2 = HSTimelock a0 a1 a2
check_HSTimelock_2393 ::
  T_Timelock_351 -> Integer -> Integer -> T_HSTimelock_2391
check_HSTimelock_2393 = HSTimelock
cover_HSTimelock_2391 :: HSTimelock -> ()
cover_HSTimelock_2391 x
  = case x of
      HSTimelock _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript
d_HSPlutusScript_3485 = ()
type T_HSPlutusScript_3485 = HSPlutusScript
pattern C_MkHSPlutusScript_3487 a0 a1 = MkHSPlutusScript a0 a1
check_MkHSPlutusScript_3487 ::
  Integer -> Integer -> T_HSPlutusScript_3485
check_MkHSPlutusScript_3487 = MkHSPlutusScript
cover_HSPlutusScript_3485 :: HSPlutusScript -> ()
cover_HSPlutusScript_3485 x
  = case x of
      MkHSPlutusScript _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.TxWitnesses
d_TxWitnesses_4109 = ()
type T_TxWitnesses_4109 = TxWitnesses
pattern C_MkTxWitnesses_4111 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_MkTxWitnesses_4111 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_HSVKey_15
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () T_HSTimelock_2391 T_HSPlutusScript_3485) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_219 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_4109
check_MkTxWitnesses_4111 = MkTxWitnesses
cover_TxWitnesses_4109 :: TxWitnesses -> ()
cover_TxWitnesses_4109 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.TxBody
d_TxBody_12221 = ()
type T_TxBody_12221 = TxBody
pattern C_MkTxBody_12223 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17
check_MkTxBody_12223 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () ()
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BaseAddr_1327
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BootstrapAddr_3129)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSTimelock_2391 T_HSPlutusScript_3485))))) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_17755 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_RewardAddress_4499
    Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_GovVote_5373 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovProposal_7781 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxBody_12221
check_MkTxBody_12223 = MkTxBody
cover_TxBody_12221 :: TxBody -> ()
cover_TxBody_12221 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.Tx
d_Tx_95575 = ()
type T_Tx_95575 = Tx
pattern C_MkTx_95577 a0 a1 a2 a3 a4 = MkTx a0 a1 a2 a3 a4
check_MkTx_95577 ::
  T_TxBody_12221 ->
  T_TxWitnesses_4109 ->
  Integer ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer -> T_Tx_95575
check_MkTx_95577 = MkTx
cover_Tx_95575 :: Tx -> ()
cover_Tx_95575 x
  = case x of
      MkTx _ _ _ _ _ -> ()
