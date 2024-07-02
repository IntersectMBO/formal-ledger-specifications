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
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.MonadError

-- Class.MonadReader._.catch
d_catch_8 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_catch_8 v0
  = coe MAlonzo.Code.Class.MonadError.d_catch_30 (coe v0)
-- Class.MonadReader._.error
d_error_10 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_error_10 v0
  = coe MAlonzo.Code.Class.MonadError.d_error_28 (coe v0)
-- Class.MonadReader.MonadReader
d_MonadReader_22 a0 a1 a2 a3 = ()
data T_MonadReader_22
  = C_MonadReader'46'constructor_327 AgdaAny
                                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                      () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.MonadReader.MonadReader.ask
d_ask_38 :: T_MonadReader_22 -> AgdaAny
d_ask_38 v0
  = case coe v0 of
      C_MonadReader'46'constructor_327 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadReader.MonadReader.local
d_local_44 ::
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_local_44 v0
  = case coe v0 of
      C_MonadReader'46'constructor_327 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadReader.MonadReader.reader
d_reader_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny
d_reader_50 v0 ~v1 ~v2 v3 v4 v5 ~v6 v7
  = du_reader_50 v0 v3 v4 v5 v7
du_reader_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_reader_50 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v1)) v0
      erased v3 erased v4 (d_ask_38 (coe v2))
-- Class.MonadReader._.ask
d_ask_62 :: T_MonadReader_22 -> AgdaAny
d_ask_62 v0 = coe d_ask_38 (coe v0)
-- Class.MonadReader._.local
d_local_64 ::
  T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_local_64 v0 = coe d_local_44 (coe v0)
-- Class.MonadReader.ReaderT
d_ReaderT_76 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_ReaderT_76 = erased
-- Class.MonadReader._.Monad-ReaderT
d_Monad'45'ReaderT_96 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
d_Monad'45'ReaderT_96 ~v0 ~v1 v2 = du_Monad'45'ReaderT_96 v2
du_Monad'45'ReaderT_96 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
du_Monad'45'ReaderT_96 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.C_Monad'46'constructor_213
      (coe
         (\ v1 v2 v3 v4 ->
            coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v1 erased v3))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 v1 erased v3
              erased (coe v5 v7) (\ v8 -> coe v6 v8 v7)))
-- Class.MonadReader._.MonadReader-ReaderT
d_MonadReader'45'ReaderT_110 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_MonadReader_22
d_MonadReader'45'ReaderT_110 ~v0 ~v1 v2
  = du_MonadReader'45'ReaderT_110 v2
du_MonadReader'45'ReaderT_110 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_MonadReader_22
du_MonadReader'45'ReaderT_110 v0
  = coe
      C_MonadReader'46'constructor_327
      (coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased)
      (coe (\ v1 v2 v3 v4 v5 -> coe v4 (coe v3 v5)))
-- Class.MonadReader._.MonadError-ReaderT
d_MonadError'45'ReaderT_122 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18
d_MonadError'45'ReaderT_122 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_MonadError'45'ReaderT_122 v5
du_MonadError'45'ReaderT_122 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18
du_MonadError'45'ReaderT_122 v0
  = coe
      MAlonzo.Code.Class.MonadError.C_MonadError'46'constructor_371
      (coe
         (\ v1 v2 v3 v4 ->
            coe MAlonzo.Code.Class.MonadError.d_error_28 v0 v1 erased v3))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Class.MonadError.d_catch_30 v0 v1 erased (coe v3 v5)
              (\ v6 -> coe v4 v6 v5)))
