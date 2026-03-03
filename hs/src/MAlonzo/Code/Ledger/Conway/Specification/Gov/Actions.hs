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

module MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.String.Properties
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_44 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_74 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_74 v2 v3
du_DecEq'45'Credential_74 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_74 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_98 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_98 v1 v2 v3
du_DecEq'45'RewardAddress_98 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_98 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_128 = erased
-- _.THash
d_THash_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_196 = erased
-- _.RewardAddress
d_RewardAddress_268 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_286 = erased
-- _.RewardAddress.net
d_net_806 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RewardAddress.stake
d_stake_808 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovRole
d_GovRole_828 a0 = ()
data T_GovRole_828 = C_CC_830 | C_DRep_832 | C_SPO_834
-- Ledger.Conway.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_836 ~v0 = du_Show'45'GovRole_836
du_Show'45'GovRole_836 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_836
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_830 -> coe ("CC" :: Data.Text.Text)
              C_DRep_832 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_834 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_828 -> ()
d_GovRoleCredential_838 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovActionType
d_GovActionType_840 a0 = ()
data T_GovActionType_840
  = C_NoConfidence_842 | C_UpdateCommittee_844 |
    C_NewConstitution_846 | C_TriggerHardFork_848 |
    C_ChangePParams_850 | C_TreasuryWithdrawal_852 | C_Info_854
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_858 a0 a1 = ()
newtype T_HasGovActionType_858
  = C_constructor_866 (AgdaAny -> T_GovActionType_840)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_864 ::
  T_HasGovActionType_858 -> AgdaAny -> T_GovActionType_840
d_GovActionTypeOf_864 v0
  = case coe v0 of
      C_constructor_866 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_870 ::
  T_HasGovActionType_858 -> AgdaAny -> T_GovActionType_840
d_GovActionTypeOf_870 v0 = coe d_GovActionTypeOf_864 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovActionData
d_GovActionData_872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_840 -> ()
d_GovActionData_872 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovAction
d_GovAction_874 a0 = ()
data T_GovAction_874
  = C_'10214'_'44'_'10215''7501''7491'_884 T_GovActionType_840
                                           AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaType
d_gaType_880 :: T_GovAction_874 -> T_GovActionType_840
d_gaType_880 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_884 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaData
d_gaData_882 :: T_GovAction_874 -> AgdaAny
d_gaData_882 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_884 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction
d_HasGovAction_888 a0 a1 = ()
newtype T_HasGovAction_888
  = C_constructor_896 (AgdaAny -> T_GovAction_874)
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_894 ::
  T_HasGovAction_888 -> AgdaAny -> T_GovAction_874
d_GovActionOf_894 v0
  = case coe v0 of
      C_constructor_896 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_900 ::
  T_HasGovAction_888 -> AgdaAny -> T_GovAction_874
d_GovActionOf_900 v0 = coe d_GovActionOf_894 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_858
d_HasGovActionType'45'GovAction_902 ~v0
  = du_HasGovActionType'45'GovAction_902
du_HasGovActionType'45'GovAction_902 :: T_HasGovActionType_858
du_HasGovActionType'45'GovAction_902
  = coe C_constructor_866 (coe (\ v0 -> d_gaType_880 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_904 ~v0
  = du_HasCast'45'GovAction'45'Sigma_904
du_HasCast'45'GovAction'45'Sigma_904 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_904
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_880 (coe v0)) (coe d_gaData_882 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_908 ~v0 = du_DecEq'45'GovActionType_908
du_DecEq'45'GovActionType_908 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_908
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_842
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_844
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_846
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_848
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_850
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_852
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_854
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_848
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_850
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_852
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.==-Set
d_'61''61''45'Set_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_914 ~v0 ~v1 v2 v3 v4
  = du_'61''61''45'Set_914 v2 v3 v4
du_'61''61''45'Set_914 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_914 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         MAlonzo.Code.Data.Bool.ListAction.du_all_18
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                 erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased v0 v3 v2)))
         (coe v1))
      (coe
         MAlonzo.Code.Data.Bool.ListAction.du_all_18
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                 erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased v0 v3 v1)))
         (coe v2))
