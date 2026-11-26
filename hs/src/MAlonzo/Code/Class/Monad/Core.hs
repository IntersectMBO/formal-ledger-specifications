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
d_Monad_10 a0 a1 = ()
data T_Monad_10
  = C_mkMonad_62 MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
                 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                  () -> AgdaAny -> AgdaAny)
                 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                  () ->
                  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
-- Class.Monad.Core.Monad.super
d_super_20 ::
  T_Monad_10 -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_super_20 v0
  = case coe v0 of
      C_mkMonad_62 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad.return
d_return_22 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_22 v0
  = case coe v0 of
      C_mkMonad_62 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>=_
d__'62''62''61'__24 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__24 v0
  = case coe v0 of
      C_mkMonad_62 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad._>>_
d__'62''62'__26 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__26 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'62''62'__26 v2 v3 v5 v7 v8
du__'62''62'__26 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__26 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__24 v0 v1 erased v2 erased v3 (\ v5 -> v4)
-- Class.Monad.Core.Monad._=<<_
d__'61''60''60'__34 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__34 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'61''60''60'__34 v2 v3 v5 v7 v8
du__'61''60''60'__34 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__34 v0 v1 v2 v3 v4
  = coe d__'62''62''61'__24 v0 v1 erased v2 erased v4 v3
-- Class.Monad.Core.Monad._≫=_
d__'8811''61'__40 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'8811''61'__40 ~v0 ~v1 v2 = du__'8811''61'__40 v2
du__'8811''61'__40 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'8811''61'__40 v0 = coe d__'62''62''61'__24 (coe v0)
-- Class.Monad.Core.Monad._≫_
d__'8811'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8811'__42 ~v0 ~v1 v2 = du__'8811'__42 v2
du__'8811'__42 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8811'__42 v0 v1 v2 v3 v4 v5 v6
  = coe du__'62''62'__26 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core.Monad._=≪_
d__'61''8810'__44 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''8810'__44 ~v0 ~v1 v2 = du__'61''8810'__44 v2
du__'61''8810'__44 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''8810'__44 v0 v1 v2 v3 v4 v5 v6
  = coe du__'61''60''60'__34 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core.Monad._>=>_
d__'62''61''62'__46 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__46 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 v7 ~v8 v9 v10 v11
  = du__'62''61''62'__46 v2 v5 v7 v9 v10 v11
du__'62''61''62'__46 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__46 v0 v1 v2 v3 v4 v5
  = coe
      du__'61''60''60'__34 (coe v0) (coe v1) (coe v2) (coe v4)
      (coe v3 v5)
-- Class.Monad.Core.Monad._<=<_
d__'60''61''60'__52 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__52 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 ~v7 ~v8 v9 v10
  = du__'60''61''60'__52 v2 v3 v5 v9 v10
du__'60''61''60'__52 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__52 v0 v1 v2 v3 v4
  = coe
      du__'62''61''62'__46 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)
-- Class.Monad.Core.Monad.join
d_join_58 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_58 v0 ~v1 v2 v3 ~v4 v5 = du_join_58 v0 v2 v3 v5
du_join_58 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_join_58 v0 v1 v2 v3
  = coe
      d__'62''62''61'__24 v1 (coe v0 v2) erased v2 erased v3 (\ v4 -> v4)
-- Class.Monad.Core._._<=<_
d__'60''61''60'__66 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''61''60'__66 ~v0 ~v1 v2 = du__'60''61''60'__66 v2
du__'60''61''60'__66 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''61''60'__66 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe du__'60''61''60'__52 (coe v0) v1 v3 v7 v8
-- Class.Monad.Core._._=<<_
d__'61''60''60'__68 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__68 ~v0 ~v1 v2 = du__'61''60''60'__68 v2
du__'61''60''60'__68 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__68 v0 v1 v2 v3 v4 v5 v6
  = coe du__'61''60''60'__34 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._=≪_
d__'61''8810'__70 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''8810'__70 ~v0 ~v1 v2 = du__'61''8810'__70 v2
du__'61''8810'__70 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''8810'__70 v0 = coe du__'61''8810'__44 (coe v0)
-- Class.Monad.Core._._>=>_
d__'62''61''62'__72 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'62''61''62'__72 ~v0 ~v1 v2 = du__'62''61''62'__72 v2
du__'62''61''62'__72 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'62''61''62'__72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du__'62''61''62'__46 (coe v0) v3 v5 v7 v8 v9
-- Class.Monad.Core._._>>_
d__'62''62'__74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__74 ~v0 ~v1 v2 = du__'62''62'__74 v2
du__'62''62'__74 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__74 v0 v1 v2 v3 v4 v5 v6
  = coe du__'62''62'__26 (coe v0) v1 v3 v5 v6
