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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data BHBody = MkBHBody {bhbBvkcold :: MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.HSVKey, bhbBsize :: Integer, bhbSlot :: Integer, bhbBhash :: Integer, bhbHBbsize :: Integer, bhbAnnouncedEB :: (Maybe (Integer, Integer)), bhbCertifiedEB :: Bool}
  deriving (Show, Eq, Generic)
data BHeader = MkBHeader {bhBhbody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.BHBody, bhBhsig :: Integer}
  deriving (Show, Eq, Generic)
data EBCert = MkEBCert {ebcSigners :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), ebcSig :: Integer}
  deriving (Show, Eq, Generic)
data EndorserBlock = MkEndorserBlock {ebTxRefs :: [(Integer, Integer)]}
  deriving (Show, Eq, Generic)
data ResolvedEB = MkResolvedEB {rebEb :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.EndorserBlock, rebClosure :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxTop]}
  deriving (Show, Eq, Generic)
data Block = MkBlock {bBheader :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.BHeader, bBHeaderHash :: Integer, bTs :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxTop], bEbCert :: (Maybe MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.EBCert), bBBodySize :: Integer, bBBodyHash :: Integer}
  deriving (Show, Eq, Generic)
data LastAppliedBlock = MkLastAppliedBlock {labSlot :: Integer, labHeaderHash :: Integer, labAnnouncedEB :: (Maybe (Integer, Integer))}
  deriving (Show, Eq, Generic)
data ChainState = MkChainState {csNewEpochState :: MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.NewEpochState, csLastApplied :: (Maybe MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.LastAppliedBlock)}
  deriving (Show, Eq, Generic)
