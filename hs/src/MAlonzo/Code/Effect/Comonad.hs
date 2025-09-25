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

module MAlonzo.Code.Effect.Comonad where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Base

-- Effect.Comonad.RawComonad
d_RawComonad_22 a0 a1 = ()
data T_RawComonad_22
  = C_constructor_52 (() -> AgdaAny -> AgdaAny)
                     (() -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Effect.Comonad.RawComonad.extract
d_extract_30 :: T_RawComonad_22 -> () -> AgdaAny -> AgdaAny
d_extract_30 v0
  = case coe v0 of
      C_constructor_52 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Effect.Comonad.RawComonad.extend
d_extend_32 ::
  T_RawComonad_22 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_extend_32 v0
  = case coe v0 of
      C_constructor_52 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Effect.Comonad.RawComonad.duplicate
d_duplicate_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) -> T_RawComonad_22 -> () -> AgdaAny -> AgdaAny
d_duplicate_34 ~v0 ~v1 v2 ~v3 = du_duplicate_34 v2
du_duplicate_34 :: T_RawComonad_22 -> AgdaAny -> AgdaAny
du_duplicate_34 v0 = coe d_extend_32 v0 erased erased (\ v1 -> v1)
-- Effect.Comonad.RawComonad.liftW
d_liftW_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  T_RawComonad_22 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_liftW_36 ~v0 ~v1 v2 ~v3 ~v4 v5 = du_liftW_36 v2 v5
du_liftW_36 ::
  T_RawComonad_22 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_liftW_36 v0 v1
  = coe
      d_extend_32 v0 erased erased
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v1)
         (coe d_extract_30 v0 erased))
-- Effect.Comonad.RawComonad._=>>_
d__'61''62''62'__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  T_RawComonad_22 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'61''62''62'__40 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du__'61''62''62'__40 v2 v5 v6
du__'61''62''62'__40 ::
  T_RawComonad_22 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'61''62''62'__40 v0 v1 v2
  = coe d_extend_32 v0 erased erased v2 v1
-- Effect.Comonad.RawComonad._=>=_
d__'61''62''61'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  T_RawComonad_22 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''62''61'__42 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'61''62''61'__42 v2 v7 v8
du__'61''62''61'__42 ::
  T_RawComonad_22 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''62''61'__42 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v2)
      (coe d_extend_32 v0 erased erased v1)
-- Effect.Comonad.RawComonad._<<=_
d__'60''60''61'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  T_RawComonad_22 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''60''61'__48 ~v0 ~v1 v2 ~v3 ~v4 = du__'60''60''61'__48 v2
du__'60''60''61'__48 ::
  T_RawComonad_22 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''60''61'__48 v0 = coe d_extend_32 v0 erased erased
-- Effect.Comonad.RawComonad._=<=_
d__'61''60''61'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() -> ()) ->
  T_RawComonad_22 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''61'__50 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'61''60''61'__50 v2 v7 v8
du__'61''60''61'__50 ::
  T_RawComonad_22 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''61'__50 v0 v1 v2
  = coe du__'61''62''61'__42 (coe v0) (coe v2) (coe v1)
