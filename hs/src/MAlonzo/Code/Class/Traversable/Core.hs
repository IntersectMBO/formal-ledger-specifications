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
d_TraversableA_12 a0 a1 a2 = ()
newtype T_TraversableA_12
  = C_constructor_26 ((MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       MAlonzo.Code.Agda.Primitive.T_Level_18) ->
                      (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
                      AgdaAny -> AgdaAny)
-- Class.Traversable.Core.TraversableA.sequenceA
d_sequenceA_20 ::
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  AgdaAny -> AgdaAny
d_sequenceA_20 v0
  = case coe v0 of
      C_constructor_26 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Core.TraversableA.traverseA
d_traverseA_22 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverseA_22 ~v0 ~v1 v2 v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 v12
  = du_traverseA_22 v2 v3 v4 v6 v8 v10 v11 v12
du_traverseA_22 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverseA_22 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      d_sequenceA_20 v1 v2 erased v4 erased v5
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_24 v0 v3 erased (coe v2 v4)
         erased v6 v7)
-- Class.Traversable.Core._.sequenceA
d_sequenceA_30 ::
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  AgdaAny -> AgdaAny
d_sequenceA_30 v0 = coe d_sequenceA_20 (coe v0)
-- Class.Traversable.Core._.traverseA
d_traverseA_32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverseA_32 ~v0 ~v1 v2 v3 = du_traverseA_32 v2 v3
du_traverseA_32 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_TraversableA_12 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverseA_32 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe du_traverseA_22 (coe v0) (coe v1) v2 v4 v6 v8 v9 v10
-- Class.Traversable.Core.Traversable
d_Traversable_40 a0 a1 a2 = ()
newtype T_Traversable_40
  = C_constructor_54 ((MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       MAlonzo.Code.Agda.Primitive.T_Level_18) ->
                      (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> AgdaAny -> AgdaAny)
-- Class.Traversable.Core.Traversable.sequence
d_sequence_48 ::
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> AgdaAny -> AgdaAny
d_sequence_48 v0
  = case coe v0 of
      C_constructor_54 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Core.Traversable.traverse
d_traverse_50 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_50 ~v0 ~v1 v2 v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 v12
  = du_traverse_50 v2 v3 v4 v6 v8 v10 v11 v12
du_traverse_50 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_50 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      d_sequence_48 v1 v2 erased v4 erased v5
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_24 v0 v3 erased (coe v2 v4)
         erased v6 v7)
-- Class.Traversable.Core._.sequence
d_sequence_58 ::
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> AgdaAny -> AgdaAny
d_sequence_58 v0 = coe d_sequence_48 (coe v0)
-- Class.Traversable.Core._.traverse
d_traverse_60 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_60 ~v0 ~v1 v2 v3 = du_traverse_60 v2 v3
du_traverse_60 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  T_Traversable_40 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_traverse_60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe du_traverse_50 (coe v0) (coe v1) v2 v4 v6 v8 v9 v10
