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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data GovProposal = MkGovProposal {gpAction :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.GovAction, gpPrevAction :: (Integer, Integer), gpPolicy :: (Maybe Integer), gpDeposit :: Integer, gpReturnAddr :: MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress, gpAnchor :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.Anchor}
 deriving (Show, Eq, Generic)
data GovActionState = MkGovActionState {gasVotes :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovVotes, gasReturnAddr :: MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress, gasExpiresIn :: Integer, gasAction :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.GovAction, gasPrevAction :: (Integer, Integer)}
 deriving (Show, Eq, Generic)
data GovEnv = MkGovEnv {geTxid :: Integer, geEpoch :: Integer, gePparams :: MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.PParams, gePpolicy :: (Maybe Integer), geEnactState :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.EnactState, geCertState :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.CertState, geRewardCreds :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)}
 deriving (Show, Eq, Generic)
type GovActionID = (Integer, Integer)
type GovState = [((Integer, Integer), MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovActionState)]
type GovVoter' = (MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.GovRole, MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)
-- Ledger.Dijkstra.Foreign.Gov.Gov._connects_to_
d__connects_to__10 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__10 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__12 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__12 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__14 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.EpochOf
d_EpochOf_18 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasEpoch_1960 ->
  AgdaAny -> Integer
d_EpochOf_18 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_EpochOf_1968
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv
d_GovEnv_24 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovState
d_GovState_28 :: ()
d_GovState_28 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovStateOf
d_GovStateOf_30 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1940 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_30 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_1948
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_32 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_32
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCast'45'GovEnv_2006
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasCertState-GovEnv
d_HasCertState'45'GovEnv_34 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1650
d_HasCertState'45'GovEnv_34
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCertState'45'GovEnv_2000
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasEnactState-GovEnv
d_HasEnactState'45'GovEnv_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
d_HasEnactState'45'GovEnv_36
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEnactState'45'GovEnv_1998
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasEpoch
d_HasEpoch_38 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasEpoch-GovEnv
d_HasEpoch'45'GovEnv_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasEpoch_1960
d_HasEpoch'45'GovEnv_42
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2002
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasGovState
d_HasGovState_44 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasPParams-GovEnv
d_HasPParams'45'GovEnv_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'GovEnv_48
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_1996
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasRewardCredentials
d_HasRewardCredentials_52 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasRewardCredentials-GovEnv
d_HasRewardCredentials'45'GovEnv_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_1980
d_HasRewardCredentials'45'GovEnv_56
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2004
-- Ledger.Dijkstra.Foreign.Gov.Gov.Overlap
d_Overlap_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_Overlap_58 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.Overlap?
d_Overlap'63'_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Overlap'63'_60
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_Overlap'63'_2038
-- Ledger.Dijkstra.Foreign.Gov.Gov.RewardCredentialsOf
d_RewardCredentialsOf_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_1980 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_RewardCredentialsOf_62 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_1988
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_64 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_64
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_'91'_connects_to_'63''93'_2364
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.actionValid
d_actionValid_68 ::
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe Integer ->
  Maybe Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  ()
