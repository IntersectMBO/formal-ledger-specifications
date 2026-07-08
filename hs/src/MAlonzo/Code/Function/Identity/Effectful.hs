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

module MAlonzo.Code.Function.Identity.Effectful where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Comonad
import qualified MAlonzo.Code.Effect.Functor
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base

-- Function.Identity.Effectful.Identity
d_Identity_10 :: MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_Identity_10 = erased
-- Function.Identity.Effectful.functor
d_functor_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Functor.T_RawFunctor_24
d_functor_14 ~v0 = du_functor_14
du_functor_14 :: MAlonzo.Code.Effect.Functor.T_RawFunctor_24
du_functor_14
  = coe
      MAlonzo.Code.Effect.Functor.C_constructor_44
      (coe (\ v0 v1 v2 -> v2))
-- Function.Identity.Effectful.applicative
d_applicative_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_applicative_16 ~v0 = du_applicative_16
du_applicative_16 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
du_applicative_16
  = coe
      MAlonzo.Code.Effect.Applicative.C_constructor_78
      (coe du_functor_14) (coe (\ v0 v1 -> v1)) (coe (\ v0 v1 v2 -> v2))
-- Function.Identity.Effectful.monad
d_monad_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Monad.T_RawMonad_24
d_monad_18 ~v0 = du_monad_18
du_monad_18 :: MAlonzo.Code.Effect.Monad.T_RawMonad_24
du_monad_18
  = coe
      MAlonzo.Code.Effect.Monad.C_constructor_98 (coe du_applicative_16)
      (coe
         (\ v0 v1 ->
            coe MAlonzo.Code.Function.Base.du__'124''62''8242'__232))
-- Function.Identity.Effectful.comonad
d_comonad_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Comonad.T_RawComonad_22
d_comonad_20 ~v0 = du_comonad_20
du_comonad_20 :: MAlonzo.Code.Effect.Comonad.T_RawComonad_22
du_comonad_20
  = coe
      MAlonzo.Code.Effect.Comonad.C_constructor_52 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 v2 -> v2))
