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
d_Credential_46 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_76 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_76 v2 v3
du_DecEq'45'Credential_76 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_76 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_102 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_102 v1 v2 v3
du_DecEq'45'RewardAddress_102 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_102 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_134 = erased
-- _.THash
d_THash_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_210 = erased
-- _.RewardAddress
d_RewardAddress_282 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_300 = erased
-- _.RewardAddress.net
d_net_828 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_830 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovRole
d_GovRole_840 a0 = ()
data T_GovRole_840 = C_CC_842 | C_DRep_844 | C_SPO_846
-- Ledger.Conway.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_848 ~v0 = du_Show'45'GovRole_848
du_Show'45'GovRole_848 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_848
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_842 -> coe ("CC" :: Data.Text.Text)
              C_DRep_844 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_846 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_840 -> ()
d_GovRoleCredential_850 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovActionType
d_GovActionType_852 a0 = ()
data T_GovActionType_852
  = C_NoConfidence_854 | C_UpdateCommittee_856 |
    C_NewConstitution_858 | C_TriggerHardFork_860 |
    C_ChangePParams_862 | C_TreasuryWithdrawal_864 | C_Info_866
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_870 a0 a1 = ()
newtype T_HasGovActionType_870
  = C_constructor_878 (AgdaAny -> T_GovActionType_852)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_876 ::
  T_HasGovActionType_870 -> AgdaAny -> T_GovActionType_852
d_GovActionTypeOf_876 v0
  = case coe v0 of
      C_constructor_878 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_882 ::
  T_HasGovActionType_870 -> AgdaAny -> T_GovActionType_852
d_GovActionTypeOf_882 v0 = coe d_GovActionTypeOf_876 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovActionData
d_GovActionData_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_852 -> ()
d_GovActionData_884 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovAction
d_GovAction_886 a0 = ()
data T_GovAction_886
  = C_'10214'_'44'_'10215''7501''7491'_896 T_GovActionType_852
                                           AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaType
d_gaType_892 :: T_GovAction_886 -> T_GovActionType_852
d_gaType_892 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_896 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaData
d_gaData_894 :: T_GovAction_886 -> AgdaAny
d_gaData_894 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_896 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction
d_HasGovAction_900 a0 a1 = ()
newtype T_HasGovAction_900
  = C_constructor_908 (AgdaAny -> T_GovAction_886)
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_906 ::
  T_HasGovAction_900 -> AgdaAny -> T_GovAction_886
d_GovActionOf_906 v0
  = case coe v0 of
      C_constructor_908 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_912 ::
  T_HasGovAction_900 -> AgdaAny -> T_GovAction_886
d_GovActionOf_912 v0 = coe d_GovActionOf_906 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_870
d_HasGovActionType'45'GovAction_914 ~v0
  = du_HasGovActionType'45'GovAction_914
du_HasGovActionType'45'GovAction_914 :: T_HasGovActionType_870
du_HasGovActionType'45'GovAction_914
  = coe C_constructor_878 (coe (\ v0 -> d_gaType_892 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_916 ~v0
  = du_HasCast'45'GovAction'45'Sigma_916
du_HasCast'45'GovAction'45'Sigma_916 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_916
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_892 (coe v0)) (coe d_gaData_894 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_920 ~v0 = du_DecEq'45'GovActionType_920
du_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_920
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_854
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_856
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_858
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_860
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_862
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_864
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_866
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_854
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_856
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_858
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_860
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_862
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_864
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.==-Set
d_'61''61''45'Set_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_926 ~v0 ~v1 v2 v3 v4
  = du_'61''61''45'Set_926 v2 v3 v4
du_'61''61''45'Set_926 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_926 v0 v1 v2
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
d_'61''61''45'GovActionData_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_852 -> AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_938 v0 v1
  = case coe v1 of
      C_NoConfidence_854
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      C_UpdateCommittee_856
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
                                                      du_'61''61''45'Set_926
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0))) in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0)) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe v12) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_666
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
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                             (coe v0))) in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                             (coe v0)) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
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
      C_NewConstitution_858
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
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                         (coe v0)))))
      C_TriggerHardFork_860
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      C_ChangePParams_862
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1184
                   (coe v0)))
      C_TreasuryWithdrawal_864
        -> coe
             (\ v2 v3 ->
                coe
                  du_'61''61''45'Set_926
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                         (coe v0))) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe v4) (coe v5) (coe v6)))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3)))
      C_Info_866
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.==-GovAction
d_'61''61''45'GovAction_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_886 -> T_GovAction_886 -> Bool
d_'61''61''45'GovAction_956 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''7501''7491'_896 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''7501''7491'_896 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_920) v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_'61''61''45'GovActionData_938 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionID
d_GovActionID_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_986 = erased
-- Ledger.Conway.Specification.Gov.Actions.Vote
d_Vote_988 a0 = ()
data T_Vote_988 = C_yes_990 | C_no_992 | C_abstain_994
-- Ledger.Conway.Specification.Gov.Actions.GovVoter
d_GovVoter_996 a0 = ()
data T_GovVoter_996
  = C_'10214'_'44'_'10215''7501''7515'_1006 T_GovRole_840 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_1002 :: T_GovVoter_996 -> T_GovRole_840
