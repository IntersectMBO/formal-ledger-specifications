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

import GHC.Generics (Generic)
data BHBody = MkBHBody {bhbBvkcold :: MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.HSVKey, bhbBsize :: Integer, bhbSlot :: Integer, bhbBhash :: Integer, bhbHBbsize :: Integer, bhbAnnouncedEB :: (Maybe (Integer, Integer)), bhbCertifiesEB :: Bool}
  deriving (Show, Eq, Generic)
data BHeader = MkBHeader {bhBhbody :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.BHBody, bhBhsig :: Integer}
  deriving (Show, Eq, Generic)
data EBCert = MkEBCert {ebcSigners :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet Integer), ebcSig :: Integer}
  deriving (Show, Eq, Generic)
data Block = MkBlock {bBheader :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.BHeader, bBHeaderHash :: Integer, bTs :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.TxTop], bEbCert :: (Maybe MAlonzo.Code.Ledger.Dijkstra.Foreign.Chain.EBCert), bBBodySize :: Integer, bBBodyHash :: Integer}
  deriving (Show, Eq, Generic)
data ChainState = MkChainState {csNewEpochState :: MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.NewEpochState}
  deriving (Show, Eq, Generic)
-- Ledger.Dijkstra.Foreign.Chain._.EBCert
d_EBCert_10 = ()
-- Ledger.Dijkstra.Foreign.Chain._.EBCert.sig
d_sig_16 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  Integer
d_sig_16 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1660
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.EBCert.signers
d_signers_18 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  [Integer]
d_signers_18 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1658
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__22 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Chain._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Chain._.Announcement
d_Announcement_26 :: ()
d_Announcement_26 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BBodyEnv
d_BBodyEnv_30 :: ()
d_BBodyEnv_30 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BBodyState
d_BBodyState_32 :: ()
d_BBodyState_32 = erased
-- Ledger.Dijkstra.Foreign.Chain._.BHBody
d_BHBody_34 = ()
-- Ledger.Dijkstra.Foreign.Chain._.BHeader
d_BHeader_38 = ()
-- Ledger.Dijkstra.Foreign.Chain._.Block
d_Block_42 = ()
-- Ledger.Dijkstra.Foreign.Chain._.ChainState
d_ChainState_48 = ()
-- Ledger.Dijkstra.Foreign.Chain._.HasCertState-ChainState
d_HasCertState'45'ChainState_52 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1938
d_HasCertState'45'ChainState_52
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCertState'45'ChainState_4404
-- Ledger.Dijkstra.Foreign.Chain._.HasEnactState-ChainState
d_HasEnactState'45'ChainState_54 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'ChainState_54
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasEnactState'45'ChainState_4398
-- Ledger.Dijkstra.Foreign.Chain._.HasEpochState-ChainState
d_HasEpochState'45'ChainState_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4260
d_HasEpochState'45'ChainState_56
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasEpochState'45'ChainState_4396
-- Ledger.Dijkstra.Foreign.Chain._.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4354
d_HasLastEpoch'45'ChainState_58
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasLastEpoch'45'ChainState_4394
-- Ledger.Dijkstra.Foreign.Chain._.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3978
d_HasLedgerState'45'ChainState_60
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasLedgerState'45'ChainState_4400
-- Ledger.Dijkstra.Foreign.Chain._.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4334
d_HasNewEpochState'45'ChainState_62
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasNewEpochState'45'ChainState_4392
-- Ledger.Dijkstra.Foreign.Chain._.HasPParams-ChainState
d_HasPParams'45'ChainState_64 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'ChainState_64
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasPParams'45'ChainState_4408
-- Ledger.Dijkstra.Foreign.Chain._.HasRewards-ChainState
d_HasRewards'45'ChainState_66 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1818
d_HasRewards'45'ChainState_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasRewards'45'ChainState_4406
-- Ledger.Dijkstra.Foreign.Chain._.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_68 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3348
d_HasUTxOState'45'ChainState_68
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasUTxOState'45'ChainState_4402
-- Ledger.Dijkstra.Foreign.Chain._.ValidLeiosBlock
d_ValidLeiosBlock_70 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  ()
d_ValidLeiosBlock_70 = erased
-- Ledger.Dijkstra.Foreign.Chain._.incrBlocks
d_incrBlocks_72 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_72
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3186
         (coe v0))
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.announcedEB
d_announcedEB_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_84 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3128
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bhash
d_bhash_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Integer
d_bhash_86 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bsize
d_bsize_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Integer
d_bsize_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3120
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.bvkcold
d_bvkcold_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10
d_bvkcold_90 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.certifiesEB
d_certifiesEB_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Bool
d_certifiesEB_92 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.hBbsize
d_hBbsize_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Integer
d_hBbsize_94 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHBody.slot
d_slot_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102 ->
  Integer
