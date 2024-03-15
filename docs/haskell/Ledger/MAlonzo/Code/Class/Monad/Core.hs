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

module MAlonzo.Code.Class.Monad.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base

-- Class.Monad.Core.Monad
d_Monad_8 a0 = ()
data T_Monad_8
  = C_Monad'46'constructor_213 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                () -> AgdaAny -> AgdaAny)
                               (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                () ->
                                MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
-- Class.Monad.Core.Monad.return
d_return_16 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_16 v0
  = case coe v0 of
      C_Monad'46'constructor_213 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>=_
d__'62''62''61'__18 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__18 v0
  = case coe v0 of
      C_Monad'46'constructor_213 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>_
d__'62''62'__20 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__20 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'62''62'__20 v1 v2 v4 v6 v7
du__'62''62'__20 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__20 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__18 v0 v1 erased v2 erased v3 (\ v5 -> v4)
-- Class.Monad.Core.Monad._=<<_
d__'61''60''60'__28 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__28 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'61''60''60'__28 v1 v2 v4 v6 v7
du__'61''60''60'__28 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__28 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__18 v0 v1 erased v2 erased v4 v3
-- Class.Monad.Core.Monad._>=>_
d__'62''61''62'__34 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__34 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du__'62''61''62'__34 v1 v4 v6 v8 v9 v10
du__'62''61''62'__34 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__34 v0 v1 v2 v3 v4 v5
  = coe
      du__'61''60''60'__28 (coe v0) (coe v1) (coe v2) (coe v4)
      (coe v3 v5)
-- Class.Monad.Core.Monad._<=<_
d__'60''61''60'__40 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__40 ~v0 v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9
  = du__'60''61''60'__40 v1 v2 v4 v8 v9
du__'60''61''60'__40 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__40 v0 v1 v2 v3 v4
  = coe
      du__'62''61''62'__34 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)
-- Class.Monad.Core.Monad.join
d_join_46 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_46 ~v0 v1 v2 ~v3 v4 = du_join_46 v1 v2 v4
du_join_46 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_join_46 v0 v1 v2
  = coe d__'62''62''61'__18 v0 v1 erased v1 erased v2 (\ v3 -> v3)
-- Class.Monad.Core.Monad.Functor-M
d_Functor'45'M_50 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_Functor'45'M_50 ~v0 v1 = du_Functor'45'M_50 v1
du_Functor'45'M_50 ::
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
du_Functor'45'M_50 v0
  = coe
      MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
      (coe
         (\ v1 v2 v3 v4 v5 v6 ->
            coe
              du__'61''60''60'__28 (coe v0) (coe v1) (coe v3)
              (coe (\ v7 -> coe d_return_16 v0 v3 erased (coe v5 v7))) (coe v6)))