-- Ledger.Dijkstra.Foreign.Chain._.EBCert
d_EBCert_10 = ()
-- Ledger.Dijkstra.Foreign.Chain._.EBCert.sig
d_sig_16 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  Integer
d_sig_16 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.EBCert.signers
d_signers_18 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [Integer]
d_signers_18 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.EndorserBlock
d_EndorserBlock_22 = ()
-- Ledger.Dijkstra.Foreign.Chain._.EndorserBlock.ebTxRefs
d_ebTxRefs_28 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_28 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__32 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Chain._._⊢_⇀⦇_,CERTIFY⦈_
d__'8866'_'8640''10631'_'44'CERTIFY'10632'__34 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Chain._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__36 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Chain._.Announcement
d_Announcement_38 :: ()
d_Announcement_38 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BBodyEnv
d_BBodyEnv_42 :: ()
d_BBodyEnv_42 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BBodyState
d_BBodyState_44 :: ()
d_BBodyState_44 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BHBody
d_BHBody_46 = ()
-- Ledger.Dijkstra.Foreign.Chain._.BHeader
d_BHeader_50 = ()
-- Ledger.Dijkstra.Foreign.Chain._.Block
d_Block_54 = ()
-- Ledger.Dijkstra.Foreign.Chain._.CertifyEnv
d_CertifyEnv_64 = ()
-- Ledger.Dijkstra.Foreign.Chain._.ChainState
d_ChainState_68 = ()
-- Ledger.Dijkstra.Foreign.Chain._.Dec-ValidLeiosBlock
d_Dec'45'ValidLeiosBlock_72 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidLeiosBlock_72
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_Dec'45'ValidLeiosBlock_3176
-- Ledger.Dijkstra.Foreign.Chain._.Dec-delayChecks
d_Dec'45'delayChecks_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'delayChecks_74
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_Dec'45'delayChecks_4630
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.HasCast-CertifyEnv
d_HasCast'45'CertifyEnv_76 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertifyEnv_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'CertifyEnv_4504
-- Ledger.Dijkstra.Foreign.Chain._.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_78 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_78
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4454
-- Ledger.Dijkstra.Foreign.Chain._.HasCertState-ChainState
d_HasCertState'45'ChainState_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908
d_HasCertState'45'ChainState_80
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCertState'45'ChainState_4468
-- Ledger.Dijkstra.Foreign.Chain._.HasEnactState-ChainState
d_HasEnactState'45'ChainState_82 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352
d_HasEnactState'45'ChainState_82
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasEnactState'45'ChainState_4462
-- Ledger.Dijkstra.Foreign.Chain._.HasEpochState-ChainState
d_HasEpochState'45'ChainState_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226
d_HasEpochState'45'ChainState_84
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasEpochState'45'ChainState_4460
-- Ledger.Dijkstra.Foreign.Chain._.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320
d_HasLastEpoch'45'ChainState_86
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasLastEpoch'45'ChainState_4458
-- Ledger.Dijkstra.Foreign.Chain._.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
d_HasLedgerState'45'ChainState_88
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasLedgerState'45'ChainState_4464
-- Ledger.Dijkstra.Foreign.Chain._.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4300
d_HasNewEpochState'45'ChainState_90
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasNewEpochState'45'ChainState_4456
-- Ledger.Dijkstra.Foreign.Chain._.HasPParams-ChainState
d_HasPParams'45'ChainState_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'ChainState_92
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasPParams'45'ChainState_4472
-- Ledger.Dijkstra.Foreign.Chain._.HasRewards-ChainState
d_HasRewards'45'ChainState_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788
d_HasRewards'45'ChainState_94
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasRewards'45'ChainState_4470
-- Ledger.Dijkstra.Foreign.Chain._.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310
d_HasUTxOState'45'ChainState_96
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasUTxOState'45'ChainState_4466
-- Ledger.Dijkstra.Foreign.Chain._.LastAppliedBlock
d_LastAppliedBlock_98 = ()
-- Ledger.Dijkstra.Foreign.Chain._.ResolvedEB
d_ResolvedEB_102 = ()
-- Ledger.Dijkstra.Foreign.Chain._.ValidLeiosBlock
d_ValidLeiosBlock_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  ()
d_ValidLeiosBlock_106 = erased
-- Ledger.Dijkstra.Foreign.Chain._.ValidLeiosBlock?
d_ValidLeiosBlock'63'_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidLeiosBlock'63'_108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_ValidLeiosBlock'63'_3146
-- Ledger.Dijkstra.Foreign.Chain._.certifiedBit
d_certifiedBit_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Bool
d_certifiedBit_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Chain._.certifyEnv
d_certifyEnv_112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484
d_certifyEnv_112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_certifyEnv_4506
-- Ledger.Dijkstra.Foreign.Chain._.delayChecks
d_delayChecks_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  Integer -> ()
d_delayChecks_114 = erased
-- Ledger.Dijkstra.Foreign.Chain._.delayChecks?
d_delayChecks'63'_116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayChecks'63'_116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_delayChecks'63'_4614
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.incrBlocks
d_incrBlocks_118 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_118
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3118
         (coe v0))
-- Ledger.Dijkstra.Foreign.Chain._.pendingEB
d_pendingEB_120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe Integer
d_pendingEB_120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4524
-- Ledger.Dijkstra.Foreign.Chain._.totalRefScriptsSize
d_totalRefScriptsSize_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  Integer
d_totalRefScriptsSize_122
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3952
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.announcedEB
d_announcedEB_140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bhash
d_bhash_142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_bhash_142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bsize
d_bsize_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_bsize_144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3052
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bvkcold
d_bvkcold_146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10
d_bvkcold_146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.certifiedEB
d_certifiedEB_148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Bool
d_certifiedEB_148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.hBbsize
d_hBbsize_150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_hBbsize_150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.slot
d_slot_152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_slot_152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHeader.bhbody
d_bhbody_156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034
d_bhbody_156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHeader.bhsig
d_bhsig_158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066 ->
  Integer