-- Class.Monad.Core._._>>=_
d__'62''62''61'__76 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__76 v0 = coe d__'62''62''61'__24 (coe v0)
-- Class.Monad.Core._._≫_
d__'8811'__78 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8811'__78 ~v0 ~v1 v2 = du__'8811'__78 v2
du__'8811'__78 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8811'__78 v0 = coe du__'8811'__42 (coe v0)
-- Class.Monad.Core._._≫=_
d__'8811''61'__80 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'8811''61'__80 ~v0 ~v1 v2 = du__'8811''61'__80 v2
du__'8811''61'__80 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'8811''61'__80 v0 = coe du__'8811''61'__40 (coe v0)
-- Class.Monad.Core._.join
d_join_82 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_join_82 v0 ~v1 v2 = du_join_82 v0 v2
du_join_82 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_join_82 v0 v1 v2 v3 v4 = coe du_join_58 (coe v0) (coe v1) v2 v4
-- Class.Monad.Core._.return
d_return_84 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return_84 v0 = coe d_return_22 (coe v0)
-- Class.Monad.Core._.super
d_super_86 ::
  T_Monad_10 -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_super_86 v0 = coe d_super_20 (coe v0)
-- Class.Monad.Core._.mapM
d_mapM_96 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM_96 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 v7 v8 = du_mapM_96 v2 v5 v7 v8
du_mapM_96 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM_96 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_22 v0 v1 erased v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
             (d_super_20 (coe v0)) v1 erased v1 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
                (d_super_20 (coe v0)) v1 erased v1 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_22 (d_super_20 (coe v0))
                   v1 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v2 v4))
             (coe du_mapM_96 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.concatMapM
d_concatMapM_106 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_concatMapM_106 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 v7 v8
  = du_concatMapM_106 v2 v5 v7 v8
du_concatMapM_106 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_concatMapM_106 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
      (MAlonzo.Code.Class.Applicative.Core.d_super_20
         (coe d_super_20 (coe v0)))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_244)
      (coe du_mapM_96 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core._.forM
d_forM_112 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forM_112 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 v7 v8
  = du_forM_112 v2 v5 v7 v8
du_forM_112 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forM_112 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe d_return_22 v0 v1 erased v2
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
             (d_super_20 (coe v0)) v1 erased v1 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
                (d_super_20 (coe v0)) v1 erased v1 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_22 (d_super_20 (coe v0))
                   v1 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v3 v4))
             (coe du_forM_112 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.concatForM
d_concatForM_120 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_concatForM_120 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 v7 v8
  = du_concatForM_120 v2 v5 v7 v8
du_concatForM_120 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_concatForM_120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
      (MAlonzo.Code.Class.Applicative.Core.d_super_20
         (coe d_super_20 (coe v0)))
      v1 erased v1 erased (coe MAlonzo.Code.Data.List.Base.du_concat_244)
      (coe du_forM_112 (coe v0) (coe v1) (coe v2) (coe v3))
-- Class.Monad.Core._.return⊤
d_return'8868'_126 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_return'8868'_126 ~v0 ~v1 v2 v3 ~v4 v5
  = du_return'8868'_126 v2 v3 v5
du_return'8868'_126 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_return'8868'_126 v0 v1 v2
  = coe
      du__'8811'__42 v0 v1 erased () erased v2
      (coe
         d_return_22 v0 () erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Class.Monad.Core._.void
d_void_128 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_void_128 ~v0 ~v1 v2 v3 ~v4 = du_void_128 v2 v3
du_void_128 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_void_128 v0 v1 = coe du_return'8868'_126 (coe v0) (coe v1)
-- Class.Monad.Core._.filterM
d_filterM_132 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_filterM_132 ~v0 ~v1 v2 v3 ~v4 v5 v6 = du_filterM_132 v2 v3 v5 v6
du_filterM_132 ::
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_filterM_132 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe d_return_22 v0 v1 erased v3
      (:) v4 v5
        -> coe
             d__'62''62''61'__24 v0 () erased v1 erased (coe v2 v4)
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                  (MAlonzo.Code.Class.Applicative.Core.d_super_20
                     (coe d_super_20 (coe v0)))
                  v1 erased v1 erased
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v6)
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe du_filterM_132 (coe v0) (coe v1) (coe v2) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.traverseM
d_traverseM_144 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_traverseM_144 v0 ~v1 v2 v3 ~v4 v5 ~v6 v7
  = du_traverseM_144 v0 v2 v3 v5 v7
du_traverseM_144 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_traverseM_144 v0 v1 v2 v3 v4
  = coe
      du_'46'extendedlambda0_148 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Class.Monad.Core._..extendedlambda0
d_'46'extendedlambda0_148 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_'46'extendedlambda0_148 v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du_'46'extendedlambda0_148 v0 v2 v3 v5 v7 v8
du_'46'extendedlambda0_148 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  T_Monad_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_'46'extendedlambda0_148 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      [] -> coe d_return_22 v1 v3 erased v5
      (:) v6 v7
        -> coe
             MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
             (d_super_20 (coe v1)) v3 erased v3 erased
             (coe
                MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__24
                (d_super_20 (coe v1)) v3 erased v3 erased
                (coe
                   MAlonzo.Code.Class.Applicative.Core.d_pure_22 (d_super_20 (coe v1))
                   v3 erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                (coe v4 v6))
             (coe du_traverseM_144 v0 v1 v2 v3 v4 v7)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core._.whenM
d_whenM_154 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 -> Bool -> AgdaAny -> AgdaAny
d_whenM_154 ~v0 ~v1 v2 v3 v4 = du_whenM_154 v2 v3 v4
du_whenM_154 :: T_Monad_10 -> Bool -> AgdaAny -> AgdaAny
du_whenM_154 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v1)
      (coe
         du__'62''62'__26 (coe v0) (coe ()) (coe ()) (coe v2)
         (coe
            d_return_22 v0 () erased
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      (coe
         d_return_22 v0 () erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Class.Monad.Core.MonadLaws
d_MonadLaws_166 a0 a1 a2 = ()
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
-- Class.Monad.Core.MkMonad.⇒Functor
d_'8658'Functor_266 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_'8658'Functor_266 ~v0 ~v1 v2 v3 = du_'8658'Functor_266 v2 v3
du_'8658'Functor_266 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_'8658'Functor_266 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_34
      (coe
         (\ v2 v3 v4 v5 v6 v7 ->
            coe v1 v2 v4 v3 v5 v7 (\ v8 -> coe v0 v4 v5 (coe v6 v8))))
-- Class.Monad.Core.MkMonad.⇒Applicative
d_'8658'Applicative_272 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_'8658'Applicative_272 ~v0 ~v1 v2 v3
  = du_'8658'Applicative_272 v2 v3
du_'8658'Applicative_272 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du_'8658'Applicative_272 v0 v1
  = coe
      MAlonzo.Code.Class.Applicative.Core.C_mkApplicative_60
      (coe du_'8658'Functor_266 (coe v0) (coe v1))
      (coe (\ v2 v3 -> coe v0 v2 v3))
      (coe
         (\ v2 v3 v4 v5 v6 v7 ->
            coe
              v1 () v4 () v5 v6
              (\ v8 ->
                 coe v1 v2 v4 v3 v5 v7 (\ v9 -> coe v0 v4 v5 (coe v8 v9)))))
-- Class.Monad.Core.MkMonad.⇒Monad
d_'8658'Monad_282 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  T_Monad_10
d_'8658'Monad_282 ~v0 ~v1 v2 v3 = du_'8658'Monad_282 v2 v3
du_'8658'Monad_282 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny) ->
  T_Monad_10
du_'8658'Monad_282 v0 v1
  = coe
      C_mkMonad_62
      (coe
         MAlonzo.Code.Class.Applicative.Core.C_mkApplicative_60
         (coe du_'8658'Functor_266 (coe v0) (coe v1))
         (coe (\ v2 v3 -> coe v0 v2 v3))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 v1 () v4 () v5 v6
                 (\ v8 ->
                    coe v1 v2 v4 v3 v5 v7 (\ v9 -> coe v0 v4 v5 (coe v8 v9))))))
      (coe v0) (coe (\ v2 v3 v4 -> coe v1 v2 v4 v3))
-- Class.Monad.Core.Monad₀
d_Monad'8320'_288 a0 a1 = ()
data T_Monad'8320'_288
  = C_constructor_300 T_Monad_10
                      MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_118
-- Class.Monad.Core.Monad₀.isMonad
d_isMonad_296 :: T_Monad'8320'_288 -> T_Monad_10
d_isMonad_296 v0
  = case coe v0 of
      C_constructor_300 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad₀.isApplicative₀
d_isApplicative'8320'_298 ::
  T_Monad'8320'_288 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_118
d_isApplicative'8320'_298 v0
  = case coe v0 of
      C_constructor_300 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.mkMonad₀
d_mkMonad'8320'_304 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_118 ->
  T_Monad'8320'_288
d_mkMonad'8320'_304 ~v0 ~v1 v2 v3 = du_mkMonad'8320'_304 v2 v3
du_mkMonad'8320'_304 ::
  T_Monad_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Applicative'8320'_118 ->
  T_Monad'8320'_288
du_mkMonad'8320'_304 v0 v1
  = coe C_constructor_300 (coe v0) (coe v1)
-- Class.Monad.Core.Monad⁺
d_Monad'8314'_310 a0 a1 = ()
data T_Monad'8314'_310
  = C_constructor_322 T_Monad_10
                      MAlonzo.Code.Class.Applicative.Core.T_Alternative_142
-- Class.Monad.Core.Monad⁺.isMonad
d_isMonad_318 :: T_Monad'8314'_310 -> T_Monad_10
d_isMonad_318 v0
  = case coe v0 of
      C_constructor_322 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.Monad⁺.isAlternative
d_isAlternative_320 ::
  T_Monad'8314'_310 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_142
d_isAlternative_320 v0
  = case coe v0 of
      C_constructor_322 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Core.mkMonad⁺
d_mkMonad'8314'_326 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Monad_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_142 ->
  T_Monad'8314'_310
d_mkMonad'8314'_326 ~v0 ~v1 v2 v3 = du_mkMonad'8314'_326 v2 v3
du_mkMonad'8314'_326 ::
  T_Monad_10 ->
  MAlonzo.Code.Class.Applicative.Core.T_Alternative_142 ->
  T_Monad'8314'_310
du_mkMonad'8314'_326 v0 v1
  = coe C_constructor_322 (coe v0) (coe v1)
