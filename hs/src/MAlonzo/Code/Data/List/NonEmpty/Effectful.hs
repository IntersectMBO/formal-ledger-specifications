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

module MAlonzo.Code.Data.List.NonEmpty.Effectful where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Comonad
import qualified MAlonzo.Code.Effect.Functor
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base

-- Data.List.NonEmpty.Effectful.functor
d_functor_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Functor.T_RawFunctor_24
d_functor_10 ~v0 = du_functor_10
du_functor_10 :: MAlonzo.Code.Effect.Functor.T_RawFunctor_24
du_functor_10
  = coe
      MAlonzo.Code.Effect.Functor.C_constructor_44
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.List.NonEmpty.Base.du_map_98 v2 v3))
-- Data.List.NonEmpty.Effectful.applicative
d_applicative_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_applicative_14 ~v0 = du_applicative_14
du_applicative_14 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
du_applicative_14
  = coe
      MAlonzo.Code.Effect.Applicative.C_constructor_78
      (coe du_functor_10)
      (\ v0 v1 ->
         coe MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_42 v1)
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.List.NonEmpty.Base.du_ap_212 v2 v3))
-- Data.List.NonEmpty.Effectful.monad
d_monad_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Monad.T_RawMonad_24
d_monad_18 ~v0 = du_monad_18
du_monad_18 :: MAlonzo.Code.Effect.Monad.T_RawMonad_24
du_monad_18
  = coe
      MAlonzo.Code.Effect.Monad.C_constructor_98 (coe du_applicative_14)
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.List.NonEmpty.Base.du_concatMap_208 v3 v2))
-- Data.List.NonEmpty.Effectful.comonad
d_comonad_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Comonad.T_RawComonad_22
d_comonad_22 ~v0 = du_comonad_22
du_comonad_22 :: MAlonzo.Code.Effect.Comonad.T_RawComonad_22
du_comonad_22
  = coe
      MAlonzo.Code.Effect.Comonad.C_constructor_52
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Data.List.NonEmpty.Base.d_head_30 (coe v1)))
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Data.Product.Base.du_uncurry_244
                 (coe du_extend_32 (coe v2)))
              (coe MAlonzo.Code.Data.List.NonEmpty.Base.d_uncons_36)))
-- Data.List.NonEmpty.Effectful._.extend
d_extend_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
d_extend_32 ~v0 ~v1 ~v2 v3 v4 v5 = du_extend_32 v3 v4 v5
du_extend_32 ::
  (MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
   AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
du_extend_32 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34
             (coe
                v0
                (coe
                   MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 (coe v1)
                   (coe v2)))
             (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Data.List.NonEmpty.Base.du__'8759''8314'__46
             (coe
                v0
                (coe
                   MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 (coe v1)
                   (coe v2)))
             (coe du_extend_32 (coe v0) (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Effectful.TraversableA.sequenceA
d_sequenceA_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_sequenceA_98 ~v0 ~v1 ~v2 v3 ~v4 v5 = du_sequenceA_98 v3 v5
du_sequenceA_98 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_sequenceA_98 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v2 v3
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34) v2)
             (coe
                MAlonzo.Code.Data.List.Effectful.du_sequenceA_82 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Effectful.TraversableA.mapA
d_mapA_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_mapA_110 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7 v8 = du_mapA_110 v3 v7 v8
du_mapA_110 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_mapA_110 v0 v1 v2
  = coe
      du_sequenceA_98 (coe v0)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.Base.du_map_98 (coe v1) (coe v2))
-- Data.List.NonEmpty.Effectful.TraversableA.forA
d_forA_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_forA_120 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7 v8 = du_forA_120 v3 v7 v8
du_forA_120 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_forA_120 v0 v1 v2 = coe du_mapA_110 (coe v0) (coe v2) (coe v1)
-- Data.List.NonEmpty.Effectful.TraversableM._.forA
d_forA_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_forA_186 ~v0 ~v1 ~v2 v3 = du_forA_186 v3
du_forA_186 ::
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_forA_186 v0 v1 v2 v3 v4 v5
  = coe
      du_forA_120
      (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)) v4 v5
-- Data.List.NonEmpty.Effectful.TraversableM._.mapA
d_mapA_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_mapA_188 ~v0 ~v1 ~v2 v3 = du_mapA_188 v3
du_mapA_188 ::
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_mapA_188 v0 v1 v2 v3 v4 v5
  = coe
      du_mapA_110
      (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)) v4 v5
-- Data.List.NonEmpty.Effectful.TraversableM._.sequenceA
d_sequenceA_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_sequenceA_190 ~v0 ~v1 ~v2 v3 = du_sequenceA_190 v3
du_sequenceA_190 ::
  MAlonzo.Code.Effect.Monad.T_RawMonad_24 ->
  () ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_sequenceA_190 v0 v1 v2
  = coe
      du_sequenceA_98
      (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)) v2