d_bhsig_158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3074
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bBodyHash
d_bBodyHash_162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bBodyHash_162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3106
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bBodySize
d_bBodySize_164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bBodySize_164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3104
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bHeaderHash
d_bHeaderHash_166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bHeaderHash_166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bheader
d_bheader_168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.ebCert
d_ebCert_170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.ts
d_ts_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_174 = erased
-- Ledger.Dijkstra.Foreign.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_176 = erased
-- Ledger.Dijkstra.Foreign.Chain._.CertifyEnv.committee
d_committee_180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_committee_180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.CertifyEnv.enactState
d_enactState_182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_enactState_182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.CertifyEnv.lastApplied
d_lastApplied_184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426
d_lastApplied_184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.CertifyEnv.treasury
d_treasury_186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  Integer
d_treasury_186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4500
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.ChainState.lastApplied
d_lastApplied_190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426
d_lastApplied_190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4450
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.ChainState.newEpochState
d_newEpochState_192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_newEpochState_192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.LastAppliedBlock.announcedEB
d_announcedEB_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.LastAppliedBlock.headerHash
d_headerHash_198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Integer
d_headerHash_198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.LastAppliedBlock.slot
d_slot_200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Integer
d_slot_200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.ResolvedEB.closure
d_closure_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_closure_204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4536
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.ResolvedEB.eb
d_eb_206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4534 (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Computational-CERTIFY
d_Computational'45'CERTIFY_210 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTIFY_210
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_Computational'45'CERTIFY_3556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3952
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.Computational-CHAIN
d_Computational'45'CHAIN_212 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_Computational'45'CHAIN_4004
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3952
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.blockSlot
d_blockSlot_214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_blockSlot_214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Chain._.pending?
d_pending'63'_216 ::
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pending'63'_216
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.du_pending'63'_3494
-- Ledger.Dijkstra.Foreign.Chain._.pendingEB?
d_pendingEB'63'_218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pendingEB'63'_218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.du_pendingEB'63'_3552
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v3
-- Ledger.Dijkstra.Foreign.Chain._.pendingFailure
d_pendingFailure_220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_pendingFailure_220
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.du_pendingFailure_3504
-- Ledger.Dijkstra.Foreign.Chain._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_222
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_refScriptSize'8804''63'Bound_3488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3952
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.validCert?
d_validCert'63'_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCert'63'_224 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.du_validCert'63'_3554
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v1 v2
-- Ledger.Dijkstra.Foreign.Chain._.RBHeaderHash
d_RBHeaderHash_228 :: ()
d_RBHeaderHash_228 = erased
-- Ledger.Dijkstra.Foreign.Chain.HsTy-BHBody
d_HsTy'45'BHBody_230 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'BHBody_230 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-BHBody
d_Conv'45'BHBody_232 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'BHBody_232
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkBHBody_371
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                           (coe v1)))
                     (coe v2) (coe v3) (coe v4) (coe v5)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v6)
                     (coe v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkBHBody_371 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                          (coe v9) (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20
                                          (coe v9) (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2) (coe v3) (coe v4) (coe v5)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v6)
                     (coe v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-BHeader
d_HsTy'45'BHeader_234 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'BHeader_234 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-BHeader
d_Conv'45'BHeader_236 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'BHeader_236
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3076 v1 v2
                -> coe
                     C_MkBHeader_6067
                     (coe
                        C_MkBHBody_371
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3052
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
                           (coe v1))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
                           (coe v1)))
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkBHeader_6067 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3076
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          C_MkBHBody_371
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                                (coe v4))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                                (coe v4)))
                                          (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             v9)
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_MkBHBody_371 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                                               (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20
                                                               (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             v9)
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-EBCert
d_HsTy'45'EBCert_238 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'EBCert_238 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-EBCert
d_Conv'45'EBCert_240 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'EBCert_240
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1654 v1 v2
                -> coe
                     C_MkEBCert_6711
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           v1))
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEBCert_6711 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1654
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v1))))
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-EndorserBlock
d_HsTy'45'EndorserBlock_242 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'EndorserBlock_242 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-EndorserBlock
d_Conv'45'EndorserBlock_244 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'EndorserBlock_244
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.C_constructor_28 v1
                -> coe
                     C_MkEndorserBlock_7447
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEndorserBlock_7447 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.C_constructor_28
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-ResolvedEB
d_HsTy'45'ResolvedEB_246 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'ResolvedEB_246 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-ResolvedEB
d_Conv'45'ResolvedEB_248 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'ResolvedEB_248
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4538 v1 v2
                -> coe
                     C_MkResolvedEB_8053
                     (coe
                        C_MkEndorserBlock_7447
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_552))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkResolvedEB_8053 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4538
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.C_constructor_28 v4
                                     -> coe
                                          C_MkEndorserBlock_7447
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_MkEndorserBlock_7447 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.C_constructor_28
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_552))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HSBlock
d_HSBlock_250 = ()
data T_HSBlock_250
  = C_constructor_276 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
                      Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
                      (Maybe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644)
                      Integer Integer
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bheader
d_bheader_264 ::
  T_HSBlock_250 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_264 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bHeaderHash