d_actionValid_68 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.actionValid?
d_actionValid'63'_70 ::
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe Integer ->
  Maybe Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionValid'63'_70
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionValid'63'_2590
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.actionWellFormed
d_actionWellFormed_72 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  ()
d_actionWellFormed_72 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.actionWellFormed?
d_actionWellFormed'63'_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_74
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionWellFormed'63'_2594
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.addAction
d_addAction_76 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_addAction_2076
-- Ledger.Dijkstra.Foreign.Gov.Gov.addVote
d_addVote_78 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_78
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_addVote_2090
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.allEnactable
d_allEnactable_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_80 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.allEnactable'
d_allEnactable''_82 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.allEnactable?
d_allEnactable'63'_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_84
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_allEnactable'63'_2464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.allEnactable?'
d_allEnactable'63'''_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_86
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_allEnactable'63'''_2484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_88 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_88
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_any'63''45'connecting'45'subperm_2388
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.enactable
d_enactable_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_92 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.enactable?
d_enactable'63'_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_94
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactable'63'_2428
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.getAidPairsList
d_getAidPairsList_96 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_96
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_getAidPairsList_2166
-- Ledger.Dijkstra.Foreign.Gov.Gov.govActionPriority
d_govActionPriority_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Integer
d_govActionPriority_98
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_govActionPriority_1928
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParent
d_hasParent_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> ()
d_hasParent_100 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParent'
d_hasParent''_102 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParent?
d_hasParent'63'_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'_2292
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParent?'
d_hasParent'63'''_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParentE
d_hasParentE_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_hasParentE_108 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.hasParentE?
d_hasParentE'63'_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParentE'63'_2258
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.insertGovAction
d_insertGovAction_112 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_insertGovAction_2040
-- Ledger.Dijkstra.Foreign.Gov.Gov.isRegistered
d_isRegistered_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  ()
d_isRegistered_114 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.maxAllEnactable
d_maxAllEnactable_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_118
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_maxAllEnactable_2490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.mkGovStatePair
d_mkGovStatePair_120 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_mkGovStatePair_2056
-- Ledger.Dijkstra.Foreign.Gov.Gov.validHFAction
d_validHFAction_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  ()
d_validHFAction_122 = erased
-- Ledger.Dijkstra.Foreign.Gov.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_124 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_124
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_'8707''63''45'connecting'45'subperm_2406
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_126 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_'8707''63''45'connecting'45'subset_2418
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_128
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_'8712''45'maxAllEnactable'8594'allEnactable_2500
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Gov.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_130 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_'8712''45'maxAllEnactable'8594'maxLength_2520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.certState
d_certState_140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1414
d_certState_140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_1922
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.enactState
d_enactState_142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_enactState_142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_1920
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.epoch
d_epoch_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  Integer
d_epoch_144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_1914
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.pparams
d_pparams_146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_1916
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.ppolicy
d_ppolicy_148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  Maybe Integer
d_ppolicy_148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_1918
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.rewardCreds
d_rewardCreds_150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_1924
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.GovEnv.txid
d_txid_152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  Integer
d_txid_152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_1912 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasEpoch.EpochOf
d_EpochOf_156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasEpoch_1960 ->
  AgdaAny -> Integer
d_EpochOf_156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_EpochOf_1968
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasGovState.GovStateOf
d_GovStateOf_160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1940 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_1948
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.Gov.HasRewardCredentials.RewardCredentialsOf
d_RewardCredentialsOf_164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_1980 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_RewardCredentialsOf_164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_1988
      (coe v0)
-- Ledger.Dijkstra.Foreign.Gov._.Computational-GOV
d_Computational'45'GOV_176 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_176
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOV_1832
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Gov._.Computational-GOVS
d_Computational'45'GOVS_178 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVS_178
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOVS_2218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Gov._.allEnactable-singleton
d_allEnactable'45'singleton_180 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.du_allEnactable'45'singleton_2226
      v0 v1 v2
-- Ledger.Dijkstra.Foreign.Gov._.isRegistered?
d_isRegistered'63'_182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_182
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_isRegistered'63'_1830
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Gov._.lookupActionId
d_lookupActionId_184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_184
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_lookupActionId_1664
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Gov._.validHFAction?
d_validHFAction'63'_186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_186
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_validHFAction'63'_1738
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Gov.toNeedsHash
d_toNeedsHash_190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toNeedsHash_190 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.fromNeedsHash
d_fromNeedsHash_208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromNeedsHash_208 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
             (coe (0 :: Integer))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
             (coe (0 :: Integer))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'
d_GovProposal''_224 = ()
data T_GovProposal''_224
  = C_constructor_250 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) Integer
                      MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.action
d_action_238 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
d_action_238 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.prevAction
d_prevAction_240 ::
  T_GovProposal''_224 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_prevAction_240 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.policy
d_policy_242 :: T_GovProposal''_224 -> Maybe Integer
d_policy_242 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.deposit
d_deposit_244 :: T_GovProposal''_224 -> Integer
d_deposit_244 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.returnAddr
d_returnAddr_246 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_246 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovProposal'.anchor
d_anchor_248 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_248 v0
  = case coe v0 of
      C_constructor_250 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.mkGovProposal'
