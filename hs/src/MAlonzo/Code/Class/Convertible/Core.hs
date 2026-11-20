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

module MAlonzo.Code.Class.Convertible.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Functor.Core

-- Class.Convertible.Core.Convertible
d_Convertible_10 a0 a1 = ()
data T_Convertible_10
  = C_constructor_24 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Class.Convertible.Core.Convertible.to
d_to_20 :: T_Convertible_10 -> AgdaAny -> AgdaAny
d_to_20 v0
  = case coe v0 of
      C_constructor_24 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Convertible.Core.Convertible.from
d_from_22 :: T_Convertible_10 -> AgdaAny -> AgdaAny
d_from_22 v0
  = case coe v0 of
      C_constructor_24 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Convertible.Core._.from
d_from_28 :: T_Convertible_10 -> AgdaAny -> AgdaAny
d_from_28 v0 = coe d_from_22 (coe v0)
-- Class.Convertible.Core._.to
d_to_30 :: T_Convertible_10 -> AgdaAny -> AgdaAny
d_to_30 v0 = coe d_to_20 (coe v0)
-- Class.Convertible.Core.Convertible-Refl
d_Convertible'45'Refl_34 :: () -> T_Convertible_10
d_Convertible'45'Refl_34 ~v0 = du_Convertible'45'Refl_34
du_Convertible'45'Refl_34 :: T_Convertible_10
du_Convertible'45'Refl_34
  = coe C_constructor_24 (coe (\ v0 -> v0)) (coe (\ v0 -> v0))
-- Class.Convertible.Core.Convertible₁
d_Convertible'8321'_38 :: (() -> ()) -> (() -> ()) -> ()
d_Convertible'8321'_38 = erased
-- Class.Convertible.Core.Convertible₂
d_Convertible'8322'_48 ::
  (() -> () -> ()) -> (() -> () -> ()) -> ()
d_Convertible'8322'_48 = erased
-- Class.Convertible.Core.Functor⇒Convertible
d_Functor'8658'Convertible_60 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  () -> () -> T_Convertible_10 -> T_Convertible_10
d_Functor'8658'Convertible_60 ~v0 v1 ~v2 ~v3 v4
  = du_Functor'8658'Convertible_60 v1 v4
du_Functor'8658'Convertible_60 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Convertible_10 -> T_Convertible_10
du_Functor'8658'Convertible_60 v0 v1
  = coe
      C_constructor_24
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 () erased () erased
         (d_to_20 (coe v1)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 () erased () erased
         (d_from_22 (coe v1)))
-- Class.Convertible.Core.Bifunctor⇒Convertible
d_Bifunctor'8658'Convertible_66 ::
  (() -> () -> ()) ->
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82 ->
  () ->
  () ->
  T_Convertible_10 ->
  () -> () -> T_Convertible_10 -> T_Convertible_10
d_Bifunctor'8658'Convertible_66 ~v0 v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_Bifunctor'8658'Convertible_66 v1 v4 v7
du_Bifunctor'8658'Convertible_66 ::
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82 ->
  T_Convertible_10 -> T_Convertible_10 -> T_Convertible_10
du_Bifunctor'8658'Convertible_66 v0 v1 v2
  = coe
      C_constructor_24
      (coe
         MAlonzo.Code.Class.Bifunctor.d_bimap_104 v0 erased erased erased
         erased (d_to_20 (coe v1)) (d_to_20 (coe v2)))
      (coe
         MAlonzo.Code.Class.Bifunctor.d_bimap_104 v0 erased erased erased
         erased (d_from_22 (coe v1)) (d_from_22 (coe v2)))
-- Class.Convertible.Core._⨾_
d__'10814'__76 ::
  () ->
  () ->
  () -> T_Convertible_10 -> T_Convertible_10 -> T_Convertible_10
d__'10814'__76 ~v0 ~v1 ~v2 v3 v4 = du__'10814'__76 v3 v4
du__'10814'__76 ::
  T_Convertible_10 -> T_Convertible_10 -> T_Convertible_10
du__'10814'__76 v0 v1
  = coe
      C_constructor_24 (coe (\ v2 -> coe d_to_20 v1 (coe d_to_20 v0 v2)))
      (coe (\ v2 -> coe d_from_22 v0 (coe d_from_22 v1 v2)))