d_bHeaderHash_266 :: T_HSBlock_250 -> Integer
d_bHeaderHash_266 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.ts
d_ts_268 ::
  T_HSBlock_250 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_268 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.ebCert
d_ebCert_270 ::
  T_HSBlock_250 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_270 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bBodySize
d_bBodySize_272 :: T_HSBlock_250 -> Integer
d_bBodySize_272 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bBodyHash
d_bBodyHash_274 :: T_HSBlock_250 -> Integer
d_bBodyHash_274 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.Conv-Block-HSBlock
d_Conv'45'Block'45'HSBlock_278 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Block'45'HSBlock_278
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_276
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3104
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3106
                 (coe v0))))
      (coe
         (\ v0 ->
            let v1
                  = coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                      erased
                      (\ v1 ->
                         coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2786
                           (coe d_bBodySize_272 (coe v0)))
                      (coe
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                         (coe
                            eqInt (coe d_bBodySize_272 (coe v0))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                  (coe d_bheader_264 (coe v0)))))) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
                   -> if coe v2
                        then case coe v3 of
                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v4
                                 -> let v5
                                          = coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                              erased
                                              (\ v5 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2786
                                                   (coe d_bBodyHash_274 (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                                                 (coe
                                                    eqInt (coe d_bBodyHash_274 (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                          (coe d_bheader_264 (coe v0)))))) in
                                    coe
                                      (case coe v5 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                           -> if coe v6
                                                then coe
                                                       seq (coe v7)
                                                       (coe
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3112
                                                               (d_bheader_264 (coe v0))
                                                               (d_bHeaderHash_266 (coe v0))
                                                               (d_ts_268 (coe v0))
                                                               (d_ebCert_270 (coe v0))
                                                               (d_bBodySize_272 (coe v0))
                                                               (d_bBodyHash_274 (coe v0))))
                                                       (coe v4)
                                                else coe
                                                       seq (coe v7)
                                                       (coe
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                               erased
                                                               (coe
                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                  ("BBodyHash check failed: "
                                                                   ::
                                                                   Data.Text.Text)
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                        (d_bBodyHash_274 (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                        (" \8800 "
                                                                         ::
                                                                         Data.Text.Text)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                 (coe
                                                                                    d_bheader_264
                                                                                    (coe
                                                                                       v0))))))))))
                                                       (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> MAlonzo.RTE.mazUnreachableError
                        else coe
                               seq (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     ("bBodySize check failed: " :: Data.Text.Text)
                                     (coe
                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                        (coe
                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                           (d_bBodySize_272 (coe v0)))
                                        (coe
                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                           (" \8800 " :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                    (coe d_bheader_264 (coe v0)))))))))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-HSBlock