d_gvRole_1002 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1006 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_1004 :: T_GovVoter_996 -> AgdaAny
d_gvCredential_1004 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1006 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor
d_Anchor_1008 a0 = ()
data T_Anchor_1008
  = C_constructor_1018 MAlonzo.Code.Agda.Builtin.String.T_String_6
                       AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.Anchor.url
d_url_1014 ::
  T_Anchor_1008 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1014 v0
  = case coe v0 of
      C_constructor_1018 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor.hash
d_hash_1016 :: T_Anchor_1008 -> AgdaAny
d_hash_1016 v0
  = case coe v0 of
      C_constructor_1018 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote
d_GovVote_1020 a0 = ()
data T_GovVote_1020
  = C_constructor_1038 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       T_GovVoter_996 T_Vote_988 (Maybe T_Anchor_1008)
-- Ledger.Conway.Specification.Gov.Actions.GovVote.gid
d_gid_1030 ::
  T_GovVote_1020 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1030 v0
  = case coe v0 of
      C_constructor_1038 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.voter
d_voter_1032 :: T_GovVote_1020 -> T_GovVoter_996
d_voter_1032 v0
  = case coe v0 of
      C_constructor_1038 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.vote
d_vote_1034 :: T_GovVote_1020 -> T_Vote_988
d_vote_1034 v0
  = case coe v0 of
      C_constructor_1038 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.anchor
d_anchor_1036 :: T_GovVote_1020 -> Maybe T_Anchor_1008
d_anchor_1036 v0
  = case coe v0 of
      C_constructor_1038 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes
d_GovVotes_1040 a0 = ()
data T_GovVotes_1040
  = C_constructor_1054 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_1048 ::
  T_GovVotes_1040 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1048 v0
  = case coe v0 of
      C_constructor_1054 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_1050 ::
  T_GovVotes_1040 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1050 v0
  = case coe v0 of
      C_constructor_1054 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_1052 ::
  T_GovVotes_1040 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1052 v0
  = case coe v0 of
      C_constructor_1054 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.VDeleg
d_VDeleg_1056 a0 = ()
data T_VDeleg_1056
  = C_vDelegCredential_1058 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_1060 | C_vDelegNoConfidence_1062
-- Ledger.Conway.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1064 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_1070 a0 a1 a2 = ()
newtype T_HasVoteDelegs_1070
  = C_constructor_1080 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1078 ::
  T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1078 v0
  = case coe v0 of
      C_constructor_1080 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_1084 ::
  T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1084 v0 = coe d_VoteDelegsOf_1078 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.NeedsHash
d_NeedsHash_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_852 -> ()
d_NeedsHash_1086 = erased
-- Ledger.Conway.Specification.Gov.Actions.HashProtected
d_HashProtected_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_1088 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1094 ~v0 ~v1
  = du_HasCast'45'HashProtected_1094
du_HasCast'45'HashProtected_1094 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1094
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1096 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
du_HasCast'45'HashProtected'45'MaybeScriptHash_1096 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Policy
d_Policy_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_1098 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovProposal
d_GovProposal_1100 a0 = ()
data T_GovProposal_1100
  = C_constructor_1126 T_GovAction_886 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       T_Anchor_1008
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.action
d_action_1114 :: T_GovProposal_1100 -> T_GovAction_886
d_action_1114 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1116 :: T_GovProposal_1100 -> AgdaAny
d_prevAction_1116 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.policy
d_policy_1118 :: T_GovProposal_1100 -> Maybe AgdaAny
d_policy_1118 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1120 :: T_GovProposal_1100 -> Integer
d_deposit_1120 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1122 ::
  T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1122 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1124 :: T_GovProposal_1100 -> T_Anchor_1008
d_anchor_1124 v0
  = case coe v0 of
      C_constructor_1126 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState
