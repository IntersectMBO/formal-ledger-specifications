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

module MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util

import GHC.Generics (Generic)
data GovRole = CC  | DRep  | SPO 
  deriving (Show, Eq, Generic)
data Anchor = Anchor {url :: Data.Text.Text, hash :: Integer}
 deriving (Show, Eq, Generic)
data VDeleg = VDelegCredential MAlonzo.Code.Ledger.Core.Foreign.Address.Credential | VDelegAbstain  | VDelegNoConfidence 
  deriving (Show, Eq, Generic)
data Vote = Yes  | No  | Abstain 
  deriving (Show, Eq, Generic)
data GovVotes = GovVotes {gvCC :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.Vote), gvDRep :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.Vote), gvSPO :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.Vote)}
 deriving (Show, Eq, Generic)
type GovVoter = (MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.GovRole, MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)
data GovVote = MkGovVote {gid :: (Integer, Integer), voter :: (MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.GovRole, MAlonzo.Code.Ledger.Core.Foreign.Address.Credential), vote :: MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.Vote, anchor :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.Anchor)}
 deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Gov.Core._.Vote
d_Vote_12 = ()
-- Ledger.Conway.Foreign.Gov.Core.GovRole
d_GovRole_17 = ()
type T_GovRole_17 = GovRole
pattern C_CC_19 = CC
pattern C_DRep_21 = DRep
pattern C_SPO_23 = SPO
check_CC_19 :: T_GovRole_17
check_CC_19 = CC
check_DRep_21 :: T_GovRole_17
check_DRep_21 = DRep
check_SPO_23 :: T_GovRole_17
check_SPO_23 = SPO
cover_GovRole_17 :: GovRole -> ()
cover_GovRole_17 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Conway.Foreign.Gov.Core.HsTy-GovRole
d_HsTy'45'GovRole_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovRole_22 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-GovRole
d_Conv'45'GovRole_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovRole_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
                -> coe C_CC_19
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
                -> coe C_DRep_21
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
                -> coe C_SPO_23
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_19
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
              C_DRep_21
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
              C_SPO_23
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-Anchor
d_HsTy'45'Anchor_26 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Anchor_26 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-Anchor
d_Conv'45'Anchor_28 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Anchor_28
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1014 v1 v2
                -> coe C_Anchor_149 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Anchor_149 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1014
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-VDeleg
d_HsTy'45'VDeleg_30 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'VDeleg_30 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-VDeleg
d_Conv'45'VDeleg_32 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'VDeleg_32
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_1054 v1
                -> coe
                     C_VDelegCredential_745
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_1056
                -> coe C_VDelegAbstain_823
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_1058
                -> coe C_VDelegNoConfidence_825
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_VDelegCredential_745 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_1054
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              C_VDelegAbstain_823
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_1056
              C_VDelegNoConfidence_825
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_1058
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-Vote
d_HsTy'45'Vote_34 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Vote_34 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-Vote
d_Conv'45'Vote_36 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Vote_36
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
                -> coe C_Yes_1145
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
                -> coe C_No_1147
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
                -> coe C_Abstain_1149
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Yes_1145
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
              C_No_1147
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
              C_Abstain_1149
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-GovVotes
d_HsTy'45'GovVotes_38 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVotes_38 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-GovVotes
d_Conv'45'GovVotes_40 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVotes_40
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1050 v1 v2 v3
                -> coe
                     C_GovVotes_1275
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
                                 (coe d_Conv'45'Vote_36)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
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
                                 (coe d_Conv'45'Vote_36)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe d_Conv'45'Vote_36)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_GovVotes_1275 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1050
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v4
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                           (coe d_Conv'45'Vote_36))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v4
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                           (coe d_Conv'45'Vote_36))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe d_Conv'45'Vote_36))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.GovVoter'
d_GovVoter''_42 :: ()
d_GovVoter''_42 = erased
-- Ledger.Conway.Foreign.Gov.Core.mkGovVoter'
d_mkGovVoter''_44 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovVoter''_44
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_1002 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                               (coe v2))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_1002
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_1002
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
                       -> case coe v2 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_1002
                                   (coe v1) (coe v3)
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                                   ("mkGovVoter: Converting from SPO with ScriptObj credential"
                                    ::
                                    Data.Text.Text)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-GovVoter
