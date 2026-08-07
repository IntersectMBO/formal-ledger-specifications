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
import qualified MAlonzo.Code.Agda.Builtin.Equality
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
  = C_constructor_68 MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> AgdaAny -> AgdaAny)
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
-- Class.Monad.Core.Monad.super
d_super_18 ::
  T_Monad_8 -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
d_super_18 v0
  = case coe v0 of
      C_constructor_68 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad.return
d_return_20 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_20 v0
  = case coe v0 of
      C_constructor_68 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>=_
d__'62''62''61'__22 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__22 v0
  = case coe v0 of
      C_constructor_68 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>_
d__'62''62'__24 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__24 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'62''62'__24 v1 v2 v4 v6 v7
du__'62''62'__24 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__24 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__22 v0 v1 erased v2 erased v3 (\ v5 -> v4)
-- Class.Monad.Core.Monad._=<<_
d__'61''60''60'__32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__32 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'61''60''60'__32 v1 v2 v4 v6 v7
du__'61''60''60'__32 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__32 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__22 v0 v1 erased v2 erased v4 v3
-- Class.Monad.Core.Monad._≫=_
d__'8811''61'__38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'8811''61'__38 ~v0 v1 = du__'8811''61'__38 v1
du__'8811''61'__38 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'8811''61'__38 v0 = coe d__'62''62''61'__22 (coe v0)
-- Class.Monad.Core.Monad._≫_
d__'8811'__40 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8811'__40 ~v0 v1 = du__'8811'__40 v1
du__'8811'__40 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8811'__40 v0 v1 v2 v3 v4 v5 v6
  = coe du__'62''62'__24 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core.Monad._=≪_
d__'61''8810'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''8810'__42 ~v0 v1 = du__'61''8810'__42 v1
du__'61''8810'__42 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''8810'__42 v0 v1 v2 v3 v4 v5 v6
  = coe du__'61''60''60'__32 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core.Monad._>=>_
d__'62''61''62'__44 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__44 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du__'62''61''62'__44 v1 v4 v6 v8 v9 v10
du__'62''61''62'__44 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__44 v0 v1 v2 v3 v4 v5
  = coe
      du__'61''60''60'__32 (coe v0) (coe v1) (coe v2) (coe v4)
      (coe v3 v5)
-- Class.Monad.Core.Monad._<=<_
d__'60''61''60'__50 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__50 ~v0 v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9
  = du__'60''61''60'__50 v1 v2 v4 v8 v9
du__'60''61''60'__50 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__50 v0 v1 v2 v3 v4
  = coe
      du__'62''61''62'__44 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)
-- Class.Monad.Core.Monad.join
d_join_56 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_56 ~v0 v1 v2 ~v3 v4 = du_join_56 v1 v2 v4
du_join_56 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_join_56 v0 v1 v2
  = coe d__'62''62''61'__22 v0 v1 erased v1 erased v2 (\ v3 -> v3)
-- Class.Monad.Core.Monad.Functor-M
d_Functor'45'M_60 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_Functor'45'M_60 ~v0 v1 = du_Functor'45'M_60 v1
du_Functor'45'M_60 ::
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
du_Functor'45'M_60 v0
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_32
      (coe
         (\ v1 v2 v3 v4 v5 v6 ->
            coe
              du__'61''60''60'__32 (coe v0) (coe v1) (coe v3)
              (coe (\ v7 -> coe d_return_20 v0 v3 erased (coe v5 v7))) (coe v6)))
-- Class.Monad.Core._._<=<_
d__'60''61''60'__72 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__72 ~v0 v1 = du__'60''61''60'__72 v1
du__'60''61''60'__72 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__72 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe du__'60''61''60'__50 (coe v0) v1 v3 v7 v8
-- Class.Monad.Core._._=<<_
d__'61''60''60'__74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__74 ~v0 v1 = du__'61''60''60'__74 v1
du__'61''60''60'__74 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__74 v0 v1 v2 v3 v4 v5 v6
  = coe du__'61''60''60'__32 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._=≪_