d_slot_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHeader.bhbody
d_bhbody_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3102
d_bhbody_100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.BHeader.bhsig
d_bhsig_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134 ->
  Integer
d_bhsig_102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3142
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bBodyHash
d_bBodyHash_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Integer
d_bBodyHash_106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3174
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bBodySize
d_bBodySize_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Integer
d_bBodySize_108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3172
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bHeaderHash
d_bHeaderHash_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Integer
d_bHeaderHash_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3166
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.bheader
d_bheader_112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134
d_bheader_112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.ebCert
d_ebCert_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652
d_ebCert_114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.ts
d_ts_116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
d_ts_116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3168
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_118 = erased
-- Ledger.Dijkstra.Foreign.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_120 = erased
-- Ledger.Dijkstra.Foreign.Chain._.ChainState.newEpochState
d_newEpochState_124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4384 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298
d_newEpochState_124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4388
      (coe v0)
-- Ledger.Dijkstra.Foreign.Chain._.Computational-CHAIN
d_Computational'45'CHAIN_128 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_128
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_Computational'45'CHAIN_3558
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3968
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.Chain._.RBHeaderHash
d_RBHeaderHash_132 :: ()
d_RBHeaderHash_132 = erased
-- Ledger.Dijkstra.Foreign.Chain.HsTy-BHBody
d_HsTy'45'BHBody_134 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'BHBody_134 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-BHBody
d_Conv'45'BHBody_136 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'BHBody_136
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkBHBody_173
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
              C_MkBHBody_173 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132
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
d_HsTy'45'BHeader_138 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'BHeader_138 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-BHeader
d_Conv'45'BHeader_140 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'BHeader_140
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3144 v1 v2
                -> coe
                     C_MkBHeader_5869
                     (coe
                        C_MkBHBody_173
                        (coe
                           MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3120
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
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
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3128
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
                           (coe v1)))
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkBHeader_5869 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3144
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          C_MkBHBody_173
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
                                   C_MkBHBody_173 v4 v5 v6 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132
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
d_HsTy'45'EBCert_142 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'EBCert_142 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-EBCert
d_Conv'45'EBCert_144 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'EBCert_144
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1662 v1 v2
                -> coe
                     C_MkEBCert_6513
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
              C_MkEBCert_6513 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1662
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
-- Ledger.Dijkstra.Foreign.Chain.HSBlock
d_HSBlock_146 = ()
data T_HSBlock_146
  = C_constructor_172 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134
                      Integer
                      [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
                      (Maybe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652)
                      Integer Integer
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bheader
d_bheader_160 ::
  T_HSBlock_146 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134
d_bheader_160 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bHeaderHash
d_bHeaderHash_162 :: T_HSBlock_146 -> Integer
d_bHeaderHash_162 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.ts
d_ts_164 ::
  T_HSBlock_146 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
d_ts_164 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.ebCert
d_ebCert_166 ::
  T_HSBlock_146 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652
d_ebCert_166 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bBodySize
d_bBodySize_168 :: T_HSBlock_146 -> Integer
d_bBodySize_168 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.HSBlock.bBodyHash
d_bBodyHash_170 :: T_HSBlock_146 -> Integer
d_bBodyHash_170 v0
  = case coe v0 of
      C_constructor_172 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Chain.BHBody
d_BHBody_171 = ()
type T_BHBody_171 = BHBody
pattern C_MkBHBody_173 a0 a1 a2 a3 a4 a5 a6 = MkBHBody a0 a1 a2 a3 a4 a5 a6
check_MkBHBody_173 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_8381 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  Bool -> T_BHBody_171
check_MkBHBody_173 = MkBHBody
cover_BHBody_171 :: BHBody -> ()
cover_BHBody_171 x
  = case x of
      MkBHBody _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.Conv-Block-HSBlock
d_Conv'45'Block'45'HSBlock_174 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Block'45'HSBlock_174
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_172
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3166
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3168
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3172
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3174
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
                           (coe d_bBodySize_168 (coe v0)))
                      (coe
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                         (coe
                            eqInt (coe d_bBodySize_168 (coe v0))
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                  (coe d_bheader_160 (coe v0)))))) in
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
                                                   (coe d_bBodyHash_170 (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                                                 (coe
                                                    eqInt (coe d_bBodyHash_170 (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                                          (coe d_bheader_160 (coe v0)))))) in
                                    coe
                                      (case coe v5 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                           -> if coe v6
                                                then coe
                                                       seq (coe v7)
                                                       (coe
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3180
                                                               (d_bheader_160 (coe v0))
                                                               (d_bHeaderHash_162 (coe v0))
                                                               (d_ts_164 (coe v0))
                                                               (d_ebCert_166 (coe v0))
                                                               (d_bBodySize_168 (coe v0))
                                                               (d_bBodyHash_170 (coe v0))))
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
                                                                        (d_bBodyHash_170 (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                        (" \8800 "
                                                                         ::
                                                                         Data.Text.Text)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                                                                 (coe
                                                                                    d_bheader_160
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
                                           (d_bBodySize_168 (coe v0)))
                                        (coe
                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                           (" \8800 " :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                                    (coe d_bheader_160 (coe v0)))))))))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-HSBlock