-- Ledger.Conway.Specification.Gov.Actions.==-GovActionData
d_'61''61''45'GovActionData_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_840 -> AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_926 v0 v1
  = case coe v1 of
      C_NoConfidence_842
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      C_UpdateCommittee_844
        -> coe
             (\ v2 ->
                case coe v2 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                    -> case coe v4 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                           -> coe
                                (\ v7 ->
                                   case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                       -> case coe v9 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                              -> coe
                                                   MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                   (coe
                                                      du_'61''61''45'Set_914
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0))) in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0)) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                  (coe v12) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_662
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe v8)))
                                                   (coe
                                                      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                         (coe ())
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                             (coe v0))) in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                             (coe v0)) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                     (coe v12) (coe v13)))))
                                                         (coe v5) (coe v10))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                         (coe ())
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792))
                                                         (coe v6) (coe v11)))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError)
      C_NewConstitution_846
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'DocHash_614
                   (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                         (coe v0)))))
      C_TriggerHardFork_848
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      C_ChangePParams_850
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1546
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1184
                   (coe v0)))
      C_TreasuryWithdrawal_852
        -> coe
             (\ v2 v3 ->
                coe
                  du_'61''61''45'Set_914
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (let v4
                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1202
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                         (coe v0))) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                 (coe v4) (coe v5) (coe v6)))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3)))
      C_Info_854
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.==-GovAction
d_'61''61''45'GovAction_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_874 -> T_GovAction_874 -> Bool
d_'61''61''45'GovAction_944 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''7501''7491'_884 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''7501''7491'_884 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_908) v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_'61''61''45'GovActionData_926 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionID
d_GovActionID_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_974 = erased
-- Ledger.Conway.Specification.Gov.Actions.Vote
d_Vote_976 a0 = ()
data T_Vote_976 = C_yes_978 | C_no_980 | C_abstain_982
-- Ledger.Conway.Specification.Gov.Actions.GovVoter
d_GovVoter_984 a0 = ()
data T_GovVoter_984
  = C_'10214'_'44'_'10215''7501''7515'_994 T_GovRole_828 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_990 :: T_GovVoter_984 -> T_GovRole_828
d_gvRole_990 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_994 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_992 :: T_GovVoter_984 -> AgdaAny
d_gvCredential_992 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_994 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor
d_Anchor_996 a0 = ()
data T_Anchor_996
  = C_constructor_1006 MAlonzo.Code.Agda.Builtin.String.T_String_6
                       AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.Anchor.url
d_url_1002 ::
  T_Anchor_996 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1002 v0
  = case coe v0 of
      C_constructor_1006 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor.hash
d_hash_1004 :: T_Anchor_996 -> AgdaAny
d_hash_1004 v0
  = case coe v0 of
      C_constructor_1006 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote
d_GovVote_1008 a0 = ()
data T_GovVote_1008
  = C_constructor_1026 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       T_GovVoter_984 T_Vote_976 (Maybe T_Anchor_996)
-- Ledger.Conway.Specification.Gov.Actions.GovVote.gid
d_gid_1018 ::
  T_GovVote_1008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1018 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.voter
d_voter_1020 :: T_GovVote_1008 -> T_GovVoter_984
d_voter_1020 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.vote
d_vote_1022 :: T_GovVote_1008 -> T_Vote_976
d_vote_1022 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.anchor
d_anchor_1024 :: T_GovVote_1008 -> Maybe T_Anchor_996
d_anchor_1024 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes
d_GovVotes_1028 a0 = ()
data T_GovVotes_1028
  = C_constructor_1042 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_1036 ::
  T_GovVotes_1028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1036 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_1038 ::
  T_GovVotes_1028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1038 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_1040 ::
  T_GovVotes_1028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1040 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.VDeleg
d_VDeleg_1044 a0 = ()
data T_VDeleg_1044
  = C_vDelegCredential_1046 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_1048 | C_vDelegNoConfidence_1050