d_HsTy'45'GovVoter_62 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVoter_62 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-GovVoter
d_Conv'45'GovVoter_64 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVoter_64
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovVoter''_44)
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
         (coe
            MAlonzo.Code.Foreign.Convertible.C_constructor_22
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
                      -> coe C_CC_19
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
                      -> coe C_DRep_21
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
                      -> coe C_SPO_23
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v0 ->
                  case coe v0 of
                    C_CC_19
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_838
                    C_DRep_21
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_840
                    C_SPO_23
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_842
                    _ -> MAlonzo.RTE.mazUnreachableError)))
         (coe
            MAlonzo.Code.Foreign.Convertible.C_constructor_22
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 (coe v1)
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 (coe v1)
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Core.Foreign.Address.C_KeyHashObj_617 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                           (coe v1)
                    MAlonzo.Code.Ledger.Core.Foreign.Address.C_ScriptObj_631 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                           (coe v1)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Conway.Foreign.Gov.Core.GovVote'
d_GovVote''_66 = ()
data T_GovVote''_66
  = C_constructor_84 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_984
                     (Maybe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1004)
-- Ledger.Conway.Foreign.Gov.Core.GovVote'.gid
d_gid_76 ::
  T_GovVote''_66 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_76 v0
  = case coe v0 of
      C_constructor_84 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Gov.Core.GovVote'.voter
d_voter_78 ::
  T_GovVote''_66 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_78 v0
  = case coe v0 of
      C_constructor_84 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Gov.Core.GovVote'.vote
d_vote_80 ::
  T_GovVote''_66 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_984
d_vote_80 v0
  = case coe v0 of
      C_constructor_84 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Gov.Core.GovVote'.anchor
d_anchor_82 ::
  T_GovVote''_66 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1004
d_anchor_82 v0
  = case coe v0 of
      C_constructor_84 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Gov.Core.mkGovVote'
d_mkGovVote''_86 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovVote''_86
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_84
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1026
                 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18 d_mkGovVoter''_44
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1028
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1030
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1032
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1034
              (coe d_gid_76 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20 d_mkGovVoter''_44
                 (d_voter_78 (coe v0)))
              (coe d_vote_80 (coe v0)) (coe d_anchor_82 (coe v0))))
-- Ledger.Conway.Foreign.Gov.Core.v.anchor
d_anchor_106 ::
  T_GovVote''_66 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1004
d_anchor_106 v0 = coe d_anchor_82 (coe v0)
-- Ledger.Conway.Foreign.Gov.Core.v.gid
d_gid_108 ::
  T_GovVote''_66 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_108 v0 = coe d_gid_76 (coe v0)
-- Ledger.Conway.Foreign.Gov.Core.v.vote
d_vote_110 ::
  T_GovVote''_66 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_984
d_vote_110 v0 = coe d_vote_80 (coe v0)
-- Ledger.Conway.Foreign.Gov.Core.v.voter
d_voter_112 ::
  T_GovVote''_66 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_112 v0 = coe d_voter_78 (coe v0)