d__'61''8810'__76 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''8810'__76 ~v0 v1 = du__'61''8810'__76 v1
du__'61''8810'__76 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''8810'__76 v0 = coe du__'61''8810'__42 (coe v0)
-- Class.Monad.Core._._>=>_
d__'62''61''62'__78 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__78 ~v0 v1 = du__'62''61''62'__78 v1
du__'62''61''62'__78 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__78 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du__'62''61''62'__44 (coe v0) v3 v5 v7 v8 v9
-- Class.Monad.Core._._>>_
d__'62''62'__80 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__80 ~v0 v1 = du__'62''62'__80 v1
du__'62''62'__80 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__80 v0 v1 v2 v3 v4 v5 v6
  = coe du__'62''62'__24 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._>>=_
d__'62''62''61'__82 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__82 v0 = coe d__'62''62''61'__22 (coe v0)
-- Class.Monad.Core._._≫_
d__'8811'__84 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8811'__84 ~v0 v1 = du__'8811'__84 v1
du__'8811'__84 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8811'__84 v0 = coe du__'8811'__40 (coe v0)
-- Class.Monad.Core._._≫=_
d__'8811''61'__86 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'8811''61'__86 ~v0 v1 = du__'8811''61'__86 v1
du__'8811''61'__86 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'8811''61'__86 v0 = coe du__'8811''61'__38 (coe v0)
-- Class.Monad.Core._.Functor-M
d_Functor'45'M_88 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_Functor'45'M_88 ~v0 v1 = du_Functor'45'M_88 v1
du_Functor'45'M_88 ::
  T_Monad_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
du_Functor'45'M_88 v0 = coe du_Functor'45'M_60 (coe v0)
-- Class.Monad.Core._.join
d_join_90 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_90 ~v0 v1 = du_join_90 v1
du_join_90 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_join_90 v0 v1 v2 v3 = coe du_join_56 (coe v0) v1 v3
-- Class.Monad.Core._.return
d_return_92 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_92 v0 = coe d_return_20 (coe v0)
-- Class.Monad.Core._.super
d_super_94 ::
  T_Monad_8 -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