d_HsTy'45'HSBlock_224 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HSBlock_224 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-HSBlock
d_Conv'45'HSBlock_226 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HSBlock_226
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_172 v1 v2 v3 v4 v5 v6
                -> coe
                     C_MkBlock_9815
                     (coe
                        C_MkBHeader_5869
                        (coe
                           C_MkBHBody_173
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3120
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
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
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3128
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3142
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
                           (coe d_Conv'45'EBCert_144))
                        v4)
                     (coe v5) (coe v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkBlock_9815 v1 v2 v3 v4 v5 v6
                -> coe
                     C_constructor_172
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3144 v8 v9
                                     -> coe
                                          C_MkBHeader_5869
                                          (coe
                                             C_MkBHBody_173
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.C_MkHSVKey_8383
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkVKey_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_hvkStoredHash_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3120
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3124
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3126
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
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3128
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
                                                (coe v8)))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   C_MkBHeader_5869 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3144
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132 v11 v12 v13 v14 v15 v16 v17
                                                          -> coe
                                                               C_MkBHBody_173
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
                                                        C_MkBHBody_173 v11 v12 v13 v14 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_constructor_3132
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
                           (coe d_Conv'45'EBCert_144))
                        v4)
                     (coe v5) (coe v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.HsTy-Block
d_HsTy'45'Block_228 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Block_228 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-Block
d_Conv'45'Block_230 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Block_230
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_Conv'45'Block'45'HSBlock_174) (coe d_Conv'45'HSBlock_226)
-- Ledger.Dijkstra.Foreign.Chain.HsTy-ChainState
d_HsTy'45'ChainState_232 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'ChainState_232 = erased
-- Ledger.Dijkstra.Foreign.Chain.Conv-ChainState
d_Conv'45'ChainState_234 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'ChainState_234
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4390 v1
                -> coe
                     C_MkChainState_13717
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2059
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4314
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4318
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_4012
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_41467
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                  (coe v3))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                               (coe v3))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                       (\ v2 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                       (\ v2 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                       (\ v2 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                                   (let v2
                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                    coe
                                                      (let v3
                                                             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                     (coe v3))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                  (coe v3))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                          (\ v2 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                          (\ v2 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                          (\ v2 ->
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
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
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2174
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2176
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                       (coe v1))))))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4322
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4324
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_336))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4326
                              (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkChainState_13717 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4390
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4328 v3 v4 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2059
                                          (coe v3)
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
                                                   (coe v4))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                                      (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                                      (coe v6))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6))))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6))))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                                     (coe v6))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_4012
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                      (coe v6))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_41467
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                     (coe v6)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                            (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                            (coe v6)))))
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
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                         (coe v6))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6)))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6)))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6))))))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248
                                                                           (coe v6)))))))))))
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
                                                                  (let v10
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                   coe
                                                                     (let v11
                                                                            = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                (coe v10) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                    (coe v11))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                 (coe v11))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                            (coe v6)))))
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
                                                         (\ v10 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                            (coe v6)))))
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
                                                         (\ v10 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                            (coe v6)))))
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
                                                         (\ v10 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                            (coe v6)))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                               (coe v6)))))))
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
                                                                     (let v10
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                      coe
                                                                        (let v11
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                   (coe v10) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                       (coe v11))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                    (coe v11))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                         (coe
                                                            (\ v10 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                                  (coe v6))))))
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
                                                            (\ v10 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                                  (coe v6))))))
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
                                                            (\ v10 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                                  (coe v6))))))
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
                                                            (\ v10 ->
                                                               MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                                  (coe v6))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                                     (coe v6))))))))
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
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2174
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                            (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2176
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                      (coe v6)))))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                                             v7)
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
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_336))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.C_MkNewEpochState_2059 v3 v4 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4328
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v4))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4254 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
                                                                     (coe v11))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
                                                                     (coe v11)))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_4006
                                                                                    (coe v12)))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_4008
                                                                                    (coe v12)))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                                    (coe v12))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_4010
                                                                                    (coe v12)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_4012
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_41467
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                           (coe v13)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                           (coe v13))))
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
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
                                                                        (coe v13)))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13))))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13))))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13)))))))
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                          (coe
                                                                                             v13))))))))))
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
                                                                                    (let v16
                                                                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                     coe
                                                                                       (let v17
                                                                                              = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                  (coe
                                                                                                     v16) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                      (coe
                                                                                                         v17))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                   (coe
                                                                                                      v17))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                        (coe
                                                                           (\ v16 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                                           (coe v14))))
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
                                                                           (\ v16 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                           (coe v14))))
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
                                                                           (\ v16 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                                           (coe v14))))
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
                                                                           (\ v16 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                           (coe v14))))
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                                              (coe v14))))))
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
                                                                                       (let v16
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v17
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v16) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                         (coe
                                                                                                            v17))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                      (coe
                                                                                                         v17))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                                 (coe v15)))))
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
                                                                              (\ v16 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                                 (coe v15)))))
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
                                                                              (\ v16 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                                 (coe v15)))))
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
                                                                              (\ v16 ->
                                                                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                                 (coe v15)))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2172
                                                                                    (coe v15)))))))
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
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2174
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2176
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4254
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_210 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                                                    (coe v17)
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_210
                                                                                    (coe v17)
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_4014 v17 v18 v19 v20
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
                                                                                                   (coe
                                                                                                      v17)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
                                                                                                   (coe
                                                                                                      v17)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                                                                   (coe
                                                                                                      v17))))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3946
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3948
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3950
                                                                                                   (coe
                                                                                                      v19))))))
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019 v17 v18 v19 v20
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_4014
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952 v22 v23 v24
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
                                                                                                                     v22))))
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
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                               (\ v25 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v17)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952 v22 v23 v24
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
                                                                                                                     v22))))
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
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                               (\ v25 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952 v22 v23 v24
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
                                                                                                                     v22))))
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
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v21 ->
                                                                                                case coe
                                                                                                       v21 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v22 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3952
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v25
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v26
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v25) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v26))))))
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                               (\ v25 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v26 ->
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
                                                                                                                       v25))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v19)
                                                                                    (coe v20)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3972 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_41467
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                   (coe
                                                                                                      v17)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                                          (coe v17))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                                          (coe
                                                                                             v17)))
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
                                                                                       v18)
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
                                                                                                         (coe
                                                                                                            v19)))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
                                                                                                         (coe
                                                                                                            v19)))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                                         (coe
                                                                                                            v19))))))
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
                                                                                                         (coe
                                                                                                            v19))))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_41467 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3972
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3342 v21 v22 v23
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647
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
                                                                                                                     v21))))
                                                                                                         (coe
                                                                                                            v22)
                                                                                                         (coe
                                                                                                            v23)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_46647 v21 v22 v23
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3342
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                               (\ v24 ->
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
                                                                                                                       (\ v25 ->
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
                                                                                                                       v24))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                         (coe
                                                                                                            v22)
                                                                                                         (coe
                                                                                                            v23)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v17)
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
                                                                                       v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1624 v21 v22 v23
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
                                                                                                                        (coe
                                                                                                                           v21)))))
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
                                                                                                                        (coe
                                                                                                                           v21)))))
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
                                                                                                                        (coe
                                                                                                                           v21)))))
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
                                                                                                                        (coe
                                                                                                                           v21))))))
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
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
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
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
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
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
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
                                                                                                                        (coe
                                                                                                                           v22))))))
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
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
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
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
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
                                                                                                                        (coe
                                                                                                                           v23))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147 v21 v22 v23
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1624
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 v25 v26 v27 v28
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
                                                                                                                                          v25))))
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
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909 v25 v26 v27 v28
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1572
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
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
                                                                                                                                          v25))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v30))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                                                                                                            v21)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1592 v25 v26 v27 v28
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
                                                                                                                                          v25))))
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
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v28))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495 v25 v26 v27 v28
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1592
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v30 ->
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
                                                                                                                                            v29))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v25))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                                         (coe
                                                                                                                                            (\ v30 ->
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
                                                                                                                                            v29))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
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
                                                                                                                                          v27))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                                    (\ v29 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
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
                                                                                                            v22)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1608 v25 v26 v27
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
                                                                                                                                          v25))))
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
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v24 ->
                                                                                                                     case coe
                                                                                                                            v24 of
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571 v25 v26 v27
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1608
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v28
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v29
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v28) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v29))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                (coe
                                                                                                                                                   v29))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v28 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v29 ->
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
                                                                                                                                            v28))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v25))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v28
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v29
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v28) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v29))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                (coe
                                                                                                                                                   v29))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v28 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v29 ->
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
                                                                                                                                            v28))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v26))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 (let v28
                                                                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                                                  coe
                                                                                                                                    (let v29
                                                                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                                               (coe
                                                                                                                                                  v28) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                   (coe
                                                                                                                                                      v29))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                (coe
                                                                                                                                                   v29))))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (\ v28 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                                                                                                                         (coe
                                                                                                                                            (\ v29 ->
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
                                                                                                                                            v28))
                                                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                                       (coe
                                                                                                                                          v27))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v23)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v19)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350 v17 v18 v19 v20 v21
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
                                                                                                      (let v22
                                                                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                       coe
                                                                                                         (let v23
                                                                                                                = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                    (coe
                                                                                                                       v22) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                        (coe
                                                                                                                           v23))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                     (coe
                                                                                                                        v23))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v17)))
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
                                                                                             (\ v22 ->
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
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (coe
                                                                                             (\ v22 ->
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
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                          (coe
                                                                                             (\ v22 ->
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
                                                                                                v21))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v17 v18 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350
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
                                                                                                   (let v22
                                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                    coe
                                                                                                      (let v23
                                                                                                             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                 (coe
                                                                                                                    v22) in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                     (coe
                                                                                                                        v23))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                  (coe
                                                                                                                     v23))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                       (coe
                                                                                          (\ v22 ->
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
                                                                                          v17))
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
                                                                                          (\ v22 ->
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
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                       (coe
                                                                                          (\ v22 ->
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
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                       (coe
                                                                                          (\ v22 ->
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
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v22
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v23
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v22) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                      (coe
                                                                                                         v23)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                         (coe
                                                                                                            v23))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                      (coe
                                                                                                         v23))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v22 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                                                                               (coe
                                                                                                  (\ v23 ->
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
                                                                                                  v22))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v21))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2178 v17 v18 v19
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
                                                                                                         (let v20
                                                                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                          coe
                                                                                                            (let v21
                                                                                                                   = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                       (coe
                                                                                                                          v20) in
                                                                                                             coe
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                           (coe
                                                                                                                              v21))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                        (coe
                                                                                                                           v21))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                             (coe
                                                                                                (\ v20 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                                                                (coe
                                                                                                   v17))))
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
                                                                                                (\ v20 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                                                (coe
                                                                                                   v17))))
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
                                                                                                (\ v20 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                                                                (coe
                                                                                                   v17))))
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
                                                                                                (\ v20 ->
                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                                                (coe
                                                                                                   v17))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                                                                   (coe
                                                                                                      v17))))))
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
                                                                                          v18))
                                                                                    (coe v19)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           case coe v16 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2178
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350 v21 v22 v23 v24 v25
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
                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                             (coe
                                                                                                                                                v27))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                          (coe
                                                                                                                                             v27))))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                                               (coe
                                                                                                                  (\ v26 ->
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
                                                                                                                  (\ v26 ->
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
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                               (coe
                                                                                                                  (\ v26 ->
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
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                                               (coe
                                                                                                                  (\ v26 ->
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
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                case coe
                                                                                                       v20 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v21 v22 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350
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
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                          (coe
                                                                                                                                             v27))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                       (coe
                                                                                                                                          v27))))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                                            (coe
                                                                                                               (\ v26 ->
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
                                                                                                               v21))
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
                                                                                                               (\ v26 ->
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
                                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                            (coe
                                                                                                               (\ v26 ->
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
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                                            (coe
                                                                                                               (\ v26 ->
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
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                                           (coe
                                                                                                                              v27)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
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
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v17)
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
                                                                                                v18))))
                                                                                    (coe v19)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v15)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v6)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
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
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                             () erased () erased
                                             (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.d_Conv'45'LeiosSeat_336))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_13715 ->
  T_Block_9813 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_13715