d_HsTy'45'HSBlock_328 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSBlock_328 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-HSBlock
d_Conv'45'HSBlock_330 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSBlock_330
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_276 v1 v2 v3 v4 v5 v6
                -> coe
                     C_MkBlock_11393
                     (coe
                        C_MkBHeader_6067
                        (coe
                           C_MkBHBody_371
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3052
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                 (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3074
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_552))
                        v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'EBCert_240))
                        v4)
                     (coe v5) (coe v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkBlock_11393 v1 v2 v3 v4 v5 v6
                -> coe
                     C_constructor_276
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3076 v8 v9
                                     -> coe
                                          C_MkBHeader_6067
                                          (coe
                                             C_MkBHBody_371
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3052
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
                                                (coe v8)))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   C_MkBHeader_6067 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3076
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064 v11 v12 v13 v14 v15 v16 v17
                                                          -> coe
                                                               C_MkBHBody_371
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                                                     (coe v11))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                                                     (coe v11)))
                                                               (coe v12) (coe v13) (coe v14)
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        C_MkBHBody_371 v11 v12 v13 v14 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3064
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                                                                    (coe v19)
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_20
                                                                                    (coe v19)
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe v12) (coe v13) (coe v14)
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'Tx'45'TxLevelTop_552))
                        v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'EBCert_240))
                        v4)
                     (coe v5) (coe v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-Block
d_HsTy'45'Block_332 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Block_332 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-Block
d_Conv'45'Block_334 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Block_334
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_Conv'45'Block'45'HSBlock_278) (coe d_Conv'45'HSBlock_330)
-- Ledger.Dijkstra.Foreign.Chain.HsTy-LastAppliedBlock
d_HsTy'45'LastAppliedBlock_336 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'LastAppliedBlock_336 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-LastAppliedBlock
d_Conv'45'LastAppliedBlock_338 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'LastAppliedBlock_338
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4440 v1 v2 v3
                -> coe
                     C_MkLastAppliedBlock_15295 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkLastAppliedBlock_15295 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4440
                     (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-ChainState
d_HsTy'45'ChainState_340 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'ChainState_340 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-ChainState
d_Conv'45'ChainState_342 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'ChainState_342
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4452 v1 v2
                -> coe
                     C_MkChainState_17091
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2097
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4280
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4282
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3976
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3298
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3300
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                                 () erased
                                 (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1534
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1536
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1538
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1540
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1554
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1556
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1558
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1560
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1572
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1574
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1576
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                            (coe v1))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                (let v3
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                              (coe v3) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v3 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v3 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v3 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v3 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                (coe v1))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                    coe
                                                      (let v4
                                                             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                 (coe v3) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                     (coe v4))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                       (coe
                                          (\ v3 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          (\ v3 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (coe
                                          (\ v3 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                       (coe
                                          (\ v3 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2166
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2168
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                       (coe v1))))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4288
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4290
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_340))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'LastAppliedBlock_338))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkChainState_17091 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4452
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4294 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2097
                                          (coe v4)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                                      (coe v7)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3976
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3298
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3300
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3302
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                   () erased () erased
                                                   (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                         (coe v7))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1534
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1536
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1538
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1540
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1554
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1556
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1558
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1560
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1572
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1574
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
                                                                           (coe v7)))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                  (let v11
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                   coe
                                                                     (let v12
                                                                            = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                (coe v11) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                    (coe v12))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                 (coe v12))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                      (coe
                                                         (\ v11 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         (\ v11 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (coe
                                                         (\ v11 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                      (coe
                                                         (\ v11 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                               (coe v7)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                     (let v11
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                      coe
                                                                        (let v12
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                   (coe v11) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                       (coe v12))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                    (coe v12))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                         (coe
                                                            (\ v11 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                  (coe v7))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            (\ v11 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                  (coe v7))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (coe
                                                            (\ v11 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                  (coe v7))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                         (coe
                                                            (\ v11 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                  (coe v7))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2166
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2168
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                      (coe v7)))))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_340))
                                             v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2097 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4294
                                          (coe v4)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4220 v12 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                                     (coe v12))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3970
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3972
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3974
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3976
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3298
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                                                    (coe v14))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3300
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                                           (coe v14)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
                                                                           (coe v14))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
                                                                        (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1534
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1536
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1538
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1540
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1554
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1556
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1558
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1560
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1572
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1574
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1576
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
                                                                                          (coe
                                                                                             v14))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                    (let v17
                                                                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                     coe
                                                                                       (let v18
                                                                                              = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                  (coe
                                                                                                     v17) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                      (coe
                                                                                                         v18))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                   (coe
                                                                                                      v18))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                        (coe
                                                                           (\ v17 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           (\ v17 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (coe
                                                                           (\ v17 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                        (coe
                                                                           (\ v17 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                                                              (coe v15))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                       (let v17
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v17) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                      (coe
                                                                                                         v18))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                           (coe
                                                                              (\ v17 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              (\ v17 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (coe
                                                                              (\ v17 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                           (coe
                                                                              (\ v17 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2164
                                                                                    (coe v16)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2166
                                                                           (coe v16))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2168
                                                                     (coe v16)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655 v12 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4220
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_206 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                                                    (coe v18)
                                                                                    (coe v19)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_206
                                                                                    (coe v18)
                                                                                    (coe v19)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3978 v18 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                                   (coe
                                                                                                      v18)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                                   (coe
                                                                                                      v18)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                                   (coe
                                                                                                      v18))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                                   (coe
                                                                                                      v19)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                                   (coe
                                                                                                      v19)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                                   (coe
                                                                                                      v19))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3910
                                                                                                   (coe
                                                                                                      v20)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3912
                                                                                                   (coe
                                                                                                      v20)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3914
                                                                                                   (coe
                                                                                                      v20))))))
                                                                                    (coe v21)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019 v18 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3978
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3916
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v20)
                                                                                    (coe v21)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3938 v18 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3298
                                                                                                   (coe
                                                                                                      v18)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3300
                                                                                          (coe v18))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3302
                                                                                          (coe
                                                                                             v18)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                                       v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1534
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1536
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1538
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1540
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1588
                                                                                                         (coe
                                                                                                            v20)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1554
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1556
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1558
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1560
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1590
                                                                                                         (coe
                                                                                                            v20)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1572
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1574
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1576
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1592
                                                                                                         (coe
                                                                                                            v20))))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313 v18 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3938
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3304 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            v24)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3304
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v25 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_222)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_226))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            v24)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                                       v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1594 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1534
                                                                                                                        (coe
                                                                                                                           v22)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1536
                                                                                                                        (coe
                                                                                                                           v22)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1538
                                                                                                                        (coe
                                                                                                                           v22)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1540
                                                                                                                        (coe
                                                                                                                           v22))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1554
                                                                                                                        (coe
                                                                                                                           v23)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1556
                                                                                                                        (coe
                                                                                                                           v23)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1558
                                                                                                                        (coe
                                                                                                                           v23)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1560
                                                                                                                        (coe
                                                                                                                           v23))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1572
                                                                                                                        (coe
                                                                                                                           v24)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1574
                                                                                                                        (coe
                                                                                                                           v24)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1576
                                                                                                                        (coe
                                                                                                                           v24))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1594
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1542 v26 v27 v28 v29
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v29))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909 v26 v27 v28 v29
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1542
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v30
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v31
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v30) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v31))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v31))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v30
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v31
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v30) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v31))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v31))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v30
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v31
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v30) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v31))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v31))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v30
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v31
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v30) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v31))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v31))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v29))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v22)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1562 v26 v27 v28 v29
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v29))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495 v26 v27 v28 v29
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1562
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v30 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v31 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v30))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v29))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1578 v26 v27 v28
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     case coe
                                                                                                                            v25 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571 v26 v27 v28
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1578
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v29
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v30
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v29) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v30))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v30 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v29))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v29
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v30
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v29) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v30))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v30 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v29))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v29
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v30
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v29) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                                (coe
                                                                                                                                                   v30))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v30 ->
                                                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                                            v29))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v24)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1346 v18 v19 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                                      (let v23
                                                                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                       coe
                                                                                                         (let v24
                                                                                                                = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                    (coe
                                                                                                                       v23) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                        (coe
                                                                                                                           v24))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                     (coe
                                                                                                                        v24))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                          (coe
                                                                                             (\ v23 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v18)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             (\ v23 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v19)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (coe
                                                                                             (\ v23 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                          (coe
                                                                                             (\ v23 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v21)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v18 v19 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1346
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                                   (let v23
                                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                    coe
                                                                                                      (let v24
                                                                                                             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                 (coe
                                                                                                                    v23) in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                     (coe
                                                                                                                        v24))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                  (coe
                                                                                                                     v24))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                       (coe
                                                                                          (\ v23 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v18))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          (\ v23 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v19))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                       (coe
                                                                                          (\ v23 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v20))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                       (coe
                                                                                          (\ v23 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v21))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1410
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2170 v18 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                                         (let v21
                                                                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                          coe
                                                                                                            (let v22
                                                                                                                   = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                       (coe
                                                                                                                          v21) in
                                                                                                             coe
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v22))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                        (coe
                                                                                                                           v22))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                             (coe
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336
                                                                                                (coe
                                                                                                   v18))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                                (coe
                                                                                                   v18))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (coe
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340
                                                                                                (coe
                                                                                                   v18))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                             (coe
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                (coe
                                                                                                   v18))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
                                                                                                   (coe
                                                                                                      v18))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                                          v19))
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v17 ->
                                                                           case coe v17 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679 v18 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2170
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1346 v22 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                                                           (let v27
                                                                                                                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                            coe
                                                                                                                              (let v28
                                                                                                                                     = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                         (coe
                                                                                                                                            v27) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                             (coe
                                                                                                                                                v28))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                          (coe
                                                                                                                                             v28))))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                                               (coe
                                                                                                                  (\ v27 ->
                                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v22)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  (\ v27 ->
                                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v23)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (coe
                                                                                                                  (\ v27 ->
                                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v24)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                                               (coe
                                                                                                                  (\ v27 ->
                                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v25)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v22 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1346
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                                                                                        (let v27
                                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                         coe
                                                                                                                           (let v28
                                                                                                                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                      (coe
                                                                                                                                         v27) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                          (coe
                                                                                                                                             v28))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                       (coe
                                                                                                                                          v28))))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                                            (coe
                                                                                                               (\ v27 ->
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v22))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               (\ v27 ->
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v23))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                            (coe
                                                                                                               (\ v27 ->
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v24))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                                            (coe
                                                                                                               (\ v27 ->
                                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v25))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v27
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v28
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v27) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1410
                                                                                                                           (coe
                                                                                                                              v28)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                              (coe
                                                                                                                                 v28))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                           (coe
                                                                                                                              v28))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                                                             (coe
                                                                                                v19))))
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v16)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_340))
                                             v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'LastAppliedBlock_338))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_17089 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_Block_11391
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       () T_ResolvedEB_8051) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_17089
chainStep = coe d_chain'45'step_344
d_chain'45'step_344 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_17089 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_Block_11391 (Maybe T_ResolvedEB_8051) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_17089
d_chain'45'step_344 ~v0 = du_chain'45'step_344
du_chain'45'step_344 ::
  T_ChainState_17089 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_Block_11391 (Maybe T_ResolvedEB_8051) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_17089