d_mkGovProposal''_252 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovProposal''_252
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_250
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                              -> case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> case coe v5 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                   -> coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                        (coe v4) (coe v6) (coe v7)
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                 (coe v4) (coe v5)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4)))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
                    (coe v0)))
              (coe
                 d_fromNeedsHash_208
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1002
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                              -> case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> case coe v5 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                   -> coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                        (coe v4) (coe v6) (coe v7)
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                 (coe v4) (coe v5)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4)))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (d_action_238 (coe v0)))
              (coe
                 d_toNeedsHash_190
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Foreign.Convertible.d_from_20
                       (coe
                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                          (coe
                             (\ v1 ->
                                case coe v1 of
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                                    -> case coe v2 of
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                           -> case coe v3 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                                  -> case coe v5 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                              (coe v4) (coe v6) (coe v7)
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                           -> case coe v3 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                       (coe v4) (coe v5)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                          (coe
                             (\ v1 ->
                                case coe v1 of
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                               (coe v4)))
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                            (coe v3))
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                       (d_action_238 (coe v0))))
                 (coe d_prevAction_240 (coe v0)))
              (coe d_policy_242 (coe v0)) (coe d_deposit_244 (coe v0))
              (coe d_returnAddr_246 (coe v0)) (coe d_anchor_248 (coe v0))))
-- Ledger.Dijkstra.Foreign.Gov.p.action
d_action_276 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
d_action_276 v0 = coe d_action_238 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.p.anchor
d_anchor_278 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_278 v0 = coe d_anchor_248 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.p.deposit
d_deposit_280 :: T_GovProposal''_224 -> Integer
d_deposit_280 v0 = coe d_deposit_244 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.p.policy
d_policy_282 :: T_GovProposal''_224 -> Maybe Integer
d_policy_282 v0 = coe d_policy_242 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.p.prevAction
d_prevAction_284 ::
  T_GovProposal''_224 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_prevAction_284 v0 = coe d_prevAction_240 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.p.returnAddr
d_returnAddr_286 ::
  T_GovProposal''_224 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_286 v0 = coe d_returnAddr_246 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.HsTy-GovProposal'
