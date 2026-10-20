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

module MAlonzo.Code.Class.Decidable.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.All
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.Decidable.Instances.DecEq⇒Dec
d_DecEq'8658'Dec_6 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_DecEq'8658'Dec_6 ~v0 ~v1 v2 v3 v4 = du_DecEq'8658'Dec_6 v2 v3 v4
du_DecEq'8658'Dec_6 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_DecEq'8658'Dec_6 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) (coe v1)
      (coe v2)
-- Class.Decidable.Instances.Dec-⊥
d_Dec'45''8869'_8 :: MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8869'_8
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Class.Decidable.Instances.Dec-⊤
d_Dec'45''8868'_10 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8868'_10
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Class.Decidable.Instances.Dec-→
d_Dec'45''8594'_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8594'_12 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8594'_12 v4 v5
du_Dec'45''8594'_12 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8594'_12 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-×
d_Dec'45''215'_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''215'_14 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45''215'_14 v4 v5
du_Dec'45''215'_14 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''215'_14 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-⊎
d_Dec'45''8846'_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8846'_16 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8846'_16 v4 v5
du_Dec'45''8846'_16 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8846'_16 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0))
         (coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v1)))
-- Class.Decidable.Instances.Dec-T
d_Dec'45'T_18 ::
  Bool -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'T_18 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72)
      (coe v0)
-- Class.Decidable.Instances.Dec-All
d_Dec'45'All_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All_20 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'All_20 v4 v5
du_Dec'45'All_20 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All_20 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_510
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-Any
d_Dec'45'Any_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any_22 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'Any_22 v4 v5
du_Dec'45'Any_22 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any_22 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-AllPairs
d_Dec'45'AllPairs_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'AllPairs_24 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45'AllPairs_24 v4 v5
du_Dec'45'AllPairs_24 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'AllPairs_24 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du_allPairs'63'_110
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_100 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-VAll
d_Dec'45'VAll_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'VAll_26 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_Dec'45'VAll_26 v5 v6
du_Dec'45'VAll_26 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'VAll_26 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.Vec.Relation.Unary.All.du_all'63'_280
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-VAny
d_Dec'45'VAny_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'VAny_28 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_Dec'45'VAny_28 v5 v6
du_Dec'45'VAny_28 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'VAny_28 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.Vec.Relation.Unary.Any.du_any'63'_124
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-MAll
d_Dec'45'MAll_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'MAll_30 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'MAll_30 v4 v5
du_Dec'45'MAll_30 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'MAll_30 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.Dec-MAny
d_Dec'45'MAny_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'MAny_32 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Dec'45'MAny_32 v4 v5
du_Dec'45'MAny_32 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  Maybe AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'MAny_32 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)))
      (coe v1)
-- Class.Decidable.Instances.ℕ-Dec-≤
d_ℕ'45'Dec'45''8804'_34 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℕ'45'Dec'45''8804'_34
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920)
-- Class.Decidable.Instances.ℕ-Dec-<
d_ℕ'45'Dec'45''60'_36 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℕ'45'Dec'45''60'_36
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3172)
-- Class.Decidable.Instances.ℤ-Dec-≤
d_ℤ'45'Dec'45''8804'_38 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℤ'45'Dec'45''8804'_38
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2880)
-- Class.Decidable.Instances.ℤ-Dec-<
d_ℤ'45'Dec'45''60'_40 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℤ'45'Dec'45''60'_40
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3190)
-- Class.Decidable.Instances.ℚ-Dec-≤
d_ℚ'45'Dec'45''8804'_42 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℚ'45'Dec'45''8804'_42
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622)
-- Class.Decidable.Instances.ℚ-Dec-<
d_ℚ'45'Dec'45''60'_44 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ℚ'45'Dec'45''60'_44
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe MAlonzo.Code.Data.Rational.Properties.d__'60''63'__3804)
