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

module MAlonzo.Code.Class.Foldable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.Foldable.Core.Foldable
d_Foldable_12 a0 a1 a2 = ()
newtype T_Foldable_12
  = C_constructor_32 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
                      MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny)
-- Class.Foldable.Core.Foldable.fold
d_fold_24 ::
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold_24 v0
  = case coe v0 of
      C_constructor_32 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Foldable.Core.Foldable.foldMap
d_foldMap_28 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_foldMap_28 ~v0 ~v1 v2 v3 v4 ~v5 v6 ~v7 v8 v9 v10 v11
  = du_foldMap_28 v2 v3 v4 v6 v8 v9 v10 v11
du_foldMap_28 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_foldMap_28 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      d_fold_24 v1 v2 erased v4 v5
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_24 v0 v3 erased v2 erased
         v6 v7)
-- Class.Foldable.Core._.fold
d_fold_36 ::
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold_36 v0 = coe d_fold_24 (coe v0)
-- Class.Foldable.Core._.foldMap
d_foldMap_38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_foldMap_38 ~v0 ~v1 v2 v3 = du_foldMap_38 v2 v3
du_foldMap_38 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_foldMap_38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_foldMap_28 (coe v0) (coe v1) v2 v4 v6 v7 v8 v9
-- Class.Foldable.Core.Foldable′
d_Foldable'8242'_46 a0 a1 a2 = ()
newtype T_Foldable'8242'_46
  = C_constructor_64 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
                      MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
                      (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.Foldable.Core.Foldable′.foldMap′
d_foldMap'8242'_58 ::
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_foldMap'8242'_58 v0
  = case coe v0 of
      C_constructor_64 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Foldable.Core.Foldable′.fold′
d_fold'8242'_62 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold'8242'_62 ~v0 ~v1 ~v2 v3 v4 ~v5 v6 v7
  = du_fold'8242'_62 v3 v4 v6 v7
du_fold'8242'_62 ::
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
du_fold'8242'_62 v0 v1 v2 v3
  = coe d_foldMap'8242'_58 v0 v1 erased v1 erased v2 v3 (\ v4 -> v4)
-- Class.Foldable.Core._.foldMap′
d_foldMap'8242'_68 ::
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_foldMap'8242'_68 v0 = coe d_foldMap'8242'_58 (coe v0)
-- Class.Foldable.Core._.fold′
d_fold'8242'_70 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold'8242'_70 ~v0 ~v1 ~v2 v3 = du_fold'8242'_70 v3
du_fold'8242'_70 ::
  T_Foldable'8242'_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
du_fold'8242'_70 v0 v1 v2 v3 v4
  = coe du_fold'8242'_62 (coe v0) v1 v3 v4
-- Class.Foldable.Core.Foldable′⇒Foldable
d_Foldable'8242''8658'Foldable_74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Foldable'8242'_46 -> T_Foldable_12
d_Foldable'8242''8658'Foldable_74 ~v0 ~v1 ~v2 v3
  = du_Foldable'8242''8658'Foldable_74 v3
du_Foldable'8242''8658'Foldable_74 ::
  T_Foldable'8242'_46 -> T_Foldable_12
du_Foldable'8242''8658'Foldable_74 v0
  = coe
      C_constructor_32
      (coe
         (\ v1 v2 v3 v4 ->
            coe du_fold'8242'_62 (coe v0) (coe v1) (coe v3) (coe v4)))
