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

module MAlonzo.Code.Class.MonadError where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Sum.Base

-- Class.MonadError.MonadError
d_MonadError_18 a0 a1 a2 = ()
data T_MonadError_18
  = C_MonadError'46'constructor_371 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                     () -> AgdaAny -> AgdaAny)
                                    (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                     () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
-- Class.MonadError.MonadError.error
d_error_28 ::
  T_MonadError_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_error_28 v0
  = case coe v0 of
      C_MonadError'46'constructor_371 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadError.MonadError.catch
d_catch_30 ::
  T_MonadError_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_catch_30 v0
  = case coe v0 of
      C_MonadError'46'constructor_371 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadError.MonadError-TC
d_MonadError'45'TC_32 :: T_MonadError_18
d_MonadError'45'TC_32
  = coe
      C_MonadError'46'constructor_371
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 v0 erased))
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 v0 erased v2
              (coe
                 v3
                 (coe
                    MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                       (coe
                          ("TC doesn't provide which error to catch" :: Data.Text.Text)))))))
-- Class.MonadError.ErrorT
d_ErrorT_46 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_ErrorT_46 = erased
-- Class.MonadError._.Monad-ErrorT
d_Monad'45'ErrorT_66 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
d_Monad'45'ErrorT_66 ~v0 ~v1 v2 = du_Monad'45'ErrorT_66 v2
du_Monad'45'ErrorT_66 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
du_Monad'45'ErrorT_66 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.C_Monad'46'constructor_213
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v1 erased
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))))
      (coe
         (\ v1 v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 v1 erased v3
              erased v5
              (\ v7 ->
                 case coe v7 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v3 erased v7
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8 -> coe v6 v8
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Class.MonadError._.MonadError-ErrorT
d_MonadError'45'ErrorT_80 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_MonadError_18
d_MonadError'45'ErrorT_80 ~v0 ~v1 v2
  = du_MonadError'45'ErrorT_80 v2
du_MonadError'45'ErrorT_80 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_MonadError_18
du_MonadError'45'ErrorT_80 v0
  = coe
      C_MonadError'46'constructor_371
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v1 erased
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 v1 erased v1
              erased v3
              (\ v5 ->
                 case coe v5 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6 -> coe v4 v6
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                     -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v1 erased v5
                   _ -> MAlonzo.RTE.mazUnreachableError)))