-- Ledger.Conway.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1052 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_1058 a0 a1 a2 = ()
newtype T_HasVoteDelegs_1058
  = C_constructor_1068 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1066 ::
  T_HasVoteDelegs_1058 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1066 v0
  = case coe v0 of
      C_constructor_1068 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_1072 ::
  T_HasVoteDelegs_1058 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1072 v0 = coe d_VoteDelegsOf_1066 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.NeedsHash
d_NeedsHash_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_840 -> ()
d_NeedsHash_1074 = erased
-- Ledger.Conway.Specification.Gov.Actions.HashProtected
d_HashProtected_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_1076 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1082 ~v0 ~v1
  = du_HasCast'45'HashProtected_1082
du_HasCast'45'HashProtected_1082 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1082
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1084 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1084
du_HasCast'45'HashProtected'45'MaybeScriptHash_1084 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1084
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Policy
d_Policy_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_1086 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovProposal
d_GovProposal_1088 a0 = ()
data T_GovProposal_1088
  = C_constructor_1114 T_GovAction_874 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       T_Anchor_996
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.action
d_action_1102 :: T_GovProposal_1088 -> T_GovAction_874
d_action_1102 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1104 :: T_GovProposal_1088 -> AgdaAny
d_prevAction_1104 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.policy
d_policy_1106 :: T_GovProposal_1088 -> Maybe AgdaAny
d_policy_1106 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1108 :: T_GovProposal_1088 -> Integer
d_deposit_1108 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1110 ::
  T_GovProposal_1088 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1110 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1112 :: T_GovProposal_1088 -> T_Anchor_996
d_anchor_1112 v0
  = case coe v0 of
      C_constructor_1114 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState
d_GovActionState_1116 a0 = ()
data T_GovActionState_1116
  = C_constructor_1138 T_GovVotes_1028
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       AgdaAny T_GovAction_874 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.votes
d_votes_1128 :: T_GovActionState_1116 -> T_GovVotes_1028
d_votes_1128 v0
  = case coe v0 of
      C_constructor_1138 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1130 ::
  T_GovActionState_1116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1130 v0
  = case coe v0 of
      C_constructor_1138 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1132 :: T_GovActionState_1116 -> AgdaAny
d_expiresIn_1132 v0
  = case coe v0 of
      C_constructor_1138 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.action
d_action_1134 :: T_GovActionState_1116 -> T_GovAction_874
d_action_1134 v0
  = case coe v0 of
      C_constructor_1138 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1136 :: T_GovActionState_1116 -> AgdaAny
d_prevAction_1136 v0
  = case coe v0 of
      C_constructor_1138 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1144 a0 a1 a2 = ()
newtype T_HasGovVoter_1144
  = C_constructor_1154 (AgdaAny -> T_GovVoter_984)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1152 ::
  T_HasGovVoter_1144 -> AgdaAny -> T_GovVoter_984
d_GovVoterOf_1152 v0
  = case coe v0 of
      C_constructor_1154 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1158 ::
  T_HasGovVoter_1144 -> AgdaAny -> T_GovVoter_984
d_GovVoterOf_1158 v0 = coe d_GovVoterOf_1152 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasVote
d_HasVote_1164 a0 a1 a2 = ()
newtype T_HasVote_1164 = C_constructor_1174 (AgdaAny -> T_Vote_976)
-- Ledger.Conway.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1172 :: T_HasVote_1164 -> AgdaAny -> T_Vote_976
d_VoteOf_1172 v0
  = case coe v0 of
      C_constructor_1174 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteOf
d_VoteOf_1178 :: T_HasVote_1164 -> AgdaAny -> T_Vote_976
d_VoteOf_1178 v0 = coe d_VoteOf_1172 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1184 a0 a1 a2 = ()
newtype T_HasPolicy_1184
  = C_constructor_1194 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1192 :: T_HasPolicy_1184 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1192 v0
  = case coe v0 of
      C_constructor_1194 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1198 :: T_HasPolicy_1184 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1198 v0 = coe d_PolicyOf_1192 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1144
