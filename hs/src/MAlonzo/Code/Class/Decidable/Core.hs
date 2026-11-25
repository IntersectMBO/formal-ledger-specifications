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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

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
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_toWitness_144
      (coe d_dec_16 (coe v0))
-- Class.Decidable.Core._⁇.contradict
d_contradict_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_contradict_26 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_contradict_26
du_contradict_26 :: AgdaAny
du_contradict_26 = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
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
  T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191'_42 v0 = coe d_dec_16 (coe v0)
-- Class.Decidable.Core.¿_¿ᵇ
d_'191'_'191''7495'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8263'_10 -> Bool
d_'191'_'191''7495'_46 v0 ~v1 v2 = du_'191'_'191''7495'_46 v0 v2
du_'191'_'191''7495'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'8263'_10 -> Bool
du_'191'_'191''7495'_46 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 v0
      erased (d_dec_16 (coe v1))
-- Class.Decidable.Core._⁇¹
d__'8263''185'_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> (AgdaAny -> ()) -> ()
d__'8263''185'_50 = erased
-- Class.Decidable.Core._⁇²
d__'8263''178'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d__'8263''178'_52 = erased
-- Class.Decidable.Core._⁇³
d__'8263''179'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) -> ()
d__'8263''179'_54 = erased
-- Class.Decidable.Core._._.dec¹
d_dec'185'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'185'_72 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_dec'185'_72 v4 v5
du_dec'185'_72 ::
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'185'_72 v0 v1 = coe d_dec_16 (coe v0 v1)
-- Class.Decidable.Core._._.⁇¹_
d_'8263''185'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> T__'8263'_10
d_'8263''185'__74 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_'8263''185'__74 v4 v5
du_'8263''185'__74 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> T__'8263'_10
du_'8263''185'__74 v0 v1 = coe C_'8263'__30 (coe v0 v1)
-- Class.Decidable.Core._.¿_¿¹
d_'191'_'191''185'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191''185'_80 ~v0 ~v1 ~v2 ~v3 v4
  = du_'191'_'191''185'_80 v4
du_'191'_'191''185'_80 ::
  (AgdaAny -> T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''185'_80 v0 = coe du_dec'185'_72 (coe v0)
-- Class.Decidable.Core._._.dec²
d_dec'178'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'178'_100 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_dec'178'_100 v5 v6 v7
du_dec'178'_100 ::
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'178'_100 v0 v1 v2 = coe d_dec_16 (coe v0 v1 v2)
-- Class.Decidable.Core._._.⁇²_
d_'8263''178'__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> T__'8263'_10
d_'8263''178'__102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8263''178'__102 v5 v6 v7
du_'8263''178'__102 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> T__'8263'_10
du_'8263''178'__102 v0 v1 v2 = coe C_'8263'__30 (coe v0 v1 v2)
-- Class.Decidable.Core._.¿_¿²
d_'191'_'191''178'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191''178'_108 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'191'_'191''178'_108 v5
du_'191'_'191''178'_108 ::
  (AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''178'_108 v0 = coe du_dec'178'_100 (coe v0)
-- Class.Decidable.Core._._.dec³
d_dec'179'_130 ::
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
d_dec'179'_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_dec'179'_130 v6 v7 v8 v9
du_dec'179'_130 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec'179'_130 v0 v1 v2 v3 = coe d_dec_16 (coe v0 v1 v2 v3)
-- Class.Decidable.Core._._.⁇³_
d_'8263''179'__132 ::
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
d_'8263''179'__132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8263''179'__132 v6 v7 v8 v9
du_'8263''179'__132 ::
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10
du_'8263''179'__132 v0 v1 v2 v3
  = coe C_'8263'__30 (coe v0 v1 v2 v3)
-- Class.Decidable.Core._.¿_¿³
d_'191'_'191''179'_138 ::
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
d_'191'_'191''179'_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'191'_'191''179'_138 v6
du_'191'_'191''179'_138 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191''179'_138 v0 = coe du_dec'179'_130 (coe v0)
-- Class.Decidable.Core.auto∶_
d_auto'8758'__142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T__'8263'_10 -> ()
d_auto'8758'__142 = erased
-- Class.Decidable.Core.dec-✓
d_dec'45''10003'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T__'8263'_10 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dec'45''10003'_154 ~v0 ~v1 v2 = du_dec'45''10003'_154 v2
du_dec'45''10003'_154 ::
  T__'8263'_10 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dec'45''10003'_154 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_dec'45'yes_270
      (coe d_dec_16 (coe v0))
