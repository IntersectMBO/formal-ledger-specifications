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
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core

-- Class.Traversable.Core.TraversableA
d_TraversableA_10 a0 a1 = ()
newtype T_TraversableA_10
  = C_constructor_24 ((MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () -> ()) ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
                      AgdaAny -> AgdaAny)
-- Class.Traversable.Core.TraversableA.sequenceA
d_sequenceA_18 ::
  T_TraversableA_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  AgdaAny -> AgdaAny
d_sequenceA_18 v0
  = case coe v0 of
      C_constructor_24 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Core.TraversableA.traverseA
d_traverseA_20 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_TraversableA_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverseA_20 ~v0 v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du_traverseA_20 v1 v2 v4 v6 v8 v9 v10
du_traverseA_20 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_TraversableA_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverseA_20 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_sequenceA_18 v1 erased v3 erased v4
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 v2 erased v3 erased
         v5 v6)
-- Class.Traversable.Core._.sequenceA
d_sequenceA_28 ::
  T_TraversableA_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  AgdaAny -> AgdaAny
d_sequenceA_28 v0 = coe d_sequenceA_18 (coe v0)
-- Class.Traversable.Core._.traverseA
d_traverseA_30 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_TraversableA_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverseA_30 ~v0 v1 v2 = du_traverseA_30 v1 v2
du_traverseA_30 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_TraversableA_10 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverseA_30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_traverseA_20 (coe v0) (coe v1) v3 v5 v7 v8 v9
-- Class.Traversable.Core.Traversable
d_Traversable_36 a0 a1 = ()
newtype T_Traversable_36
  = C_constructor_50 ((MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () -> ()) ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny)
-- Class.Traversable.Core.Traversable.sequence
d_sequence_44 ::
  T_Traversable_36 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
d_sequence_44 v0
  = case coe v0 of
      C_constructor_50 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Core.Traversable.traverse
d_traverse_46 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_36 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_46 ~v0 v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du_traverse_46 v1 v2 v4 v6 v8 v9 v10
du_traverse_46 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_36 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_46 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_sequence_44 v1 erased v3 erased v4
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 v2 erased v3 erased
         v5 v6)
-- Class.Traversable.Core._.sequence
d_sequence_54 ::
  T_Traversable_36 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
d_sequence_54 v0 = coe d_sequence_44 (coe v0)
-- Class.Traversable.Core._.traverse
d_traverse_56 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_36 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_56 ~v0 v1 v2 = du_traverse_56 v1 v2
du_traverse_56 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Traversable_36 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_56 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_traverse_46 (coe v0) (coe v1) v3 v5 v7 v8 v9
