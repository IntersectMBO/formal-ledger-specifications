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

module MAlonzo.Code.Class.Traversable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core

-- Class.Traversable.Core.Traversable
d_Traversable_10 a0 a1 = ()
newtype T_Traversable_10
  = C_Traversable'46'constructor_225 ((MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                       () -> ()) ->
                                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                      () ->
                                      MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny)
-- Class.Traversable.Core.Traversable.sequence
d_sequence_18 ::
  T_Traversable_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
d_sequence_18 v0
  = case coe v0 of
      C_Traversable'46'constructor_225 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Core.Traversable.traverse
d_traverse_20 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_20 ~v0 v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du_traverse_20 v1 v2 v4 v6 v8 v9 v10
du_traverse_20 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_20 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_sequence_18 v1 erased v3 erased v4
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 v2 erased v3 erased
         v5 v6)
-- Class.Traversable.Core._.sequence
d_sequence_26 ::
  T_Traversable_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
d_sequence_26 v0 = coe d_sequence_18 (coe v0)
-- Class.Traversable.Core._.traverse
d_traverse_28 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_28 ~v0 v1 v2 = du_traverse_28 v1 v2
du_traverse_28 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_28 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_traverse_20 (coe v0) (coe v1) v3 v5 v7 v8 v9
