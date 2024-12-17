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

module MAlonzo.Code.Class.Traversable.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Data.List.NonEmpty.Base

-- Class.Traversable.Instances.Traversable-Maybe
d_Traversable'45'Maybe_6 ::
  MAlonzo.Code.Class.Traversable.Core.T_Traversable_10
d_Traversable'45'Maybe_6
  = coe
      MAlonzo.Code.Class.Traversable.Core.C_Traversable'46'constructor_225
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v3 v1 erased v1
                     erased v5
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.d_return_16 v3 v1 erased
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)))
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v3 v1 erased v4
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.Traversable.Instances.Traversable-List
d_Traversable'45'List_12 ::
  MAlonzo.Code.Class.Traversable.Core.T_Traversable_10
d_Traversable'45'List_12
  = coe
      MAlonzo.Code.Class.Traversable.Core.C_Traversable'46'constructor_225
      (coe (\ v0 v1 v2 v3 -> coe du_go_18 (coe v1) (coe v3)))
-- Class.Traversable.Instances._.go
d_go_18 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> [AgdaAny] -> AgdaAny
d_go_18 ~v0 v1 ~v2 v3 = du_go_18 v1 v3
du_go_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> [AgdaAny] -> AgdaAny
du_go_18 v0 v1 = coe du_'46'extendedlambda1_20 (coe v0) (coe v1)
-- Class.Traversable.Instances._..extendedlambda1
d_'46'extendedlambda1_20 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> [AgdaAny] -> AgdaAny
d_'46'extendedlambda1_20 ~v0 v1 ~v2 v3 v4
  = du_'46'extendedlambda1_20 v1 v3 v4
du_'46'extendedlambda1_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> [AgdaAny] -> AgdaAny
du_'46'extendedlambda1_20 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v1 v0 erased v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v1 v0 erased v0
             erased v3
             (\ v5 ->
                coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v1 v0 erased v0
                  erased (coe du_go_18 v0 v1 v4)
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Class.Monad.Core.d_return_16 v1 v0 erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Traversable.Instances.Traversable-List⁺
d_Traversable'45'List'8314'_30 ::
  MAlonzo.Code.Class.Traversable.Core.T_Traversable_10
d_Traversable'45'List'8314'_30
  = coe
      MAlonzo.Code.Class.Traversable.Core.C_Traversable'46'constructor_225
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v3 v1 erased v1
                     erased v5
                     (\ v7 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v3 v1 erased v1
                          erased (coe du_go_18 v1 v3 v6)
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Class.Monad.Core.d_return_16 v3 v1 erased
                               (coe
                                  MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 (coe v7)
                                  (coe v8))))
              _ -> MAlonzo.RTE.mazUnreachableError))