d_HsTy'45'GovProposal''_288 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovProposal''_288 = erased
-- Ledger.Dijkstra.Foreign.Gov.Conv-GovProposal'
d_Conv'45'GovProposal''_290 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovProposal''_290
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_250 v1 v2 v3 v4 v5 v6
                -> coe
                     C_MkGovProposal_1423
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v12)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v12 v13
                                                          -> case coe v13 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v9 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v8)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v9 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v9 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                                   (coe v8))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v11) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v12))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
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
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v12)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v12 v13
                                                          -> case coe v13 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v9 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                               (coe v10)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (coe
                              (\ v7 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v3)
                     (coe v4)
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v5))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v7 ->
                                    case coe v7 of
                                      MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v8
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                             (coe v8)
                                      MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v8
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                             (coe v8)
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v7 ->
                                    case coe v7 of
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v8
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                             (coe v8)
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v8
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                             (coe v8)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                              (coe v5))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_Anchor_149
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_916
                           (coe v6))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_918
                           (coe v6)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkGovProposal_1423 v1 v2 v3 v4 v5 v6
                -> coe
                     C_constructor_250
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v9))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v12)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v12 v13
                                                          -> case coe v13 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v9 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v8)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v9 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v9 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
                                                   (coe v8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                                   (coe v8))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v11) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v12))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
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
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v12)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v12 v13
                                                          -> case coe v13 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v12) (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v9 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v45 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                               (coe v10)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (coe
                           (\ v7 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v3)
                     (coe v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                                               (coe v11)
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                                               (coe v11)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                                               (coe v11)
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                                               (coe v11)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                                               (coe v11)
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                                               (coe v11)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                                               (coe v11)
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                                               (coe v11)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_920 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_Anchor_149
                                          (coe v8) (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v7 ->
                                 case coe v7 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_Anchor_149 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_920
                                          (coe v8) (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Gov.HsTy-GovProposal
d_HsTy'45'GovProposal_292 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovProposal_292 = erased
-- Ledger.Dijkstra.Foreign.Gov.Conv-GovProposal
d_Conv'45'GovProposal_294 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovProposal_294
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovProposal''_252) (coe d_Conv'45'GovProposal''_290)
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'
d_GovActionState''_296 = ()
data T_GovActionState''_296
  = C_constructor_318 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
                      MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                      Integer
                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'.votes
d_votes_308 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_308 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'.returnAddr
d_returnAddr_310 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_310 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'.expiresIn
d_expiresIn_312 :: T_GovActionState''_296 -> Integer
d_expiresIn_312 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'.action
d_action_314 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
d_action_314 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.GovActionState'.prevAction
d_prevAction_316 ::
  T_GovActionState''_296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_prevAction_316 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Gov.mkGovActionState'
d_mkGovActionState''_320 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovActionState''_320
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_318
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1016
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1018
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1020
                 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                              -> case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> case coe v5 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                   -> coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                        (coe v4) (coe v6) (coe v7)
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                 (coe v4) (coe v5)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4)))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
                    (coe v0)))
              (coe
                 d_fromNeedsHash_208
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1024
                    (coe v0)))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1026
              (coe d_votes_308 (coe v0)) (coe d_returnAddr_310 (coe v0))
              (coe d_expiresIn_312 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                              -> case coe v2 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> case coe v5 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                   -> coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                        (coe v4) (coe v6) (coe v7)
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                     -> case coe v3 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                            -> coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                 (coe v4) (coe v5)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       (\ v1 ->
                          case coe v1 of
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                         (coe v4)))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                   (coe v2)
                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                              -> coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (d_action_314 (coe v0)))
              (coe
                 d_toNeedsHash_190
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Foreign.Convertible.d_from_20
                       (coe
                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                          (coe
                             (\ v1 ->
                                case coe v1 of
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886 v2 v3
                                    -> case coe v2 of
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                                           -> case coe v3 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                                  -> case coe v5 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                                              (coe v4) (coe v6) (coe v7)
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                                           -> case coe v3 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                                       (coe v4) (coe v5)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                                (coe v3)
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                                           -> coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                          (coe
                             (\ v1 ->
                                case coe v1 of
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860)
                                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v2 v3 v4
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                               (coe v4)))
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v2 v3
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                            (coe v3))
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v2
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870)
                                         (coe v2)
                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                    -> coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_886
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872)
                                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                       (d_action_314 (coe v0))))
                 (coe d_prevAction_316 (coe v0)))))
-- Ledger.Dijkstra.Foreign.Gov.s.action
d_action_342 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction''_10
d_action_342 v0 = coe d_action_314 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.s.expiresIn
d_expiresIn_344 :: T_GovActionState''_296 -> Integer
d_expiresIn_344 v0 = coe d_expiresIn_312 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.s.prevAction
d_prevAction_346 ::
  T_GovActionState''_296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_prevAction_346 v0 = coe d_prevAction_316 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.s.returnAddr
d_returnAddr_348 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_348 v0 = coe d_returnAddr_310 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.s.votes
d_votes_350 ::
  T_GovActionState''_296 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_350 v0 = coe d_votes_308 (coe v0)
