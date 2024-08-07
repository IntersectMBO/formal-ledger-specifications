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

module MAlonzo.Code.Relation.Nullary.Decidable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty.Irrelevant
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Nullary.Decidable.Core.Dec
d_Dec_20 a0 a1 = ()
data T_Dec_20
  = C__because__32 Bool
                   MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
-- Relation.Nullary.Decidable.Core.Dec.does
d_does_28 :: T_Dec_20 -> Bool
d_does_28 v0
  = case coe v0 of
      C__because__32 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.Dec.proof
d_proof_30 ::
  T_Dec_20 -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_proof_30 v0
  = case coe v0 of
      C__because__32 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core._.From-yes
d_From'45'yes_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> ()
d_From'45'yes_50 = erased
-- Relation.Nullary.Decidable.Core._.From-no
d_From'45'no_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> ()
d_From'45'no_52 = erased
-- Relation.Nullary.Decidable.Core.recompute
d_recompute_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> AgdaAny -> AgdaAny
d_recompute_54 ~v0 ~v1 v2 ~v3 = du_recompute_54 v2
du_recompute_54 :: T_Dec_20 -> AgdaAny
du_recompute_54 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then case coe v2 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v3 -> coe v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v2)
                    (coe MAlonzo.Code.Data.Empty.Irrelevant.du_'8869''45'elim_10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.T?
d_T'63'_64 :: Bool -> T_Dec_20
d_T'63'_64 v0
  = coe
      C__because__32 (coe v0)
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46 (coe v0))
-- Relation.Nullary.Decidable.Core.¬?
d_'172''63'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> T_Dec_20
d_'172''63'_68 ~v0 ~v1 v2 = du_'172''63'_68 v2
du_'172''63'_68 :: T_Dec_20 -> T_Dec_20
du_'172''63'_68 v0
  = coe
      C__because__32
      (coe MAlonzo.Code.Data.Bool.Base.d_not_22 (coe d_does_28 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.du_'172''45'reflects_50
         (coe d_proof_30 (coe v0)))
-- Relation.Nullary.Decidable.Core._×-dec_
d__'215''45'dec__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> T_Dec_20 -> T_Dec_20
d__'215''45'dec__74 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'215''45'dec__74 v4 v5
du__'215''45'dec__74 :: T_Dec_20 -> T_Dec_20 -> T_Dec_20
du__'215''45'dec__74 v0 v1
  = coe
      C__because__32
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8743'__24 (coe d_does_28 (coe v0))
         (coe d_does_28 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.du__'215''45'reflects__62
         (coe d_proof_30 (coe v0)) (coe d_proof_30 (coe v1)))
-- Relation.Nullary.Decidable.Core._⊎-dec_
d__'8846''45'dec__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> T_Dec_20 -> T_Dec_20
d__'8846''45'dec__84 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8846''45'dec__84 v4 v5
du__'8846''45'dec__84 :: T_Dec_20 -> T_Dec_20 -> T_Dec_20
du__'8846''45'dec__84 v0 v1
  = coe
      C__because__32
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8744'__30 (coe d_does_28 (coe v0))
         (coe d_does_28 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.du__'8846''45'reflects__78
         (coe d_proof_30 (coe v0)) (coe d_proof_30 (coe v1)))
-- Relation.Nullary.Decidable.Core._→-dec_
d__'8594''45'dec__94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> T_Dec_20 -> T_Dec_20
d__'8594''45'dec__94 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8594''45'dec__94 v4 v5
du__'8594''45'dec__94 :: T_Dec_20 -> T_Dec_20 -> T_Dec_20
du__'8594''45'dec__94 v0 v1
  = coe
      C__because__32
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8744'__30
         (coe MAlonzo.Code.Data.Bool.Base.d_not_22 (coe d_does_28 (coe v0)))
         (coe d_does_28 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.du__'8594''45'reflects__94
         (coe d_proof_30 (coe v0)) (coe d_proof_30 (coe v1)))
-- Relation.Nullary.Decidable.Core.isYes
d_isYes_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> Bool
d_isYes_104 ~v0 ~v1 v2 = du_isYes_104 v2
du_isYes_104 :: T_Dec_20 -> Bool
du_isYes_104 v0
  = case coe v0 of
      C__because__32 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.isNo
d_isNo_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> Bool
d_isNo_106 ~v0 ~v1 v2 = du_isNo_106 v2
du_isNo_106 :: T_Dec_20 -> Bool
du_isNo_106 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.d_not_22 (coe du_isYes_104 (coe v0))
-- Relation.Nullary.Decidable.Core.True
d_True_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> ()
d_True_108 = erased
-- Relation.Nullary.Decidable.Core.False
d_False_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> ()
d_False_110 = erased
-- Relation.Nullary.Decidable.Core.⌊_⌋
d_'8970'_'8971'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> Bool
d_'8970'_'8971'_112 v0 v1 v2 = coe du_isYes_104 v2
-- Relation.Nullary.Decidable.Core.toWitness
d_toWitness_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> AgdaAny -> AgdaAny
d_toWitness_116 ~v0 ~v1 v2 ~v3 = du_toWitness_116 v2
du_toWitness_116 :: T_Dec_20 -> AgdaAny
du_toWitness_116 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.fromWitness
d_fromWitness_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> AgdaAny -> AgdaAny
d_fromWitness_122 ~v0 ~v1 v2 = du_fromWitness_122 v2
du_fromWitness_122 :: T_Dec_20 -> AgdaAny -> AgdaAny
du_fromWitness_122 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then let v3 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                  coe (coe (\ v4 -> v3))
             else coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.toWitnessFalse
d_toWitnessFalse_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Dec_20 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_toWitnessFalse_128 = erased
-- Relation.Nullary.Decidable.Core.fromWitnessFalse
d_fromWitnessFalse_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_fromWitnessFalse_134 ~v0 ~v1 v2 = du_fromWitnessFalse_134 v2
du_fromWitnessFalse_134 ::
  T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_fromWitnessFalse_134 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then coe
                    (\ v3 ->
                       coe
                         v3
                         (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)))
             else (let v3 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                   coe (coe (\ v4 -> v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.from-yes
d_from'45'yes_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> AgdaAny
d_from'45'yes_140 ~v0 ~v1 v2 = du_from'45'yes_140 v2
du_from'45'yes_140 :: T_Dec_20 -> AgdaAny
du_from'45'yes_140 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)
             else coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.from-no
d_from'45'no_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Dec_20 -> AgdaAny
d_from'45'no_146 ~v0 ~v1 v2 = du_from'45'no_146 v2
du_from'45'no_146 :: T_Dec_20 -> AgdaAny
du_from'45'no_146 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             else coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.map′
d_map'8242'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_Dec_20 -> T_Dec_20
d_map'8242'_150 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_map'8242'_150 v4 v6
du_map'8242'_150 :: (AgdaAny -> AgdaAny) -> T_Dec_20 -> T_Dec_20
du_map'8242'_150 v0 v1
  = coe
      C__because__32 (coe d_does_28 (coe v1))
      (case coe v1 of
         C__because__32 v2 v3
           -> if coe v2
                then coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe
                          v0
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v3)))
                else coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Nullary.Decidable.Core.decidable-stable
