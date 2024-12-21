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

module MAlonzo.Code.Class.Decidable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.Decidable.Core._⁇
d__'8263'_10 a0 a1 = ()
newtype T__'8263'_10
  = C_'8263'__30 MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
-- Class.Decidable.Core._⁇.dec
d_dec_16 ::
  T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_16 v0
  = case coe v0 of
      C_'8263'__30 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Decidable.Core._⁇.auto
d_auto_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> AgdaAny -> AgdaAny
d_auto_18 ~v0 ~v1 v2 ~v3 = du_auto_18 v2
du_auto_18 :: T__'8263'_10 -> AgdaAny
du_auto_18 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_toWitness_134
      (coe d_dec_16 (coe v0))
-- Class.Decidable.Core._⁇.contradict
d_contradict_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_contradict_26 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_contradict_26
du_contradict_26 :: AgdaAny
du_contradict_26 = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
-- Class.Decidable.Core._.auto
d_auto_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> AgdaAny -> AgdaAny
d_auto_34 ~v0 ~v1 v2 = du_auto_34 v2
du_auto_34 :: T__'8263'_10 -> AgdaAny -> AgdaAny
du_auto_34 v0 v1 = coe du_auto_18 (coe v0)
-- Class.Decidable.Core._.contradict
d_contradict_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_contradict_36 ~v0 ~v1 ~v2 = du_contradict_36
du_contradict_36 :: () -> AgdaAny -> AgdaAny -> AgdaAny
du_contradict_36 v0 v1 v2 = coe du_contradict_26
-- Class.Decidable.Core._.dec
d_dec_38 ::
  T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_38 v0 = coe d_dec_16 (coe v0)
-- Class.Decidable.Core.¿_¿
d_'191'_'191'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191'_42 ~v0 ~v1 v2 = du_'191'_'191'_42 v2
du_'191'_'191'_42 ::
  T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191'_42 v0 = coe d_dec_16 (coe v0)
-- Class.Decidable.Core.¿_¿ᵇ
d_'191'_'191''7495'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> Bool
d_'191'_'191''7495'_46 v0 ~v1 v2 = du_'191'_'191''7495'_46 v0 v2
du_'191'_'191''7495'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'8263'_10 -> Bool
du_'191'_'191''7495'_46 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 v0
      erased (coe du_'191'_'191'_42 (coe v1))
-- Class.Decidable.Core.ifᵈ_then_else_
d_if'7496'_then_else__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  T__'8263'_10 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_if'7496'_then_else__58 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_if'7496'_then_else__58 v4 v5 v6
du_if'7496'_then_else__58 ::
  T__'8263'_10 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_if'7496'_then_else__58 v0 v1 v2
  = let v3 = d_dec_16 (coe v0) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6 -> coe v1 v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe seq (coe v5) (coe v2 erased)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.Decidable.Core._⁇¹
d__'8263''185'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> (AgdaAny -> ()) -> ()
d__'8263''185'_86 = erased
-- Class.Decidable.Core._⁇²
d__'8263''178'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d__'8263''178'_88 = erased
-- Class.Decidable.Core._⁇³
d__'8263''179'_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) -> ()
d__'8263''179'_90 = erased
-- Class.Decidable.Core._._.dec¹
d_dec'185'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'185'_108 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_dec'185'_108 v4 v5
du_dec'185'_108 ::
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'185'_108 v0 v1 = coe d_dec_16 (coe v0 v1)
-- Class.Decidable.Core._._.⁇¹_
d_'8263''185'__110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> T__'8263'_10
d_'8263''185'__110 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'8263''185'__110 v4 v5
du_'8263''185'__110 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> T__'8263'_10
du_'8263''185'__110 v0 v1 = coe C_'8263'__30 (coe v0 v1)
-- Class.Decidable.Core._.¿_¿¹
d_'191'_'191''185'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191''185'_116 ~v0 ~v1 ~v2 ~v3 v4
  = du_'191'_'191''185'_116 v4
du_'191'_'191''185'_116 ::
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''185'_116 v0 = coe du_dec'185'_108 (coe v0)
-- Class.Decidable.Core._._.dec²
d_dec'178'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'178'_136 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_dec'178'_136 v5 v6 v7
du_dec'178'_136 ::
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'178'_136 v0 v1 v2 = coe d_dec_16 (coe v0 v1 v2)
-- Class.Decidable.Core._._.⁇²_
d_'8263''178'__138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> T__'8263'_10
d_'8263''178'__138 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8263''178'__138 v5 v6 v7
du_'8263''178'__138 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> T__'8263'_10
du_'8263''178'__138 v0 v1 v2 = coe C_'8263'__30 (coe v0 v1 v2)
-- Class.Decidable.Core._.¿_¿²
d_'191'_'191''178'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191''178'_144 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'191'_'191''178'_144 v5
du_'191'_'191''178'_144 ::
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''178'_144 v0 = coe du_dec'178'_136 (coe v0)
-- Class.Decidable.Core._._.dec³
d_dec'179'_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'179'_166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_dec'179'_166 v6 v7 v8 v9
du_dec'179'_166 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'179'_166 v0 v1 v2 v3 = coe d_dec_16 (coe v0 v1 v2 v3)
-- Class.Decidable.Core._._.⁇³_
d_'8263''179'__168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10
d_'8263''179'__168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8263''179'__168 v6 v7 v8 v9
du_'8263''179'__168 ::
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10
du_'8263''179'__168 v0 v1 v2 v3
  = coe C_'8263'__30 (coe v0 v1 v2 v3)
-- Class.Decidable.Core._.¿_¿³
d_'191'_'191''179'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191''179'_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'191'_'191''179'_174 v6
du_'191'_'191''179'_174 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''179'_174 v0 = coe du_dec'179'_166 (coe v0)
-- Class.Decidable.Core.auto∶_
d_auto'8758'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T__'8263'_10 -> ()
d_auto'8758'__178 = erased