-- Ledger.Dijkstra.Foreign.Gov.HsTy-GovActionState'
d_HsTy'45'GovActionState''_352 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovActionState''_352 = erased
-- Ledger.Dijkstra.Foreign.Gov.Conv-GovActionState'
d_Conv'45'GovActionState''_354 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovActionState''_354
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_318 v1 v2 v3 v4 v5
                -> coe
                     C_MkGovActionState_6095
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_GovVotes_1275
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_950
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_952
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_954
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v6 ->
                                    case coe v6 of
                                      MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v7
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                             (coe v7)
                                      MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v7
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                             (coe v7)
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v6 ->
                                    case coe v6 of
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v7
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                             (coe v7)
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v7
                                        -> coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                             (coe v7)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                              (coe v2))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v11)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v12))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v11 v12
                                                          -> case coe v12 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v8 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v7)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v8 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v8 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                                   (coe v7))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
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
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v11)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v12))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v11 v12
                                                          -> case coe v12 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v8 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v7))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v8 ->
                                                      case coe v8 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v9)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v8 ->
                                                      case coe v8 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v9)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                               (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkGovActionState_6095 v1 v2 v3 v4 v5
                -> coe
                     C_constructor_318
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_956 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_GovVotes_1275
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.C_GovVotes_1275 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_956
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'Vote_36))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                                               (coe v10)
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                                               (coe v10)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                                               (coe v10)
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                                               (coe v10)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_RewardAddress_3971 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                                               (coe v10)
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                                               (coe v10)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v9 ->
                                                      case coe v9 of
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                                               (coe v10)
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v10
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                                               (coe v10)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                v8))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v11)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v12))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v11 v12
                                                          -> case coe v12 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v8 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v7)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v8 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v8 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                                   (coe v7))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_1109
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NoConfidence_12
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_1111 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_UpdateCommittee_14
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
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
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v11)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v12))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v11 v12
                                                          -> case coe v12 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_1309 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_NewConstitution_16
                                          (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             v8)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_1399 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TriggerHardFork_18
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v8 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v7))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_1443 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_ChangePParams_20
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v8 ->
                                                      case coe v8 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v9)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v8 ->
                                                      case coe v8 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParamsUpdate_124919 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_766
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v9)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v13)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v17)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v19)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v21)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'UnitInterval_138))
                                                                  v22)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v23)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                        (coe
                                                                           (\ v44 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                  v24)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v25)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v26)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v27)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'PosNat_150))
                                                                  v28)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v29)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v30)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))
                                                                  v31)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v32)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v33)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v34)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'LanguageCostModels_10))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'DrepThresholds_14))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PoolThresholds_18))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                     (coe
                                                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_1461 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_TreasuryWithdrawal_22
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                               (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_1517
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.C_Info_24
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Gov.HsTy-GovActionState
d_HsTy'45'GovActionState_356 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovActionState_356 = erased
-- Ledger.Dijkstra.Foreign.Gov.Conv-GovActionState
d_Conv'45'GovActionState_358 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovActionState_358
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovActionState''_320) (coe d_Conv'45'GovActionState''_354)
-- Ledger.Dijkstra.Foreign.Gov.HsTy-GovEnv
d_HsTy'45'GovEnv_360 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovEnv_360 = erased
-- Ledger.Dijkstra.Foreign.Gov.Conv-GovEnv
d_Conv'45'GovEnv_362 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovEnv_362
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_1926 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkGovEnv_9229 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParams_12551
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
                           (coe v3))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
                           (coe v3))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
                           (coe v3))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                             (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                        -> case coe v10 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v9) (coe v10)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                             (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                        -> case coe v10 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v9) (coe v10)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                           (coe v3))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                             (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                        -> case coe v10 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v9) (coe v10)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                             (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                        -> case coe v10 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v9) (coe v10)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
                           (coe v3))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                             (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v8 ->
                                    case coe v8 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                        -> case coe v10 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v9) (coe v10)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkLanguageCostModels_39
                           (coe
                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                              () erased
                              (MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                       (coe (\ v8 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v8 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPoolThresholds_9351
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkDrepThresholds_1101
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v9 v10
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                (coe v9) (coe addInt (coe (1 :: Integer)) (coe v10))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v8 ->
                                       case coe v8 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v9 v10
                                           -> case coe v10 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v9) (coe v10)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1655
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
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                          (let v8
                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                           coe
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                        (coe v8) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v9))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                         (coe v9))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1242
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1244
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1248
                                    (coe v5))))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.C_MkCertState_43
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_15961
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1368
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1422
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1370
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1422
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1372
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1422
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1374
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1422
                                          (coe v6)))))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_11493
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1388
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1424
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1390
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1424
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1392
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1424
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1394
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1424
                                          (coe v6)))))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_20623
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1406
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1426
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1408
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1426
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1410
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1426
                                          (coe v6))))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           v7))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkGovEnv_9229 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_1926
                     (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_456 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParams_12551
                                          (coe v9) (coe v10) (coe v11)
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v44 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v12)))
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v44 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v13)))
                                          (coe v14) (coe v15)
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
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v44 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe v16)))
                                          (coe v17) (coe v18) (coe v19) (coe v20)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                (coe v21)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                (coe v22)))
                                          (coe v23) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v25)
                                          (coe v26) (coe v27)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
                                             (coe v28))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v29)
                                          (coe v30) (coe v31) (coe v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe v34)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkLanguageCostModels_39
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                         (coe
                                                            (\ v44 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v44 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
                                                   (coe v35))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPoolThresholds_9351
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
                                                   (coe v36)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
                                                   (coe v36)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
                                                   (coe v36)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
                                                   (coe v36)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
                                                   (coe v36))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkDrepThresholds_1101
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
                                                   (coe v37)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                  (coe v45)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v46))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v44 ->
                                                         case coe v44 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                             -> case coe v46 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v45) (coe v46)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                                                   (coe v37))))
                                          (coe v38) (coe v39) (coe v40) (coe v41) (coe v42)
                                          (coe v43)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPParams_12551 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_456
                                          (coe v9) (coe v10) (coe v11)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v44 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v44 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v13))
                                          (coe v14) (coe v15)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                (\ v44 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v16))
                                          (coe v17) (coe v18) (coe v19) (coe v20)
                                          (let v44
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                           (coe
                                                              (\ v44 ->
                                                                 case coe v44 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                          (coe v45)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v46))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v44 ->
                                                                 case coe v44 of
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                                     -> case coe v46 of
                                                                          0 -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                          _ -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                 (coe v45) (coe v46)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                                                        v21) in
                                           coe
                                             (case coe v44 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v45
                                                  -> coe v45
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (let v44
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                           (coe
                                                              (\ v44 ->
                                                                 case coe v44 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                          (coe v45)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v46))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v44 ->
                                                                 case coe v44 of
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                                     -> case coe v46 of
                                                                          0 -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                          _ -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                 (coe v45) (coe v46)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                                                        v22) in
                                           coe
                                             (case coe v44 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v45
                                                  -> coe v45
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe v23) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v25)
                                          (coe v26) (coe v27)
                                          (let v44
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_toPosNat_18
                                                     (coe v28) in
                                           coe
                                             (case coe v44 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v45
                                                  -> coe v45
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: natural number is zero (not nonZero)"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v29)
                                          (coe v30) (coe v31) (coe v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v45 v46
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                               (coe v45)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v46))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v45 v46
                                                          -> case coe v46 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v45) (coe v46)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe v34)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_682 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkLanguageCostModels_39
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                           (coe
                                                                              (\ v46 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v46 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                  v45)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkLanguageCostModels_39 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_682
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                           (coe
                                                                              (\ v46 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v46 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                  v45)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v35)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_310 v45 v46 v47 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPoolThresholds_9351
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkPoolThresholds_9351 v45 v46 v47 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_310
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v51 v52
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v51)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v52))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v50 ->
                                                                           case coe v50 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v51 v52
                                                                               -> case coe v52 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v51)
                                                                                           (coe v52)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v36)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_286 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkDrepThresholds_1101
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v50)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v51)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v52)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v53)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v54)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v44 ->
                                                      case coe v44 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkDrepThresholds_1101 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_286
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v50)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v51)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v52)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v53)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v56 v57
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                                                    (coe v56)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v57))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v55 ->
                                                                           case coe v55 of
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v56 v57
                                                                               -> case coe v57 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v56)
                                                                                           (coe v57)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v54)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe v38) (coe v39) (coe v40) (coe v41) (coe v42)
                                          (coe v43)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1250 v9 v10 v11 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1655
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
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                            (let v14
                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                             coe
                                                               (let v15
                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                          (coe v14) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v15))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v15))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v14 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v9)))
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v14 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v10)))
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v14 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v11)))
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                (coe
                                                   (\ v14 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v12)))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v13))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1655 v9 v10 v11 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1250
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v15))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v14 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v14 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v10))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v14 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v11))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v14 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v14
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v15
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                              (coe v14) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                               (coe v15)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v15))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v15))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v13)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1428 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.C_MkCertState_43
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_15961
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1368
                                                         (coe v9)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1370
                                                         (coe v9)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1372
                                                         (coe v9)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1374
                                                         (coe v9))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_11493
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1388
                                                         (coe v10)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1390
                                                         (coe v10)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1392
                                                         (coe v10)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1394
                                                         (coe v10))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_20623
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1406
                                                         (coe v11)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1408
                                                         (coe v11)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1410
                                                         (coe v11))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.C_MkCertState_43 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1428
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1376 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_15961
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v16))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_15961 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1376
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v17
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v17) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v18))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v17
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v17) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v18))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v17
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v17) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v18))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v17
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v17) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v18))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v16)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1396 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_11493
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v16))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_11493 v13 v14 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1396
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v16)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1412 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_20623
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_20623 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1412
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v17
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v17
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                      coe
                                                                        (let v17
                                                                               = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v11)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v6)
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
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Gov.gov-step
govStep ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovEnv_9227 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       T_GovActionState_6093) ->
  MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
    () () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5437
    T_GovProposal_1421 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    (MAlonzo.Code.Agda.Builtin.List.T_List_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
          T_GovActionState_6093))