-- Class.Monad.Core.Monad.mapM
d_mapM_60 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM_60 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 = du_mapM_60 v1 v4 v6 v7
du_mapM_60 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM_60 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_16 v0 v1 erased v3
      (:) v4 v5
        -> coe
             d__'62''62''61'__18 v0 v1 erased v1 erased (coe v2 v4)
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  (coe
                     MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
                     (coe
                        (\ v7 v8 v9 v10 v11 v12 ->
                           coe
                             du__'61''60''60'__28 (coe v0) (coe v7) (coe v9)
                             (coe (\ v13 -> coe d_return_16 v0 v9 erased (coe v11 v13)))
                             (coe v12))))
                  v1 erased v1 erased
                  (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6))
                  (coe du_mapM_60 (coe v0) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad.concatMapM
d_concatMapM_74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_concatMapM_74 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_concatMapM_74 v1 v4 v6 v7
du_concatMapM_74 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_concatMapM_74 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe
         MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
         (coe
            (\ v4 v5 v6 v7 v8 v9 ->
               coe
                 du__'61''60''60'__28 (coe v0) (coe v4) (coe v6)
                 (coe (\ v10 -> coe d_return_16 v0 v6 erased (coe v8 v10)))
                 (coe v9))))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_270)
      (coe du_mapM_60 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core.Monad.forM
d_forM_80 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forM_80 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 = du_forM_80 v1 v4 v6 v7
du_forM_80 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forM_80 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe d_return_16 v0 v1 erased v2
      (:) v4 v5
        -> coe
             d__'62''62''61'__18 v0 v1 erased v1 erased (coe v3 v4)
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  (coe
                     MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
                     (coe
                        (\ v7 v8 v9 v10 v11 v12 ->
                           coe
                             du__'61''60''60'__28 (coe v0) (coe v7) (coe v9)
                             (coe (\ v13 -> coe d_return_16 v0 v9 erased (coe v11 v13)))
                             (coe v12))))
                  v1 erased v1 erased
                  (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6))
                  (coe du_forM_80 (coe v0) (coe v1) (coe v5) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad.concatForM
d_concatForM_92 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_concatForM_92 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_concatForM_92 v1 v4 v6 v7
du_concatForM_92 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_concatForM_92 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe
         MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
         (coe
            (\ v4 v5 v6 v7 v8 v9 ->
               coe
                 du__'61''60''60'__28 (coe v0) (coe v4) (coe v6)
                 (coe (\ v10 -> coe d_return_16 v0 v6 erased (coe v8 v10)))
                 (coe v9))))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_270)
      (coe du_forM_80 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core.Monad.return⊤
d_return'8868'_98 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return'8868'_98 ~v0 v1 v2 ~v3 v4 = du_return'8868'_98 v1 v2 v4
du_return'8868'_98 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_return'8868'_98 v0 v1 v2
  = coe
      du__'62''62'__20 (coe v0) (coe v1) (coe ()) (coe v2)
      (coe
         d_return_16 v0 () erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Class.Monad.Core.Monad.void
d_void_100 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_void_100 ~v0 v1 v2 ~v3 = du_void_100 v1 v2
du_void_100 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_void_100 v0 v1 = coe du_return'8868'_98 (coe v0) (coe v1)
-- Class.Monad.Core.Monad.filterM
d_filterM_104 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_filterM_104 ~v0 v1 v2 ~v3 v4 v5 = du_filterM_104 v1 v2 v4 v5
du_filterM_104 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_filterM_104 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_16 v0 v1 erased v3
      (:) v4 v5
        -> coe
             d__'62''62''61'__18 v0 () erased v1 erased (coe v2 v4)
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  (coe
                     MAlonzo.Code.Class.Functor.Core.C_Functor'46'constructor_121
                     (coe
                        (\ v7 v8 v9 v10 v11 v12 ->
                           coe
                             du__'61''60''60'__28 (coe v0) (coe v7) (coe v9)
                             (coe (\ v13 -> coe d_return_16 v0 v9 erased (coe v11 v13)))
                             (coe v12))))
                  v1 erased v1 erased
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__62
                     (coe
                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v6)
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe du_filterM_104 (coe v0) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad.traverseM
d_traverseM_116 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_traverseM_116 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_traverseM_116 v1 v2 v4 v6 v7 v8
du_traverseM_116 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_traverseM_116 v0 v1 v2 v3 v4 v5
  = coe
      du_'46'extendedlambda1_120 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5)
-- Class.Monad.Core.Monad..extendedlambda1
d_'46'extendedlambda1_120 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_'46'extendedlambda1_120 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'46'extendedlambda1_120 v1 v2 v4 v6 v7 v8 v9
du_'46'extendedlambda1_120 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_'46'extendedlambda1_120 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      [] -> coe d_return_16 v0 v2 erased v6
      (:) v7 v8
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22 v3 v2
             erased v2 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22 v3 v2
                erased v2 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_20 v3 v2 erased
                   (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v5 v7))
             (coe du_traverseM_116 v0 v1 v2 v3 v4 v5 v8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._._<=<_
d__'60''61''60'__128 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__128 ~v0 v1 = du__'60''61''60'__128 v1
du__'60''61''60'__128 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__128 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe du__'60''61''60'__40 (coe v0) v1 v3 v7 v8
-- Class.Monad.Core._._=<<_
d__'61''60''60'__130 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__130 ~v0 v1 = du__'61''60''60'__130 v1
du__'61''60''60'__130 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__130 v0 v1 v2 v3 v4 v5 v6
  = coe du__'61''60''60'__28 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._>=>_
d__'62''61''62'__132 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__132 ~v0 v1 = du__'62''61''62'__132 v1
du__'62''61''62'__132 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du__'62''61''62'__34 (coe v0) v3 v5 v7 v8 v9
-- Class.Monad.Core._._>>_
d__'62''62'__134 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__134 ~v0 v1 = du__'62''62'__134 v1
du__'62''62'__134 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__134 v0 v1 v2 v3 v4 v5 v6
  = coe du__'62''62'__20 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._>>=_
d__'62''62''61'__136 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__136 v0 = coe d__'62''62''61'__18 (coe v0)
-- Class.Monad.Core._.Functor-M
d_Functor'45'M_138 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_Functor'45'M_138 ~v0 v1 = du_Functor'45'M_138 v1
du_Functor'45'M_138 ::
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
du_Functor'45'M_138 v0 = coe du_Functor'45'M_50 (coe v0)
-- Class.Monad.Core._.concatForM
d_concatForM_140 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_concatForM_140 ~v0 v1 = du_concatForM_140 v1
du_concatForM_140 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_concatForM_140 v0 v1 v2 v3 v4 v5 v6
  = coe du_concatForM_92 (coe v0) v3 v5 v6
-- Class.Monad.Core._.concatMapM
d_concatMapM_142 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_concatMapM_142 ~v0 v1 = du_concatMapM_142 v1
du_concatMapM_142 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_concatMapM_142 v0 v1 v2 v3 v4 v5 v6
  = coe du_concatMapM_74 (coe v0) v3 v5 v6
-- Class.Monad.Core._.filterM
d_filterM_144 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_filterM_144 ~v0 v1 = du_filterM_144 v1
du_filterM_144 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_filterM_144 v0 v1 v2 v3 v4
  = coe du_filterM_104 (coe v0) v1 v3 v4
-- Class.Monad.Core._.forM
d_forM_146 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forM_146 ~v0 v1 = du_forM_146 v1
du_forM_146 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forM_146 v0 v1 v2 v3 v4 v5 v6 = coe du_forM_80 (coe v0) v3 v5 v6
-- Class.Monad.Core._.join
d_join_148 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_148 ~v0 v1 = du_join_148 v1
du_join_148 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_join_148 v0 v1 v2 v3 = coe du_join_46 (coe v0) v1 v3
-- Class.Monad.Core._.mapM
d_mapM_150 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM_150 ~v0 v1 = du_mapM_150 v1
du_mapM_150 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM_150 v0 v1 v2 v3 v4 v5 v6 = coe du_mapM_60 (coe v0) v3 v5 v6
-- Class.Monad.Core._.return
d_return_152 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_152 v0 = coe d_return_16 (coe v0)
-- Class.Monad.Core._.return⊤
d_return'8868'_154 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return'8868'_154 ~v0 v1 = du_return'8868'_154 v1
du_return'8868'_154 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_return'8868'_154 v0 v1 v2 v3
  = coe du_return'8868'_98 (coe v0) v1 v3
-- Class.Monad.Core._.traverseM
d_traverseM_156 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_traverseM_156 ~v0 v1 = du_traverseM_156 v1
du_traverseM_156 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8 ->
  T_Monad_8 -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_traverseM_156 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du_traverseM_116 (coe v0) v1 v3 v5 v6 v7
-- Class.Monad.Core._.void
d_void_158 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_void_158 ~v0 v1 = du_void_158 v1
du_void_158 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_void_158 v0 v1 v2 = coe du_void_100 (coe v0) v1
