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

module MAlonzo.Code.Class.MonadReader where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.MonadError

-- Class.MonadReader._.catch
d_catch_8 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_catch_8 v0
  = coe MAlonzo.Code.Class.MonadError.d_catch_28 (coe v0)
-- Class.MonadReader._.error
d_error_10 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_error_10 v0
  = coe MAlonzo.Code.Class.MonadError.d_error_26 (coe v0)
-- Class.MonadReader.MonadReader
d_MonadReader_22 a0 a1 a2 a3 a4 = ()
data T_MonadReader_22
  = C_constructor_54 AgdaAny
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.MonadReader.MonadReader.ask
d_ask_38 :: T_MonadReader_22 -> AgdaAny
d_ask_38 v0
  = case coe v0 of
      C_constructor_54 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadReader.MonadReader.local
d_local_44 ::
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_local_44 v0
  = case coe v0 of
      C_constructor_54 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadReader.MonadReader.reader
d_reader_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny
d_reader_50 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_reader_50 v0 v4 v5 v6 v8
du_reader_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_reader_50 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
      (MAlonzo.Code.Class.Applicative.Core.d_super_20
         (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v1)))
      v0 erased v3 erased v4 (d_ask_38 (coe v2))
-- Class.MonadReader._.ask
d_ask_58 :: T_MonadReader_22 -> AgdaAny
d_ask_58 v0 = coe d_ask_38 (coe v0)
-- Class.MonadReader._.local
d_local_60 ::
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_local_60 v0 = coe d_local_44 (coe v0)
-- Class.MonadReader.ReaderT
d_ReaderT_72 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_ReaderT_72 = erased
-- Class.MonadReader._.Functor-ReaderT
d_Functor'45'ReaderT_90 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_Functor'45'ReaderT_90 ~v0 ~v1 v2 = du_Functor'45'ReaderT_90 v2
du_Functor'45'ReaderT_90 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_Functor'45'ReaderT_90 v0
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_34
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22 v0 v1 erased v3
              erased v5 (coe v6 v7)))
-- Class.MonadReader._._
d___98 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
d___98 ~v0 ~v1 = du___98
du___98 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du___98 = coe du_Functor'45'ReaderT_90
-- Class.MonadReader._.Applicative-ReaderT
d_Applicative'45'ReaderT_100 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_Applicative'45'ReaderT_100 ~v0 ~v1 v2
  = du_Applicative'45'ReaderT_100 v2
du_Applicative'45'ReaderT_100 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du_Applicative'45'ReaderT_100 v0
  = coe
      MAlonzo.Code.Class.Applicative.Core.C_mkApplicative_60
      (coe
         du___98 (MAlonzo.Code.Class.Applicative.Core.d_super_20 (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Class.Applicative.Core.d_pure_22 v0 v1 erased v3 in
            coe (\ v5 -> v4)))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24 v0 v1
              erased v3 erased (coe v5 v7) (coe v6 v7)))
-- Class.MonadReader._._
d___110 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d___110 ~v0 ~v1 = du___110
du___110 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du___110 = coe du_Applicative'45'ReaderT_100
-- Class.MonadReader._.Monad-ReaderT
d_Monad'45'ReaderT_112 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_Monad'45'ReaderT_112 ~v0 ~v1 v2 = du_Monad'45'ReaderT_112 v2
du_Monad'45'ReaderT_112 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10
du_Monad'45'ReaderT_112 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.C_mkMonad_62
      (coe du___110 (MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
      (coe
         (\ v1 v2 v3 v4 ->
            coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 v1 erased v3))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 v1 erased v3
              erased (coe v5 v7) (\ v8 -> coe v6 v8 v7)))
-- Class.MonadReader._.MonadReader-ReaderT
d_MonadReader'45'ReaderT_126 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> T_MonadReader_22
d_MonadReader'45'ReaderT_126 ~v0 ~v1 v2
  = du_MonadReader'45'ReaderT_126 v2
du_MonadReader'45'ReaderT_126 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> T_MonadReader_22
du_MonadReader'45'ReaderT_126 v0
  = coe
      C_constructor_54
      (coe
         (\ v1 ->
            coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased v1))
      (coe (\ v1 v2 v3 v4 v5 -> coe v4 (coe v3 v5)))
-- Class.MonadReader._.MonadError-ReaderT
d_MonadError'45'ReaderT_138 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16
d_MonadError'45'ReaderT_138 ~v0 ~v1 ~v2 ~v3 v4
  = du_MonadError'45'ReaderT_138 v4
du_MonadError'45'ReaderT_138 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16
du_MonadError'45'ReaderT_138 v0
  = coe
      MAlonzo.Code.Class.MonadError.C_constructor_38
      (coe
         (\ v1 v2 v3 v4 ->
            coe MAlonzo.Code.Class.MonadError.d_error_26 v0 v1 erased v3))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Class.MonadError.d_catch_28 v0 v1 erased (coe v3 v5)
              (\ v6 -> coe v4 v6 v5)))