govStep = coe d_gov'45'step_364
d_gov'45'step_364 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovEnv_9227 Integer ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     T_GovActionState_6093] ->
  MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
    AgdaAny AgdaAny
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5437
    T_GovProposal_1421 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer)
       T_GovActionState_6093]
d_gov'45'step_364 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe d_Conv'45'GovActionState_358)))
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120)
               (coe d_Conv'45'GovProposal_294))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                     (coe
                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                     (coe d_Conv'45'GovActionState_358))))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOV_1832
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
               (coe d_Conv'45'GovEnv_362)
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
            v0))
-- Ledger.Dijkstra.Foreign.Gov.govs-step
govsStep ::
  T_GovEnv_9227 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       T_GovActionState_6093) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5437
       T_GovProposal_1421) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    (MAlonzo.Code.Agda.Builtin.List.T_List_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
          T_GovActionState_6093))
govsStep = coe d_govs'45'step_366
d_govs'45'step_366 ::
  T_GovEnv_9227 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     T_GovActionState_6093] ->
  [MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
     AgdaAny AgdaAny
     MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVote_5437
     T_GovProposal_1421] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer)
       T_GovActionState_6093]
d_govs'45'step_366 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe d_Conv'45'GovActionState_358)))
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'GovVote_120)
                  (coe d_Conv'45'GovProposal_294)))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                     (coe
                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                        (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                     (coe d_Conv'45'GovActionState_358))))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOVS_2218
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'GovEnv_362
            v0))