du_chain'45'step_344
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'ChainState_342)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe d_Conv'45'Block_334)
               (coe
                  MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                  (coe d_Conv'45'ResolvedEB_248)))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe d_Conv'45'ChainState_342))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_Computational'45'CHAIN_4004
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3952
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Dijkstra.Foreign.Chain.BHBody
d_BHBody_369 = ()
type T_BHBody_369 = BHBody
pattern C_MkBHBody_371 a0 a1 a2 a3 a4 a5 a6 = MkBHBody a0 a1 a2 a3 a4 a5 a6
check_MkBHBody_371 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_8381 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  Bool -> T_BHBody_369
check_MkBHBody_371 = MkBHBody
cover_BHBody_369 :: BHBody -> ()
cover_BHBody_369 x
  = case x of
      MkBHBody _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.BHeader
d_BHeader_6065 = ()
type T_BHeader_6065 = BHeader
pattern C_MkBHeader_6067 a0 a1 = MkBHeader a0 a1
check_MkBHeader_6067 :: T_BHBody_369 -> Integer -> T_BHeader_6065
check_MkBHeader_6067 = MkBHeader
cover_BHeader_6065 :: BHeader -> ()
cover_BHeader_6065 x
  = case x of
      MkBHeader _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.EBCert
d_EBCert_6709 = ()
type T_EBCert_6709 = EBCert
pattern C_MkEBCert_6711 a0 a1 = MkEBCert a0 a1
check_MkEBCert_6711 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  Integer -> T_EBCert_6709
check_MkEBCert_6711 = MkEBCert
cover_EBCert_6709 :: EBCert -> ()
cover_EBCert_6709 x
  = case x of
      MkEBCert _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.EndorserBlock
