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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.GovernanceActions

import GHC.Generics (Generic)
data GovRole = CC  | DRep  | SPO 
  deriving (Show, Eq, Generic)
data Anchor = Anchor {url :: Data.Text.Text, hash :: Integer}
  deriving (Show, Eq, Generic)
data VDeleg = CredVoter MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential | AbstainRep  | NoConfidenceRep 
  deriving (Show, Eq, Generic)
data Vote = Yes  | No  | Abstain 
  deriving (Show, Eq, Generic)
data GovVote = GovVote {gid :: (Integer, Integer), voter :: (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole, MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential), vote :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote, anchor :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core._.Vote
d_Vote_14 = ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole
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
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovRole
d_HsTy'45'GovRole_24 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovRole_24 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovRole
d_Conv'45'GovRole_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovRole_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_CC_664 -> coe C_CC_19
              MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666 -> coe C_DRep_21
              MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668 -> coe C_SPO_23
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_19 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664
              C_DRep_21 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
              C_SPO_23 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Anchor
d_HsTy'45'Anchor_28 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Anchor_28 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Anchor
d_Conv'45'Anchor_30 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Anchor_30
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_Anchor'46'constructor_2097 v1 v2
                -> coe C_Anchor_145 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Anchor_145 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_Anchor'46'constructor_2097
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-VDeleg
d_HsTy'45'VDeleg_32 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'VDeleg_32 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-VDeleg
d_Conv'45'VDeleg_34 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'VDeleg_34
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676 v1 v2
                -> coe
                     C_CredVoter_691
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.GovernanceActions.C_CC_664 -> coe C_CC_19
                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666 -> coe C_DRep_21
                                   MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668 -> coe C_SPO_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_CC_19 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664
                                   C_DRep_21 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
                                   C_SPO_23 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_535
                                          (coe v4)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_569
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_535 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v4)
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_569 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678
                -> coe C_AbstainRep_853
              MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680
                -> coe C_NoConfidenceRep_855
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_CredVoter_691 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.GovernanceActions.C_CC_664 -> coe C_CC_19
                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666 -> coe C_DRep_21
                                   MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668 -> coe C_SPO_23
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_CC_19 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664
                                   C_DRep_21 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
                                   C_SPO_23 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_535
                                          (coe v4)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_569
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_535 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v4)
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_569 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              C_AbstainRep_853
                -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678
              C_NoConfidenceRep_855
                -> coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Vote
d_HsTy'45'Vote_36 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Vote_36 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Vote
d_Conv'45'Vote_38 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Vote_38
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_yes_716 -> coe C_Yes_1407
              MAlonzo.Code.Ledger.GovernanceActions.C_no_718 -> coe C_No_1409
              MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
                -> coe C_Abstain_1411
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Yes_1407 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_716
              C_No_1409 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_718
              C_Abstain_1411
                -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVote
d_HsTy'45'GovVote_40 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote_40 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVote
d_Conv'45'GovVote_42 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote_42
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3437 v1 v2 v3 v4
                -> coe
                     C_GovVote_1533
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe d_Conv'45'GovRole_26))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.GovernanceActions.C_yes_716 -> coe C_Yes_1407
                                   MAlonzo.Code.Ledger.GovernanceActions.C_no_718 -> coe C_No_1409
                                   MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
                                     -> coe C_Abstain_1411
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1407 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_716
                                   C_No_1409 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_718
                                   C_Abstain_1411
                                     -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_30))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_GovVote_1533 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3437
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'GovRole_26))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.GovernanceActions.C_yes_716 -> coe C_Yes_1407
                                   MAlonzo.Code.Ledger.GovernanceActions.C_no_718 -> coe C_No_1409
                                   MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
                                     -> coe C_Abstain_1411
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1407 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_716
                                   C_No_1409 -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_718
                                   C_Abstain_1411
                                     -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_720
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_30))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor
d_Anchor_143 = ()
type T_Anchor_143 = Anchor
pattern C_Anchor_145 a0 a1 = Anchor a0 a1
check_Anchor_145 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer -> T_Anchor_143
check_Anchor_145 = Anchor
cover_Anchor_143 :: Anchor -> ()
cover_Anchor_143 x
  = case x of
      Anchor _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg
d_VDeleg_689 = ()
type T_VDeleg_689 = VDeleg
pattern C_CredVoter_691 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_853 = AbstainRep
pattern C_NoConfidenceRep_855 = NoConfidenceRep
check_CredVoter_691 ::
  T_GovRole_17 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533 ->
  T_VDeleg_689
check_CredVoter_691 = CredVoter
check_AbstainRep_853 :: T_VDeleg_689
check_AbstainRep_853 = AbstainRep
check_NoConfidenceRep_855 :: T_VDeleg_689
check_NoConfidenceRep_855 = NoConfidenceRep
cover_VDeleg_689 :: VDeleg -> ()
cover_VDeleg_689 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote
d_Vote_1405 = ()
type T_Vote_1405 = Vote
pattern C_Yes_1407 = Yes
pattern C_No_1409 = No
pattern C_Abstain_1411 = Abstain
check_Yes_1407 :: T_Vote_1405
check_Yes_1407 = Yes
check_No_1409 :: T_Vote_1405
check_No_1409 = No
check_Abstain_1411 :: T_Vote_1405
check_Abstain_1411 = Abstain
cover_Vote_1405 :: Vote -> ()
cover_Vote_1405 x
  = case x of
      Yes -> ()
      No -> ()
      Abstain -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote
d_GovVote_1531 = ()
type T_GovVote_1531 = GovVote
pattern C_GovVote_1533 a0 a1 a2 a3 = GovVote a0 a1 a2 a3
check_GovVote_1533 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_17
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533 ->
  T_Vote_1405 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Anchor_143 ->
  T_GovVote_1531
check_GovVote_1533 = GovVote
cover_GovVote_1531 :: GovVote -> ()
cover_GovVote_1531 x
  = case x of
      GovVote _ _ _ _ -> ()