chainStep = coe d_chain'45'step_236
d_chain'45'step_236 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_13715 ->
  T_Block_9813 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_13715
d_chain'45'step_236 ~v0 = du_chain'45'step_236
du_chain'45'step_236 ::
  T_ChainState_13715 ->
  T_Block_9813 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_13715
du_chain'45'step_236
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'ChainState_234)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe d_Conv'45'Block_230)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe d_Conv'45'ChainState_234))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational.d_Computational'45'CHAIN_3558
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3968
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Dijkstra.Foreign.Chain.BHeader
d_BHeader_5867 = ()
type T_BHeader_5867 = BHeader
pattern C_MkBHeader_5869 a0 a1 = MkBHeader a0 a1
check_MkBHeader_5869 :: T_BHBody_171 -> Integer -> T_BHeader_5867
check_MkBHeader_5869 = MkBHeader
cover_BHeader_5867 :: BHeader -> ()
cover_BHeader_5867 x
  = case x of
      MkBHeader _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.EBCert
d_EBCert_6511 = ()
type T_EBCert_6511 = EBCert
pattern C_MkEBCert_6513 a0 a1 = MkEBCert a0 a1
check_MkEBCert_6513 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60 Integer ->
  Integer -> T_EBCert_6511
check_MkEBCert_6513 = MkEBCert
cover_EBCert_6511 :: EBCert -> ()
cover_EBCert_6511 x
  = case x of
      MkEBCert _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.Block
d_Block_9813 = ()
type T_Block_9813 = Block
pattern C_MkBlock_9815 a0 a1 a2 a3 a4 a5 = MkBlock a0 a1 a2 a3 a4 a5
check_MkBlock_9815 ::
  T_BHeader_5867 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.T_TxTop_254213 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_EBCert_6511 ->
  Integer -> Integer -> T_Block_9813
check_MkBlock_9815 = MkBlock
cover_Block_9813 :: Block -> ()
cover_Block_9813 x
  = case x of
      MkBlock _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Chain.ChainState
d_ChainState_13715 = ()
type T_ChainState_13715 = ChainState
pattern C_MkChainState_13717 a0 = MkChainState a0
check_MkChainState_13717 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.T_NewEpochState_2057 ->
  T_ChainState_13715
check_MkChainState_13717 = MkChainState
cover_ChainState_13715 :: ChainState -> ()
cover_ChainState_13715 x
  = case x of
      MkChainState _ -> ()