d_EndorserBlock_7445 = ()
type T_EndorserBlock_7445 = EndorserBlock
pattern C_MkEndorserBlock_7447 a0 = MkEndorserBlock a0
check_MkEndorserBlock_7447 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  T_EndorserBlock_7445
check_MkEndorserBlock_7447 = MkEndorserBlock
cover_EndorserBlock_7445 :: EndorserBlock -> ()
cover_EndorserBlock_7445 x
  = case x of
      MkEndorserBlock _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.ResolvedEB
d_ResolvedEB_8051 = ()
type T_ResolvedEB_8051 = ResolvedEB
pattern C_MkResolvedEB_8053 a0 a1 = MkResolvedEB a0 a1
check_MkResolvedEB_8053 ::
  T_EndorserBlock_7445 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_254213 ->
  T_ResolvedEB_8051
check_MkResolvedEB_8053 = MkResolvedEB
cover_ResolvedEB_8051 :: ResolvedEB -> ()
cover_ResolvedEB_8051 x
  = case x of
      MkResolvedEB _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.Block
d_Block_11391 = ()
type T_Block_11391 = Block
pattern C_MkBlock_11393 a0 a1 a2 a3 a4 a5 = MkBlock a0 a1 a2 a3 a4 a5
check_MkBlock_11393 ::
  T_BHeader_6065 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_254213 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_EBCert_6709 ->
  Integer -> Integer -> T_Block_11391
check_MkBlock_11393 = MkBlock
cover_Block_11391 :: Block -> ()
cover_Block_11391 x
  = case x of
      MkBlock _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.LastAppliedBlock
d_LastAppliedBlock_15293 = ()
type T_LastAppliedBlock_15293 = LastAppliedBlock
pattern C_MkLastAppliedBlock_15295 a0 a1 a2 = MkLastAppliedBlock a0 a1 a2
check_MkLastAppliedBlock_15295 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  T_LastAppliedBlock_15293
check_MkLastAppliedBlock_15295 = MkLastAppliedBlock
cover_LastAppliedBlock_15293 :: LastAppliedBlock -> ()
cover_LastAppliedBlock_15293 x
  = case x of
      MkLastAppliedBlock _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.ChainState
d_ChainState_17089 = ()
type T_ChainState_17089 = ChainState
pattern C_MkChainState_17091 a0 a1 = MkChainState a0 a1
check_MkChainState_17091 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.T_NewEpochState_2095 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_LastAppliedBlock_15293 ->
  T_ChainState_17089
check_MkChainState_17091 = MkChainState
cover_ChainState_17089 :: ChainState -> ()
cover_ChainState_17089 x
  = case x of
      MkChainState _ _ -> ()