-- Ledger.Conway.Foreign.Gov.Core.HsTy-GovVote'
d_HsTy'45'GovVote''_114 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote''_114 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-GovVote'
d_Conv'45'GovVote''_116 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote''_116
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_84 v1 v2 v3 v4
                -> coe
                     C_MkGovVote_5439
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe d_Conv'45'GovRole_24))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
                                     -> coe C_Yes_1145
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
                                     -> coe C_No_1147
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
                                     -> coe C_Abstain_1149
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1145
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
                                   C_No_1147
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
                                   C_Abstain_1149
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_28))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkGovVote_5439 v1 v2 v3 v4
                -> coe
                     C_constructor_84
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'GovRole_24))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
                                     -> coe C_Yes_1145
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
                                     -> coe C_No_1147
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
                                     -> coe C_Abstain_1149
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1145
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_986
                                   C_No_1147
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_988
                                   C_Abstain_1149
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_990
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_28))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Gov.Core.HsTy-GovVote
d_HsTy'45'GovVote_118 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote_118 = erased
-- Ledger.Conway.Foreign.Gov.Core.Conv-GovVote
d_Conv'45'GovVote_120 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote_120
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovVote''_86) (coe d_Conv'45'GovVote''_116)
-- Ledger.Conway.Foreign.Gov.Core.Anchor
d_Anchor_147 = ()
type T_Anchor_147 = Anchor
pattern C_Anchor_149 a0 a1 = Anchor a0 a1
check_Anchor_149 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer -> T_Anchor_147
check_Anchor_149 = Anchor
cover_Anchor_147 :: Anchor -> ()
cover_Anchor_147 x
  = case x of
      Anchor _ _ -> ()
-- Ledger.Conway.Foreign.Gov.Core.VDeleg
d_VDeleg_743 = ()
type T_VDeleg_743 = VDeleg
pattern C_VDelegCredential_745 a0 = VDelegCredential a0
pattern C_VDelegAbstain_823 = VDelegAbstain
pattern C_VDelegNoConfidence_825 = VDelegNoConfidence
check_VDelegCredential_745 ::
  MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  T_VDeleg_743
check_VDelegCredential_745 = VDelegCredential
check_VDelegAbstain_823 :: T_VDeleg_743
check_VDelegAbstain_823 = VDelegAbstain
check_VDelegNoConfidence_825 :: T_VDeleg_743
check_VDelegNoConfidence_825 = VDelegNoConfidence
cover_VDeleg_743 :: VDeleg -> ()
cover_VDeleg_743 x
  = case x of
      VDelegCredential _ -> ()
      VDelegAbstain -> ()
      VDelegNoConfidence -> ()
-- Ledger.Conway.Foreign.Gov.Core.Vote
d_Vote_1143 = ()
type T_Vote_1143 = Vote
pattern C_Yes_1145 = Yes
pattern C_No_1147 = No
pattern C_Abstain_1149 = Abstain
check_Yes_1145 :: T_Vote_1143
check_Yes_1145 = Yes
check_No_1147 :: T_Vote_1143
check_No_1147 = No
check_Abstain_1149 :: T_Vote_1143
check_Abstain_1149 = Abstain
cover_Vote_1143 :: Vote -> ()
cover_Vote_1143 x
  = case x of
      Yes -> ()
      No -> ()
      Abstain -> ()
-- Ledger.Conway.Foreign.Gov.Core.GovVotes
d_GovVotes_1273 = ()
type T_GovVotes_1273 = GovVotes
pattern C_GovVotes_1275 a0 a1 a2 = GovVotes a0 a1 a2
check_GovVotes_1275 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    T_Vote_1143 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    T_Vote_1143 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer T_Vote_1143 ->
  T_GovVotes_1273
check_GovVotes_1275 = GovVotes
cover_GovVotes_1273 :: GovVotes -> ()
cover_GovVotes_1273 x
  = case x of
      GovVotes _ _ _ -> ()
-- Ledger.Conway.Foreign.Gov.Core.GovVote
d_GovVote_5437 = ()
type T_GovVote_5437 = GovVote
pattern C_MkGovVote_5439 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_MkGovVote_5439 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_17
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615 ->
  T_Vote_1143 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Anchor_147 ->
  T_GovVote_5437
check_MkGovVote_5439 = MkGovVote
cover_GovVote_5437 :: GovVote -> ()
cover_GovVote_5437 x
  = case x of
      MkGovVote _ _ _ _ -> ()
