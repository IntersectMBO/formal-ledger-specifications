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

module MAlonzo.Code.Data.List.Relation.Unary.Unique.Setoid.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Disjoint.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._≈_
d__'8776'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__48 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.map⁺
d_map'8314'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_map'8314'_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_map'8314'_102 v8 v9
du_map'8314'_102 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_map'8314'_102 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_map'8314'_48
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du_map_52 erased
         (coe v0) (coe v1))
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.++⁺
d_'43''43''8314'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_'43''43''8314'_122 ~v0 ~v1 v2 v3 v4 v5 v6 ~v7
  = du_'43''43''8314'_122 v2 v3 v4 v5 v6
du_'43''43''8314'_122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_'43''43''8314'_122 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_'43''43''8314'_70
      (coe v1) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Disjoint.Setoid.Properties.du_Disjoint'8658'AllAll_48
         (coe v0) (coe v1) (coe v2) erased)
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.concat⁺
d_concat'8314'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_concat'8314'_142 ~v0 ~v1 v2 v3 v4 v5
  = du_concat'8314'_142 v2 v3 v4 v5
du_concat'8314'_142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_concat'8314'_142 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_concat'8314'_102
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du_map_52
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Disjoint.Setoid.Properties.du_Disjoint'8658'AllAll_48
            (coe v0))
         (coe v1) (coe v3))
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._≈_
d__'8776'__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__172 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._≈_
d__'8776'__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__176 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.cartesianProductWith⁺
d_cartesianProductWith'8314'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_cartesianProductWith'8314'_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                                 v9 v10 v11 ~v12 v13 v14
  = du_cartesianProductWith'8314'_200 v8 v9 v10 v11 v13 v14
du_cartesianProductWith'8314'_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_cartesianProductWith'8314'_200 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
        -> coe v4
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> coe
                    du_'43''43''8314'_122 (coe v0)
                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v3 v10) (coe v2))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_cartesianProductWith_70 (coe v3)
                       (coe v11) (coe v2))
                    (coe du_map'8314'_102 (coe v2) (coe v5))
                    (coe
                       du_cartesianProductWith'8314'_200 (coe v0) (coe v11) (coe v2)
                       (coe v3) (coe v9) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._.map#cartesianProductWith
d_map'35'cartesianProductWith_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_map'35'cartesianProductWith_228 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.cartesianProduct⁺
d_cartesianProduct'8314'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_cartesianProduct'8314'_274 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cartesianProduct'8314'_274 v4 v5 v6 v7
du_cartesianProduct'8314'_274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_cartesianProduct'8314'_274 v0 v1 v2 v3
  = coe
      du_cartesianProductWith'8314'_200
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du__'215''8347'__354
         v0 v1)
      (coe v2) (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.drop⁺
d_drop'8314'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_drop'8314'_290 ~v0 ~v1 ~v2 v3 = du_drop'8314'_290 v3
du_drop'8314'_290 ::
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_drop'8314'_290 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_drop'8314'_142
      (coe v0)
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.take⁺
d_take'8314'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_take'8314'_296 ~v0 ~v1 ~v2 v3 = du_take'8314'_296 v3
du_take'8314'_296 ::
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_take'8314'_296 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_take'8314'_126
      (coe v0)
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._≉_
d__'8777'__312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__312 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.applyUpTo⁺₁
d_applyUpTo'8314''8321'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyUpTo'8314''8321'_340 ~v0 ~v1 ~v2
  = du_applyUpTo'8314''8321'_340
du_applyUpTo'8314''8321'_340 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyUpTo'8314''8321'_340 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_applyUpTo'8314''8321'_170
      v1 v2
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.applyUpTo⁺₂
d_applyUpTo'8314''8322'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyUpTo'8314''8322'_350 ~v0 ~v1 ~v2
  = du_applyUpTo'8314''8322'_350
du_applyUpTo'8314''8322'_350 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyUpTo'8314''8322'_350 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_applyUpTo'8314''8322'_194
      v1 v2
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._≉_
d__'8777'__366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__366 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.applyDownFrom⁺₁
d_applyDownFrom'8314''8321'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyDownFrom'8314''8321'_394 ~v0 ~v1 ~v2
  = du_applyDownFrom'8314''8321'_394
du_applyDownFrom'8314''8321'_394 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyDownFrom'8314''8321'_394 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_applyDownFrom'8314''8321'_224
      v1 v2
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.applyDownFrom⁺₂
d_applyDownFrom'8314''8322'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyDownFrom'8314''8322'_404 ~v0 ~v1 ~v2
  = du_applyDownFrom'8314''8322'_404
du_applyDownFrom'8314''8322'_404 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyDownFrom'8314''8322'_404 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_applyDownFrom'8314''8322'_248
      v1 v2
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.tabulate⁺
d_tabulate'8314'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_tabulate'8314'_448 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_tabulate'8314'_448 v3 v5
du_tabulate'8314'_448 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_tabulate'8314'_448 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_tabulate'8314'_296
      (coe v0) (coe (\ v2 v3 v4 v5 -> coe v4 (coe v1 v2 v3 v5)))
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.filter⁺
d_filter'8314'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_filter'8314'_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_filter'8314'_472 v5 v6
du_filter'8314'_472 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_filter'8314'_472 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties.du_filter'8314'_318
      (coe v0) (coe v1)
-- Data.List.Relation.Unary.Unique.Setoid.Properties._._._∉_
d__'8713'__510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8713'__510 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._.Unique[x∷xs]⇒x∉xs
d_Unique'91'x'8759'xs'93''8658'x'8713'xs_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Unique'91'x'8759'xs'93''8658'x'8713'xs_518 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties._..extendedlambda0
d_'46'extendedlambda0_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'46'extendedlambda0_526 = erased
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-a
d_'46'generalizedField'45'a_32611 ::
  T_GeneralizeTel_32619 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_32611 v0
  = case coe v0 of
      C_mkGeneralizeTel_32621 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-ℓ₁
d_'46'generalizedField'45'ℓ'8321'_32613 ::
  T_GeneralizeTel_32619 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8321'_32613 v0
  = case coe v0 of
      C_mkGeneralizeTel_32621 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-b
d_'46'generalizedField'45'b_32615 ::
  T_GeneralizeTel_32619 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'b_32615 v0
  = case coe v0 of
      C_mkGeneralizeTel_32621 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-ℓ₂
d_'46'generalizedField'45'ℓ'8322'_32617 ::
  T_GeneralizeTel_32619 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8322'_32617 v0
  = case coe v0 of
      C_mkGeneralizeTel_32621 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties.GeneralizeTel
d_GeneralizeTel_32619 = ()
data T_GeneralizeTel_32619
  = C_mkGeneralizeTel_32621 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-a
d_'46'generalizedField'45'a_39963 ::
  T_GeneralizeTel_39969 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_39963 v0
  = case coe v0 of
      C_mkGeneralizeTel_39971 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_39965 ::
  T_GeneralizeTel_39969 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_39965 v0
  = case coe v0 of
      C_mkGeneralizeTel_39971 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties..generalizedField-p
d_'46'generalizedField'45'p_39967 ::
  T_GeneralizeTel_39969 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'p_39967 v0
  = case coe v0 of
      C_mkGeneralizeTel_39971 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Unique.Setoid.Properties.GeneralizeTel
d_GeneralizeTel_39969 = ()
data T_GeneralizeTel_39969
  = C_mkGeneralizeTel_39971 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