d_decidable'45'stable_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Dec_20 ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_decidable'45'stable_170 ~v0 ~v1 v2 ~v3
  = du_decidable'45'stable_170 v2
du_decidable'45'stable_170 :: T_Dec_20 -> AgdaAny
du_decidable'45'stable_170 v0
  = case coe v0 of
      C__because__32 v1 v2
        -> if coe v1
             then case coe v2 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v3 -> coe v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v2)
                    (coe MAlonzo.Code.Data.Empty.Irrelevant.du_'8869''45'elim_10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.¬-drop-Dec
d_'172''45'drop'45'Dec_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Dec_20 -> T_Dec_20
d_'172''45'drop'45'Dec_180 ~v0 ~v1 v2
  = du_'172''45'drop'45'Dec_180 v2
du_'172''45'drop'45'Dec_180 :: T_Dec_20 -> T_Dec_20
du_'172''45'drop'45'Dec_180 v0
  = coe du_map'8242'_150 erased (coe du_'172''63'_68 (coe v0))
-- Relation.Nullary.Decidable.Core.¬¬-excluded-middle
d_'172''172''45'excluded'45'middle_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (T_Dec_20 -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''172''45'excluded'45'middle_184 = erased
-- Relation.Nullary.Decidable.Core.excluded-middle
d_excluded'45'middle_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (T_Dec_20 -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_excluded'45'middle_190 = erased