d_GovActionState_1128 a0 = ()
data T_GovActionState_1128
  = C_constructor_1150 T_GovVotes_1040
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny T_GovAction_886 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.votes
d_votes_1140 :: T_GovActionState_1128 -> T_GovVotes_1040
d_votes_1140 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1142 ::
  T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1142 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1144 :: T_GovActionState_1128 -> AgdaAny
d_expiresIn_1144 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.action
d_action_1146 :: T_GovActionState_1128 -> T_GovAction_886
d_action_1146 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1148 :: T_GovActionState_1128 -> AgdaAny
d_prevAction_1148 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1156 a0 a1 a2 = ()
newtype T_HasGovVoter_1156
  = C_constructor_1166 (AgdaAny -> T_GovVoter_996)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1164 ::
  T_HasGovVoter_1156 -> AgdaAny -> T_GovVoter_996
d_GovVoterOf_1164 v0
  = case coe v0 of
      C_constructor_1166 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1170 ::
  T_HasGovVoter_1156 -> AgdaAny -> T_GovVoter_996
d_GovVoterOf_1170 v0 = coe d_GovVoterOf_1164 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasVote
d_HasVote_1176 a0 a1 a2 = ()
newtype T_HasVote_1176 = C_constructor_1186 (AgdaAny -> T_Vote_988)
-- Ledger.Conway.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1184 :: T_HasVote_1176 -> AgdaAny -> T_Vote_988
d_VoteOf_1184 v0
  = case coe v0 of
      C_constructor_1186 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteOf
d_VoteOf_1190 :: T_HasVote_1176 -> AgdaAny -> T_Vote_988
d_VoteOf_1190 v0 = coe d_VoteOf_1184 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1196 a0 a1 a2 = ()
newtype T_HasPolicy_1196
  = C_constructor_1206 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1204 :: T_HasPolicy_1196 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1204 v0
  = case coe v0 of
      C_constructor_1206 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1210 :: T_HasPolicy_1196 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1210 v0 = coe d_PolicyOf_1204 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1156