d_super_94 v0 = coe d_super_18 (coe v0)
-- Class.Monad.Core._.mapM
d_mapM_104 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM_104 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 = du_mapM_104 v1 v4 v6 v7
du_mapM_104 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM_104 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_20 v0 v1 erased v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
             (d_super_18 (coe v0)) v1 erased v1 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
                (d_super_18 (coe v0)) v1 erased v1 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_20 (d_super_18 (coe v0))
                   v1 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v2 v4))
             (coe du_mapM_104 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.concatMapM
d_concatMapM_114 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_concatMapM_114 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_concatMapM_114 v1 v4 v6 v7
du_concatMapM_114 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_concatMapM_114 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (MAlonzo.Code.Class.Applicative.Core.d_super_18
         (coe d_super_18 (coe v0)))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_244)
      (coe du_mapM_104 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core._.forM
d_forM_120 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forM_120 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 = du_forM_120 v1 v4 v6 v7
du_forM_120 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forM_120 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe d_return_20 v0 v1 erased v2
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
             (d_super_18 (coe v0)) v1 erased v1 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
                (d_super_18 (coe v0)) v1 erased v1 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_20 (d_super_18 (coe v0))
                   v1 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v3 v4))
             (coe du_forM_120 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.concatForM
d_concatForM_128 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_concatForM_128 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_concatForM_128 v1 v4 v6 v7
du_concatForM_128 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_concatForM_128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (MAlonzo.Code.Class.Applicative.Core.d_super_18
         (coe d_super_18 (coe v0)))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_244)
      (coe du_forM_120 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core._.return⊤
d_return'8868'_134 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return'8868'_134 ~v0 v1 v2 ~v3 v4 = du_return'8868'_134 v1 v2 v4
du_return'8868'_134 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_return'8868'_134 v0 v1 v2
  = coe
      du__'8811'__40 v0 v1 erased () erased v2
      (coe
         d_return_20 v0 () erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Class.Monad.Core._.void
d_void_136 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_void_136 ~v0 v1 v2 ~v3 = du_void_136 v1 v2
du_void_136 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_void_136 v0 v1 = coe du_return'8868'_134 (coe v0) (coe v1)
-- Class.Monad.Core._.filterM
d_filterM_140 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_filterM_140 ~v0 v1 v2 ~v3 v4 v5 = du_filterM_140 v1 v2 v4 v5
du_filterM_140 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_filterM_140 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_20 v0 v1 erased v3
      (:) v4 v5
        -> coe
             d__'62''62''61'__22 v0 () erased v1 erased (coe v2 v4)
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  (MAlonzo.Code.Class.Applicative.Core.d_super_18
                     (coe d_super_18 (coe v0)))
                  v1 erased v1 erased
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v6)
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe du_filterM_140 (coe v0) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.traverseM
d_traverseM_152 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_traverseM_152 ~v0 v1 v2 ~v3 v4 ~v5 v6
  = du_traverseM_152 v1 v2 v4 v6
du_traverseM_152 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_traverseM_152 v0 v1 v2 v3
  = coe
      du_'46'extendedlambda0_156 (coe v0) (coe v1) (coe v2) (coe v3)
-- Class.Monad.Core._..extendedlambda0
d_'46'extendedlambda0_156 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_'46'extendedlambda0_156 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du_'46'extendedlambda0_156 v1 v2 v4 v6 v7
du_'46'extendedlambda0_156 ::
  T_Monad_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_'46'extendedlambda0_156 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe d_return_20 v0 v2 erased v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
             (d_super_18 (coe v0)) v2 erased v2 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
                (d_super_18 (coe v0)) v2 erased v2 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_20 (d_super_18 (coe v0))
                   v2 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v3 v5))
             (coe du_traverseM_152 v0 v1 v2 v3 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.MonadLaws
d_MonadLaws_166 a0 a1 = ()
data T_MonadLaws_166 = C_constructor_236
-- Class.Monad.Core.MonadLaws.>>=-identityˡ
d_'62''62''61''45'identity'737'_212 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'identity'737'_212 = erased
-- Class.Monad.Core.MonadLaws.>>=-identityʳ
d_'62''62''61''45'identity'691'_218 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'identity'691'_218 = erased
-- Class.Monad.Core.MonadLaws.>>=-assoc
d_'62''62''61''45'assoc_234 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'assoc_234 = erased
-- Class.Monad.Core._.>>=-assoc
d_'62''62''61''45'assoc_240 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'assoc_240 = erased
-- Class.Monad.Core._.>>=-identityʳ
d_'62''62''61''45'identity'691'_242 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'identity'691'_242 = erased
-- Class.Monad.Core._.>>=-identityˡ
d_'62''62''61''45'identity'737'_244 ::
  T_MonadLaws_166 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''62''61''45'identity'737'_244 = erased
-- Class.Monad.Core.Monad₀
d_Monad'8320'_248 a0 = ()
data T_Monad'8320'_248
  = C_constructor_260 T_Monad_8
                      MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_86
-- Class.Monad.Core.Monad₀.isMonad
d_isMonad_256 :: T_Monad'8320'_248 -> T_Monad_8
d_isMonad_256 v0
  = case coe v0 of
      C_constructor_260 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad₀.isApplicative₀
d_isApplicative'8320'_258 ::
  T_Monad'8320'_248 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_86
d_isApplicative'8320'_258 v0
  = case coe v0 of
      C_constructor_260 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.mkMonad₀
d_mkMonad'8320'_264 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_86 ->
  T_Monad'8320'_248
d_mkMonad'8320'_264 ~v0 v1 v2 = du_mkMonad'8320'_264 v1 v2
du_mkMonad'8320'_264 ::
  T_Monad_8 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_86 ->
  T_Monad'8320'_248
du_mkMonad'8320'_264 v0 v1
  = coe C_constructor_260 (coe v0) (coe v1)
-- Class.Monad.Core.Monad⁺
d_Monad'8314'_268 a0 = ()
data T_Monad'8314'_268
  = C_constructor_280 T_Monad_8
                      MAlonzo.Code.Class.Applicative.Core.T_Alternative_108
-- Class.Monad.Core.Monad⁺.isMonad
d_isMonad_276 :: T_Monad'8314'_268 -> T_Monad_8
d_isMonad_276 v0
  = case coe v0 of
      C_constructor_280 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad⁺.isAlternative
d_isAlternative_278 ::
  T_Monad'8314'_268 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_108
d_isAlternative_278 v0
  = case coe v0 of
      C_constructor_280 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.mkMonad⁺
d_mkMonad'8314'_284 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_8 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_108 ->
  T_Monad'8314'_268
d_mkMonad'8314'_284 ~v0 v1 v2 = du_mkMonad'8314'_284 v1 v2
du_mkMonad'8314'_284 ::
  T_Monad_8 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_108 ->
  T_Monad'8314'_268
du_mkMonad'8314'_284 v0 v1
  = coe C_constructor_280 (coe v0) (coe v1)
