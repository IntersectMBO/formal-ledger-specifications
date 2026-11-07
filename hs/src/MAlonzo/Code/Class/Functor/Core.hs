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

module MAlonzo.Code.Class.Functor.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

-- Class.Functor.Core.Functor
d_Functor_16 a0 a1 = ()
newtype T_Functor_16
  = C_constructor_34 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.Functor.Core.Functor._<$>_
d__'60''36''62'__22 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__22 v0
  = case coe v0 of
      C_constructor_34 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Functor.Core.Functor.fmap
d_fmap_24 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap_24 ~v0 ~v1 v2 = du_fmap_24 v2
du_fmap_24 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_fmap_24 v0 = coe d__'60''36''62'__22 (coe v0)
-- Class.Functor.Core.Functor._<$_
d__'60''36'__26 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__26 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'60''36'__26 v2 v3 v5 v7 v8
du__'60''36'__26 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__26 v0 v1 v2 v3 v4
  = coe d__'60''36''62'__22 v0 v2 erased v1 erased (\ v5 -> v3) v4
-- Class.Functor.Core.Functor._<&>_
d__'60''38''62'__32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'60''38''62'__32 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'60''38''62'__32 v2 v3 v5 v7 v8
du__'60''38''62'__32 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'60''38''62'__32 v0 v1 v2 v3 v4
  = coe d__'60''36''62'__22 v0 v1 erased v2 erased v4 v3
-- Class.Functor.Core._._<$_
d__'60''36'__38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__38 ~v0 ~v1 v2 = du__'60''36'__38 v2
du__'60''36'__38 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__38 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''36'__26 (coe v0) v1 v3 v5 v6
-- Class.Functor.Core._._<$>_
d__'60''36''62'__40 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__40 v0 = coe d__'60''36''62'__22 (coe v0)
-- Class.Functor.Core._._<&>_
d__'60''38''62'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'60''38''62'__42 ~v0 ~v1 v2 = du__'60''38''62'__42 v2
du__'60''38''62'__42 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'60''38''62'__42 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''38''62'__32 (coe v0) v1 v3 v5 v6
-- Class.Functor.Core._.fmap
d_fmap_44 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap_44 ~v0 ~v1 v2 = du_fmap_44 v2
du_fmap_44 ::
  T_Functor_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_fmap_44 v0 = coe du_fmap_24 (coe v0)
-- Class.Functor.Core.FunctorLaws
d_FunctorLaws_52 a0 a1 a2 = ()
data T_FunctorLaws_52 = C_constructor_98
-- Class.Functor.Core.FunctorLaws.fmap-id
d_fmap'45'id_82 ::
  T_FunctorLaws_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fmap'45'id_82 = erased
-- Class.Functor.Core.FunctorLaws.fmap-∘
d_fmap'45''8728'_96 ::
  T_FunctorLaws_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fmap'45''8728'_96 = erased
-- Class.Functor.Core._.fmap-id
d_fmap'45'id_102 ::
  T_FunctorLaws_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fmap'45'id_102 = erased
-- Class.Functor.Core._.fmap-∘
d_fmap'45''8728'_104 ::
  T_FunctorLaws_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fmap'45''8728'_104 = erased