d_HasGovVoter'45'GovVote_1212 ~v0 = du_HasGovVoter'45'GovVote_1212
du_HasGovVoter'45'GovVote_1212 :: T_HasGovVoter_1156
du_HasGovVoter'45'GovVote_1212
  = coe C_constructor_1166 (coe (\ v0 -> d_voter_1032 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1176
d_HasVote'45'GovVote_1214 ~v0 = du_HasVote'45'GovVote_1214
du_HasVote'45'GovVote_1214 :: T_HasVote_1176
du_HasVote'45'GovVote_1214
  = coe C_constructor_1186 (coe (\ v0 -> d_vote_1034 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1196
d_HasPolicy'45'GovProposal_1216 ~v0
  = du_HasPolicy'45'GovProposal_1216
du_HasPolicy'45'GovProposal_1216 :: T_HasPolicy_1196
du_HasPolicy'45'GovProposal_1216
  = coe C_constructor_1206 (coe (\ v0 -> d_policy_1118 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_900
d_HasGovAction'45'GovProposal_1218 ~v0
  = du_HasGovAction'45'GovProposal_1218
du_HasGovAction'45'GovProposal_1218 :: T_HasGovAction_900
du_HasGovAction'45'GovProposal_1218
  = coe C_constructor_908 (coe (\ v0 -> d_action_1114 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_900
d_HasGovAction'45'GovActionState_1220 ~v0
  = du_HasGovAction'45'GovActionState_1220
du_HasGovAction'45'GovActionState_1220 :: T_HasGovAction_900
du_HasGovAction'45'GovActionState_1220
  = coe C_constructor_908 (coe (\ v0 -> d_action_1146 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_870
d_HasGovActionType'45'GovProposal_1222 ~v0
  = du_HasGovActionType'45'GovProposal_1222
du_HasGovActionType'45'GovProposal_1222 :: T_HasGovActionType_870
du_HasGovActionType'45'GovProposal_1222
  = coe
      C_constructor_878
      (coe (\ v0 -> d_gaType_892 (coe d_action_1114 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_870
d_HasGovActionType'45'GovActionState_1224 ~v0
  = du_HasGovActionType'45'GovActionState_1224
du_HasGovActionType'45'GovActionState_1224 ::
  T_HasGovActionType_870
du_HasGovActionType'45'GovActionState_1224
  = coe
      C_constructor_878
      (coe (\ v0 -> d_gaType_892 (coe d_action_1146 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1226 ~v0 = du_DecEq'45'GovRole_1226
du_DecEq'45'GovRole_1226 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1226
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_842
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_844
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_846
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_846
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1228 ~v0 = du_DecEq'45'Vote_1228
du_DecEq'45'Vote_1228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1228
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_990
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_990
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_992
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_992
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_990
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_992
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_994
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_990
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_992
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1230 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1058 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_1058 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
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
                          C_vDelegAbstain_1060
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1062
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_1060
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1058 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1060
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_1062
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_1062
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1058 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1060
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1062
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Anchor
d_DecEq'45'Anchor_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1232 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_1018 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_constructor_1018 v5 v6
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
d_DecEq'45'GovVoter_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1234 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_1006 v2 v3
                -> case coe v2 of
                     C_CC_842
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1006 v5 v6
                                   -> case coe v5 of
                                        C_CC_842
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
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
                                        C_DRep_844
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_846
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_844
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1006 v5 v6
                                   -> case coe v5 of
                                        C_CC_842
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_844
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
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
                                        C_SPO_846
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_846
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1006 v5 v6
                                   -> case coe v5 of
                                        C_CC_842
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_844
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_846
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
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
d_HasCast'45'GovVote_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1332 ~v0 = du_HasCast'45'GovVote_1332
du_HasCast'45'GovVote_1332 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1332
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
                                 (1020 :: Integer) (9062150309299526334 :: Integer)
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
                                 (986 :: Integer) (9062150309299526334 :: Integer)
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
                                    (1020 :: Integer) (9062150309299526334 :: Integer)
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
                                    (996 :: Integer) (9062150309299526334 :: Integer)
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
                                       (1020 :: Integer) (9062150309299526334 :: Integer)
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
                                       (988 :: Integer) (9062150309299526334 :: Integer)
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
                                          (1020 :: Integer) (9062150309299526334 :: Integer)
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
                                                      (1008 :: Integer)
                                                      (9062150309299526334 :: Integer)
                                                      "Ledger.Conway.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_1038))
-- Ledger.Conway.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1334 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1058 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("vDelegCredential" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_1060 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_1062
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_852 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1338 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (case coe v1 of
         C_NoConfidence_854
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_UpdateCommittee_856
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_NewConstitution_858
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TriggerHardFork_860
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_ChangePParams_862
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_612
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TreasuryWithdrawal_864
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         C_Info_866
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.Actions.==-GovProposal
d_'61''61''45'GovProposal_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovProposal_1100 -> T_GovProposal_1100 -> Bool
d_'61''61''45'GovProposal_1340 v0 v1 v2
  = case coe v1 of
      C_constructor_1126 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C_constructor_1126 v9 v10 v11 v12 v13 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_920) (d_gaType_892 (coe v3))
                            (d_gaType_892 (coe v9)) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                         -> if coe v16
                              then coe
                                     seq (coe v17)
                                     (case coe v3 of
                                        C_'10214'_'44'_'10215''7501''7491'_896 v18 v19
                                          -> coe
                                               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                               (coe
                                                  d_'61''61''45'GovAction_956 (coe v0)
                                                  (coe
                                                     C_'10214'_'44'_'10215''7501''7491'_896
                                                     (coe d_gaType_892 (coe v9)) (coe v19))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                     (coe ())
                                                     (coe
                                                        d_DecEq'45'NeedsHash_1338 (coe v0)
                                                        (coe d_gaType_892 (coe v9)))
                                                     (coe v4) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                        (coe ())
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1202
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_616
                                                                       (coe v0))))
                                                              (coe v7) (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe d_DecEq'45'Anchor_1232 (coe v0))
                                                              (coe v8) (coe v14))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              else coe seq (coe v17) (coe v16)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1436 ~v0 v1 = du_isGovVoterDRep_1436 v1
du_isGovVoterDRep_1436 ::
  T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1436 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1006 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_844
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1440 ~v0 v1 = du_govVoterCredential_1440 v1
du_govVoterCredential_1440 ::
  T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1440 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1006 v1 v2
        -> case coe v1 of
             C_CC_842 -> coe v2
             C_DRep_844 -> coe v2
             C_SPO_846
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.proposedCC
d_proposedCC_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1448 ~v0 v1 = du_proposedCC_1448 v1
du_proposedCC_1448 ::
  T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1448 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_896 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_856
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
d_DReps_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1452 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasDReps
d_HasDReps_1458 a0 a1 a2 = ()
newtype T_HasDReps_1458
  = C_constructor_1468 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1466 ::
  T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1466 v0
  = case coe v0 of
      C_constructor_1468 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1472 ::
  T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1472 v0 = coe d_DRepsOf_1466 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1474 = erased
-- Ledger.Conway.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1458 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1484 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1484 v0 v2 v3 v4
du_activeDRepsOf_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1458 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1484 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_666
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_666
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_666
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_666
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1466 v1 v2)