d_HasGovVoter'45'GovVote_1200 ~v0 = du_HasGovVoter'45'GovVote_1200
du_HasGovVoter'45'GovVote_1200 :: T_HasGovVoter_1144
du_HasGovVoter'45'GovVote_1200
  = coe C_constructor_1154 (coe (\ v0 -> d_voter_1020 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1164
d_HasVote'45'GovVote_1202 ~v0 = du_HasVote'45'GovVote_1202
du_HasVote'45'GovVote_1202 :: T_HasVote_1164
du_HasVote'45'GovVote_1202
  = coe C_constructor_1174 (coe (\ v0 -> d_vote_1022 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1184
d_HasPolicy'45'GovProposal_1204 ~v0
  = du_HasPolicy'45'GovProposal_1204
du_HasPolicy'45'GovProposal_1204 :: T_HasPolicy_1184
du_HasPolicy'45'GovProposal_1204
  = coe C_constructor_1194 (coe (\ v0 -> d_policy_1106 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_888
d_HasGovAction'45'GovProposal_1206 ~v0
  = du_HasGovAction'45'GovProposal_1206
du_HasGovAction'45'GovProposal_1206 :: T_HasGovAction_888
du_HasGovAction'45'GovProposal_1206
  = coe C_constructor_896 (coe (\ v0 -> d_action_1102 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_888
d_HasGovAction'45'GovActionState_1208 ~v0
  = du_HasGovAction'45'GovActionState_1208
du_HasGovAction'45'GovActionState_1208 :: T_HasGovAction_888
du_HasGovAction'45'GovActionState_1208
  = coe C_constructor_896 (coe (\ v0 -> d_action_1134 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_858
d_HasGovActionType'45'GovProposal_1210 ~v0
  = du_HasGovActionType'45'GovProposal_1210
du_HasGovActionType'45'GovProposal_1210 :: T_HasGovActionType_858
du_HasGovActionType'45'GovProposal_1210
  = coe
      C_constructor_866
      (coe (\ v0 -> d_gaType_880 (coe d_action_1102 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_858
d_HasGovActionType'45'GovActionState_1212 ~v0
  = du_HasGovActionType'45'GovActionState_1212
du_HasGovActionType'45'GovActionState_1212 ::
  T_HasGovActionType_858
du_HasGovActionType'45'GovActionState_1212
  = coe
      C_constructor_866
      (coe (\ v0 -> d_gaType_880 (coe d_action_1134 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1214 ~v0 = du_DecEq'45'GovRole_1214
du_DecEq'45'GovRole_1214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1214
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_830
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_830
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_832
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_830
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_834
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_830
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1216 ~v0 = du_DecEq'45'Vote_1216
du_DecEq'45'Vote_1216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1216
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_978
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_978
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_980
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_982
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_980
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_978
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_980
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_982
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_982
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_978
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_980
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_982
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1218 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1046 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_1046 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                  (coe v0))))
                                         v2 v4 in
                               coe
                                 (case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                      -> if coe v6
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_vDelegAbstain_1048
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1050
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_1048
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1046 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1048
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_1050
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_1050
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1046 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1048
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1050
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Anchor
d_DecEq'45'Anchor_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1220 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_1006 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_constructor_1006 v5 v6
                            -> let v7
                                     = MAlonzo.Code.Data.String.Properties.d__'8799'__54
                                         (coe v2) (coe v5) in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'DocHash_614
                                                             (coe v0))
                                                          v3 v6 in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1222 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_994 v2 v3
                -> case coe v2 of
                     C_CC_830
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_994 v5 v6
                                   -> case coe v5 of
                                        C_CC_830
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        C_DRep_832
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_834
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_832
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_994 v5 v6
                                   -> case coe v5 of
                                        C_CC_830
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_832
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        C_SPO_834
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_834
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_994 v5 v6
                                   -> case coe v5 of
                                        C_CC_830
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_832
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_834
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovVote
d_HasCast'45'GovVote_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1320 ~v0 = du_HasCast'45'GovVote_1320
du_HasCast'45'GovVote_1320 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1320
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1008 :: Integer) (9062150309299526334 :: Integer)
                                 "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (974 :: Integer) (9062150309299526334 :: Integer)
                                 "Ledger.Conway.Specification.Gov.Actions.GovActionID"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1008 :: Integer) (9062150309299526334 :: Integer)
                                    "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (984 :: Integer) (9062150309299526334 :: Integer)
                                    "Ledger.Conway.Specification.Gov.Actions.GovVoter"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1008 :: Integer) (9062150309299526334 :: Integer)
                                       "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (976 :: Integer) (9062150309299526334 :: Integer)
                                       "Ledger.Conway.Specification.Gov.Actions.Vote"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1008 :: Integer) (9062150309299526334 :: Integer)
                                          "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (10 :: Integer) (15412666033012224255 :: Integer)
                                          "Agda.Builtin.Maybe.Maybe"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (20 :: Integer) (10880583612240331187 :: Integer)
                                                   "Agda.Primitive.lzero"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (996 :: Integer)
                                                      (9062150309299526334 :: Integer)
                                                      "Ledger.Conway.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_1026))
-- Ledger.Conway.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1322 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1046 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("vDelegCredential" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_348
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_1048 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_1050
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_840 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1326 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (case coe v1 of
         C_NoConfidence_842
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_UpdateCommittee_844
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_NewConstitution_846
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TriggerHardFork_848
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_ChangePParams_850
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TreasuryWithdrawal_852
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         C_Info_854
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.Actions.==-GovProposal
d_'61''61''45'GovProposal_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovProposal_1088 -> T_GovProposal_1088 -> Bool
d_'61''61''45'GovProposal_1328 v0 v1 v2
  = case coe v1 of
      C_constructor_1114 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C_constructor_1114 v9 v10 v11 v12 v13 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_908) (d_gaType_880 (coe v3))
                            (d_gaType_880 (coe v9)) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                         -> if coe v16
                              then coe
                                     seq (coe v17)
                                     (case coe v3 of
                                        C_'10214'_'44'_'10215''7501''7491'_884 v18 v19
                                          -> coe
                                               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                               (coe
                                                  d_'61''61''45'GovAction_944 (coe v0)
                                                  (coe
                                                     C_'10214'_'44'_'10215''7501''7491'_884
                                                     (coe d_gaType_880 (coe v9)) (coe v19))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                     (coe ())
                                                     (coe
                                                        d_DecEq'45'NeedsHash_1326 (coe v0)
                                                        (coe d_gaType_880 (coe v9)))
                                                     (coe v4) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                        (coe ())
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                 (coe v0))))
                                                        (coe v5) (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                           (coe ())
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                           (coe v6) (coe v12))
                                                        (coe
                                                           MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1202
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                       (coe v0))))
                                                              (coe v7) (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe d_DecEq'45'Anchor_1220 (coe v0))
                                                              (coe v8) (coe v14))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              else coe seq (coe v17) (coe v16)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_984 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1424 ~v0 v1 = du_isGovVoterDRep_1424 v1
du_isGovVoterDRep_1424 ::
  T_GovVoter_984 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1424 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_994 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_832
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1428 ~v0 v1 = du_govVoterCredential_1428 v1
du_govVoterCredential_1428 ::
  T_GovVoter_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1428 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_994 v1 v2
        -> case coe v1 of
             C_CC_830 -> coe v2
             C_DRep_832 -> coe v2
             C_SPO_834
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.proposedCC
d_proposedCC_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_874 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1436 ~v0 v1 = du_proposedCC_1436 v1
du_proposedCC_1436 ::
  T_GovAction_874 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1436 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_884 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_844
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                         -> coe
                              seq (coe v5)
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v4))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.DReps
d_DReps_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1440 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasDReps
d_HasDReps_1446 a0 a1 a2 = ()
newtype T_HasDReps_1446
  = C_constructor_1456 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1454 ::
  T_HasDReps_1446 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1454 v0
  = case coe v0 of
      C_constructor_1456 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1460 ::
  T_HasDReps_1446 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1460 v0 = coe d_DRepsOf_1454 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1462 = erased
-- Ledger.Conway.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1446 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1472 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1472 v0 v2 v3 v4
du_activeDRepsOf_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1446 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1472 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_662
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_662
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_662
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_662
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1454 v1 v2)