-- Ledger.Dijkstra.Foreign.Gov.GovProposal
d_GovProposal_1421 = ()
type T_GovProposal_1421 = GovProposal
pattern C_MkGovProposal_1423 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_MkGovProposal_1423 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction_1107 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3969 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_Anchor_147 ->
  T_GovProposal_1421
check_MkGovProposal_1423 = MkGovProposal
cover_GovProposal_1421 :: GovProposal -> ()
cover_GovProposal_1421 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Gov.GovActionState
d_GovActionState_6093 = ()
type T_GovActionState_6093 = GovActionState
pattern C_MkGovActionState_6095 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_MkGovActionState_6095 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_GovVotes_1273 ->
  MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3969 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Actions.T_GovAction_1107 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovActionState_6093
check_MkGovActionState_6095 = MkGovActionState
cover_GovActionState_6093 :: GovActionState -> ()
cover_GovActionState_6093 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Gov.GovEnv
d_GovEnv_9227 = ()
type T_GovEnv_9227 = GovEnv
pattern C_MkGovEnv_9229 a0 a1 a2 a3 a4 a5 a6 = MkGovEnv a0 a1 a2 a3 a4 a5 a6
check_MkGovEnv_9229 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.T_PParams_12549 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.T_EnactState_1653 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.T_CertState_41 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  T_GovEnv_9227
check_MkGovEnv_9229 = MkGovEnv
cover_GovEnv_9227 :: GovEnv -> ()
cover_GovEnv_9227 x
  = case x of
      MkGovEnv _ _ _ _ _ _ _ -> ()
