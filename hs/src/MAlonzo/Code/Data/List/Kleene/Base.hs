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

module MAlonzo.Code.Data.List.Kleene.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base

-- Data.List.Kleene.Base._+
d__'43'_24 a0 a1 = ()
data T__'43'_24 = C__'38'__42 AgdaAny T__'42'_30
-- Data.List.Kleene.Base._*
d__'42'_30 a0 a1 = ()
data T__'42'_30 = C_'91''93'_46 | C_'8761'__48 T__'43'_24
-- Data.List.Kleene.Base._+.head
d_head_38 :: T__'43'_24 -> AgdaAny
d_head_38 v0
  = case coe v0 of
      C__'38'__42 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._+.tail
d_tail_40 :: T__'43'_24 -> T__'42'_30
d_tail_40 v0
  = case coe v0 of
      C__'38'__42 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.uncons
d_uncons_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> Maybe T__'43'_24
d_uncons_50 ~v0 ~v1 v2 = du_uncons_50 v2
du_uncons_50 :: T__'42'_30 -> Maybe T__'43'_24
du_uncons_50 v0
  = case coe v0 of
      C_'91''93'_46 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_'8761'__48 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.foldMap+
d_foldMap'43'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
d_foldMap'43'_54 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_foldMap'43'_54 v4 v5 v6
du_foldMap'43'_54 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
du_foldMap'43'_54 v0 v1 v2
  = case coe v2 of
      C__'38'__42 v3 v4
        -> case coe v4 of
             C_'91''93'_46 -> coe v1 v3
             C_'8761'__48 v5
               -> coe
                    v0 (coe v1 v3) (coe du_foldMap'43'_54 (coe v0) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.foldMap*
d_foldMap'42'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T__'42'_30 -> AgdaAny
d_foldMap'42'_70 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_foldMap'42'_70 v4 v5 v6 v7
du_foldMap'42'_70 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T__'42'_30 -> AgdaAny
du_foldMap'42'_70 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_46 -> coe v1
      C_'8761'__48 v4 -> coe du_foldMap'43'_54 (coe v0) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldr+
d_foldr'43'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'43'_24 -> AgdaAny
d_foldr'43'_98 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_foldr'43'_98 v0 v2 v4 v5 v6
du_foldr'43'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'43'_24 -> AgdaAny
du_foldr'43'_98 v0 v1 v2 v3 v4
  = case coe v4 of
      C__'38'__42 v5 v6
        -> coe
             v2 v5
             (coe du_foldr'42'_100 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldr*
d_foldr'42'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'42'_30 -> AgdaAny
d_foldr'42'_100 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_foldr'42'_100 v0 v2 v4 v5 v6
du_foldr'42'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'42'_30 -> AgdaAny
du_foldr'42'_100 v0 v1 v2 v3 v4
  = case coe v4 of
      C_'91''93'_46 -> coe v3
      C_'8761'__48 v5
        -> coe du_foldr'43'_98 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldl+
d_foldl'43'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'43'_24 -> AgdaAny
d_foldl'43'_118 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_foldl'43'_118 v0 v2 v4 v5 v6
du_foldl'43'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'43'_24 -> AgdaAny
du_foldl'43'_118 v0 v1 v2 v3 v4
  = case coe v4 of
      C__'38'__42 v5 v6
        -> coe
             du_foldl'42'_120 (coe v0) (coe v1) (coe v2) (coe v2 v3 v5) (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldl*
d_foldl'42'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'42'_30 -> AgdaAny
d_foldl'42'_120 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_foldl'42'_120 v0 v2 v4 v5 v6
du_foldl'42'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T__'42'_30 -> AgdaAny
du_foldl'42'_120 v0 v1 v2 v3 v4
  = case coe v4 of
      C_'91''93'_46 -> coe v3
      C_'8761'__48 v5
        -> coe
             du_foldl'43'_118 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Concat._++++_
d__'43''43''43''43'__136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'43'_24 -> T__'43'_24
d__'43''43''43''43'__136 v0 ~v1 v2 v3
  = du__'43''43''43''43'__136 v0 v2 v3
du__'43''43''43''43'__136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> T__'43'_24 -> T__'43'_24
du__'43''43''43''43'__136 v0 v1 v2
  = coe
      du_foldr'43'_98 (coe v0) (coe v0)
      (coe
         (\ v3 v4 -> coe C__'38'__42 (coe v3) (coe C_'8761'__48 (coe v4))))
      (coe v2) (coe v1)
-- Data.List.Kleene.Base.Concat._+++*_
d__'43''43''43''42'__138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'42'_30 -> T__'43'_24
d__'43''43''43''42'__138 v0 ~v1 v2 v3
  = du__'43''43''43''42'__138 v0 v2 v3
du__'43''43''43''42'__138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> T__'42'_30 -> T__'43'_24
du__'43''43''43''42'__138 v0 v1 v2
  = coe
      C__'38'__42 (coe d_head_38 (coe v1))
      (coe
         du__'42''43''43''42'__142 (coe v0) (coe d_tail_40 (coe v1))
         (coe v2))
-- Data.List.Kleene.Base.Concat._*+++_
d__'42''43''43''43'__140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'43'_24 -> T__'43'_24
d__'42''43''43''43'__140 v0 ~v1 v2 v3
  = du__'42''43''43''43'__140 v0 v2 v3
du__'42''43''43''43'__140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> T__'43'_24 -> T__'43'_24
du__'42''43''43''43'__140 v0 v1 v2
  = case coe v1 of
      C_'91''93'_46 -> coe v2
      C_'8761'__48 v3
        -> coe du__'43''43''43''43'__136 (coe v0) (coe v3) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Concat._*++*_
d__'42''43''43''42'__142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'42'_30 -> T__'42'_30
d__'42''43''43''42'__142 v0 ~v1 v2 v3
  = du__'42''43''43''42'__142 v0 v2 v3
du__'42''43''43''42'__142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> T__'42'_30 -> T__'42'_30
du__'42''43''43''42'__142 v0 v1 v2
  = coe
      du_foldr'42'_100 (coe v0) (coe v0)
      (coe
         (\ v3 v4 -> coe C_'8761'__48 (coe C__'38'__42 (coe v3) (coe v4))))
      (coe v2) (coe v1)
-- Data.List.Kleene.Base._.map+
d_map'43'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> T__'43'_24 -> T__'43'_24
d_map'43'_184 v0 ~v1 v2 ~v3 v4 v5 = du_map'43'_184 v0 v2 v4 v5
du_map'43'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> T__'43'_24 -> T__'43'_24
du_map'43'_184 v0 v1 v2 v3
  = coe
      C__'38'__42 (coe v2 (d_head_38 (coe v3)))
      (coe
         du_map'42'_186 (coe v0) (coe v1) (coe v2) (coe d_tail_40 (coe v3)))
-- Data.List.Kleene.Base._.map*
d_map'42'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> T__'42'_30 -> T__'42'_30
d_map'42'_186 v0 ~v1 v2 ~v3 v4 v5 = du_map'42'_186 v0 v2 v4 v5
du_map'42'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> T__'42'_30 -> T__'42'_30
du_map'42'_186 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_46 -> coe v3
      C_'8761'__48 v4
        -> coe
             C_'8761'__48
             (coe du_map'43'_184 (coe v0) (coe v1) (coe v2) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.mapMaybe+
d_mapMaybe'43'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Maybe AgdaAny) -> T__'43'_24 -> T__'42'_30
d_mapMaybe'43'_204 v0 ~v1 v2 ~v3 v4 v5
  = du_mapMaybe'43'_204 v0 v2 v4 v5
du_mapMaybe'43'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Maybe AgdaAny) -> T__'43'_24 -> T__'42'_30
du_mapMaybe'43'_204 v0 v1 v2 v3
  = case coe v3 of
      C__'38'__42 v4 v5
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_44
             (\ v6 v7 -> coe C_'8761'__48 (coe C__'38'__42 (coe v6) (coe v7)))
             (\ v6 -> v6) (coe v2 v4)
             (coe du_mapMaybe'42'_206 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.mapMaybe*
d_mapMaybe'42'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Maybe AgdaAny) -> T__'42'_30 -> T__'42'_30
d_mapMaybe'42'_206 v0 ~v1 v2 ~v3 v4 v5
  = du_mapMaybe'42'_206 v0 v2 v4 v5
du_mapMaybe'42'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Maybe AgdaAny) -> T__'42'_30 -> T__'42'_30
du_mapMaybe'42'_206 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_46 -> coe v3
      C_'8761'__48 v4
        -> coe du_mapMaybe'43'_204 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.pure+
d_pure'43'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T__'43'_24
d_pure'43'_218 ~v0 ~v1 v2 = du_pure'43'_218 v2
du_pure'43'_218 :: AgdaAny -> T__'43'_24
du_pure'43'_218 v0 = coe C__'38'__42 (coe v0) (coe C_'91''93'_46)
-- Data.List.Kleene.Base.pure*
d_pure'42'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T__'42'_30
d_pure'42'_224 ~v0 ~v1 v2 = du_pure'42'_224 v2
du_pure'42'_224 :: AgdaAny -> T__'42'_30
du_pure'42'_224 v0
  = coe C_'8761'__48 (coe du_pure'43'_218 (coe v0))
-- Data.List.Kleene.Base.Apply._*<*>*_
d__'42''60''42''62''42'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'42'_30 -> T__'42'_30
d__'42''60''42''62''42'__230 v0 ~v1 v2 ~v3 v4 v5
  = du__'42''60''42''62''42'__230 v0 v2 v4 v5
du__'42''60''42''62''42'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> T__'42'_30 -> T__'42'_30
du__'42''60''42''62''42'__230 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_46 -> coe v2
      C_'8761'__48 v4
        -> coe
             du__'43''60''42''62''42'__232 (coe v0) (coe v1) (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Apply._+<*>*_
d__'43''60''42''62''42'__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'42'_30 -> T__'42'_30
d__'43''60''42''62''42'__232 v0 ~v1 v2 ~v3 v4 v5
  = du__'43''60''42''62''42'__232 v0 v2 v4 v5
du__'43''60''42''62''42'__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> T__'42'_30 -> T__'42'_30
du__'43''60''42''62''42'__232 v0 v1 v2 v3
  = coe
      du__'42''43''43''42'__142 (coe v1)
      (coe
         du_map'42'_186 (coe v0) (coe v1) (coe d_head_38 (coe v2)) (coe v3))
      (coe
         du__'42''60''42''62''42'__230 (coe v0) (coe v1)
         (coe d_tail_40 (coe v2)) (coe v3))
-- Data.List.Kleene.Base.Apply._*<*>+_
d__'42''60''42''62''43'__234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'43'_24 -> T__'42'_30
d__'42''60''42''62''43'__234 v0 ~v1 v2 ~v3 v4 v5
  = du__'42''60''42''62''43'__234 v0 v2 v4 v5
du__'42''60''42''62''43'__234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> T__'43'_24 -> T__'42'_30
du__'42''60''42''62''43'__234 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_46 -> coe v2
      C_'8761'__48 v4
        -> coe
             C_'8761'__48
             (coe
                du__'43''60''42''62''43'__236 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Apply._+<*>+_
d__'43''60''42''62''43'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'43'_24 -> T__'43'_24
d__'43''60''42''62''43'__236 v0 ~v1 v2 ~v3 v4 v5
  = du__'43''60''42''62''43'__236 v0 v2 v4 v5
du__'43''60''42''62''43'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> T__'43'_24 -> T__'43'_24
du__'43''60''42''62''43'__236 v0 v1 v2 v3
  = coe
      du__'43''43''43''42'__138 (coe v1)
      (coe
         du_map'43'_184 (coe v0) (coe v1) (coe d_head_38 (coe v2)) (coe v3))
      (coe
         du__'42''60''42''62''43'__234 (coe v0) (coe v1)
         (coe d_tail_40 (coe v2)) (coe v3))
-- Data.List.Kleene.Base.Bind._+>>=+_
d__'43''62''62''61''43'__260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> (AgdaAny -> T__'43'_24) -> T__'43'_24
d__'43''62''62''61''43'__260 v0 ~v1 v2 ~v3 v4 v5
  = du__'43''62''62''61''43'__260 v0 v2 v4 v5
du__'43''62''62''61''43'__260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> (AgdaAny -> T__'43'_24) -> T__'43'_24
du__'43''62''62''61''43'__260 v0 v1 v2 v3
  = case coe v2 of
      C__'38'__42 v4 v5
        -> coe
             du__'43''43''43''42'__138 (coe v1) (coe v3 v4)
             (coe
                du__'42''62''62''61''43'__264 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Bind._+>>=*_
d__'43''62''62''61''42'__262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> (AgdaAny -> T__'42'_30) -> T__'42'_30
d__'43''62''62''61''42'__262 v0 ~v1 v2 ~v3 v4 v5
  = du__'43''62''62''61''42'__262 v0 v2 v4 v5
du__'43''62''62''61''42'__262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> (AgdaAny -> T__'42'_30) -> T__'42'_30
du__'43''62''62''61''42'__262 v0 v1 v2 v3
  = case coe v2 of
      C__'38'__42 v4 v5
        -> coe
             du__'42''43''43''42'__142 (coe v1) (coe v3 v4)
             (coe
                du__'42''62''62''61''42'__266 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Bind._*>>=+_
d__'42''62''62''61''43'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> (AgdaAny -> T__'43'_24) -> T__'42'_30
d__'42''62''62''61''43'__264 v0 ~v1 v2 ~v3 v4 v5
  = du__'42''62''62''61''43'__264 v0 v2 v4 v5
du__'42''62''62''61''43'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> (AgdaAny -> T__'43'_24) -> T__'42'_30
du__'42''62''62''61''43'__264 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_46 -> coe v2
      C_'8761'__48 v4
        -> coe
             C_'8761'__48
             (coe
                du__'43''62''62''61''43'__260 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Bind._*>>=*_
d__'42''62''62''61''42'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> (AgdaAny -> T__'42'_30) -> T__'42'_30
d__'42''62''62''61''42'__266 v0 ~v1 v2 ~v3 v4 v5
  = du__'42''62''62''61''42'__266 v0 v2 v4 v5
du__'42''62''62''61''42'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> (AgdaAny -> T__'42'_30) -> T__'42'_30
du__'42''62''62''61''42'__266 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_46 -> coe v2
      C_'8761'__48 v4
        -> coe
             du__'43''62''62''61''42'__262 (coe v0) (coe v1) (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Scanr.cons
d_cons_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T__'43'_24 -> T__'43'_24
d_cons_302 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 = du_cons_302 v4 v6 v7
du_cons_302 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
du_cons_302 v0 v1 v2
  = coe
      C__'38'__42 (coe v0 v1 (d_head_38 (coe v2)))
      (coe C_'8761'__48 (coe v2))
-- Data.List.Kleene.Base.Scanr.scanr+
d_scanr'43'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
d_scanr'43'_312 v0 ~v1 v2 ~v3 v4 v5 = du_scanr'43'_312 v0 v2 v4 v5
du_scanr'43'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
du_scanr'43'_312 v0 v1 v2 v3
  = coe
      du_foldr'43'_98 (coe v0) (coe v1) (coe du_cons_302 (coe v2))
      (coe C__'38'__42 (coe v3) (coe C_'91''93'_46))
-- Data.List.Kleene.Base.Scanr.scanr*
d_scanr'42'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'42'_30 -> T__'43'_24
d_scanr'42'_314 v0 ~v1 v2 ~v3 v4 v5 = du_scanr'42'_314 v0 v2 v4 v5
du_scanr'42'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'42'_30 -> T__'43'_24
du_scanr'42'_314 v0 v1 v2 v3
  = coe
      du_foldr'42'_100 (coe v0) (coe v1) (coe du_cons_302 (coe v2))
      (coe C__'38'__42 (coe v3) (coe C_'91''93'_46))
-- Data.List.Kleene.Base._.scanl*
d_scanl'42'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'42'_30 -> T__'43'_24
d_scanl'42'_326 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_scanl'42'_326 v4 v5 v6
du_scanl'42'_326 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'42'_30 -> T__'43'_24
du_scanl'42'_326 v0 v1 v2
  = coe
      C__'38'__42 (coe v1)
      (case coe v2 of
         C_'91''93'_46 -> coe v2
         C_'8761'__48 v3
           -> coe
                C_'8761'__48
                (coe
                   du_scanl'42'_326 (coe v0) (coe v0 v1 (d_head_38 (coe v3)))
                   (coe d_tail_40 (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Kleene.Base._.scanl+
d_scanl'43'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
d_scanl'43'_338 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_scanl'43'_338 v4 v5 v6
du_scanl'43'_338 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
du_scanl'43'_338 v0 v1 v2
  = coe
      C__'38'__42 (coe v1)
      (coe
         C_'8761'__48
         (coe
            du_scanl'42'_326 (coe v0) (coe v0 v1 (d_head_38 (coe v2)))
            (coe d_tail_40 (coe v2))))
-- Data.List.Kleene.Base._.scanl₁
d_scanl'8321'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
d_scanl'8321'_348 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_scanl'8321'_348 v4 v5 v6
du_scanl'8321'_348 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T__'43'_24 -> T__'43'_24
du_scanl'8321'_348 v0 v1 v2
  = coe
      du_scanl'42'_326 (coe v0) (coe v0 v1 (d_head_38 (coe v2)))
      (coe d_tail_40 (coe v2))
-- Data.List.Kleene.Base._.mapAccumˡ*
d_mapAccum'737''42'_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapAccum'737''42'_366 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_mapAccum'737''42'_366 v0 v2 v4 v6 v7 v8
du_mapAccum'737''42'_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapAccum'737''42'_366 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C_'91''93'_46
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5)
      C_'8761'__48 v6
        -> coe
             MAlonzo.Code.Data.Product.Base.du_map'8322'_150
             (\ v7 -> coe C_'8761'__48)
             (coe
                du_mapAccum'737''43'_368 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v4) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.mapAccumˡ+
d_mapAccum'737''43'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapAccum'737''43'_368 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_mapAccum'737''43'_368 v0 v2 v4 v6 v7 v8
du_mapAccum'737''43'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapAccum'737''43'_368 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C__'38'__42 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                (coe
                   du_mapAccum'737''42'_366 (coe v0) (coe v1) (coe v2) (coe v3)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3 v4 v6))
                   (coe v7)))
             (coe
                C__'38'__42
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3 v4 v6))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      du_mapAccum'737''42'_366 (coe v0) (coe v1) (coe v2) (coe v3)
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3 v4 v6))
                      (coe v7))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.mapAccumʳ*
d_mapAccum'691''42'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapAccum'691''42'_404 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_mapAccum'691''42'_404 v0 v2 v4 v6 v7 v8
du_mapAccum'691''42'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapAccum'691''42'_404 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C_'91''93'_46
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
      C_'8761'__48 v6
        -> coe
             MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe C_'8761'__48)
             (coe
                du_mapAccum'691''43'_406 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v4) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.mapAccumʳ+
d_mapAccum'691''43'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapAccum'691''43'_406 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_mapAccum'691''43'_406 v0 v2 v4 v6 v7 v8
du_mapAccum'691''43'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapAccum'691''43'_406 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C__'38'__42 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                C__'38'__42
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      v3 v6
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            du_mapAccum'691''42'_404 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe v4) (coe v7)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      du_mapAccum'691''42'_404 (coe v0) (coe v1) (coe v2) (coe v3)
                      (coe v4) (coe v7))))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe
                   v3 v6
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                      (coe
                         du_mapAccum'691''42'_404 (coe v0) (coe v1) (coe v2) (coe v3)
                         (coe v4) (coe v7)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.last
d_last_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> AgdaAny
d_last_422 ~v0 ~v1 v2 = du_last_422 v2
du_last_422 :: T__'43'_24 -> AgdaAny
du_last_422 v0
  = case coe v0 of
      C__'38'__42 v1 v2
        -> case coe v2 of
             C_'91''93'_46 -> coe v1
             C_'8761'__48 v3 -> coe du_last_422 (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldr₁
d_foldr'8321'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
d_foldr'8321'_436 ~v0 ~v1 v2 v3 = du_foldr'8321'_436 v2 v3
du_foldr'8321'_436 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
du_foldr'8321'_436 v0 v1
  = case coe v1 of
      C__'38'__42 v2 v3
        -> case coe v3 of
             C_'91''93'_46 -> coe v2
             C_'8761'__48 v4
               -> coe v0 v2 (coe du_foldr'8321'_436 (coe v0) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldl₁
d_foldl'8321'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
d_foldl'8321'_444 v0 ~v1 v2 v3 = du_foldl'8321'_444 v0 v2 v3
du_foldl'8321'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
du_foldl'8321'_444 v0 v1 v2
  = case coe v2 of
      C__'38'__42 v3 v4
        -> coe
             du_foldl'42'_120 (coe v0) (coe v0) (coe v1) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldrMaybe*
d_foldrMaybe'42'_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Maybe AgdaAny -> AgdaAny) ->
  T__'42'_30 -> Maybe AgdaAny
d_foldrMaybe'42'_460 v0 ~v1 v2 ~v3 v4 v5
  = du_foldrMaybe'42'_460 v0 v2 v4 v5
du_foldrMaybe'42'_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Maybe AgdaAny -> AgdaAny) ->
  T__'42'_30 -> Maybe AgdaAny
du_foldrMaybe'42'_460 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_46 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_'8761'__48 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe du_foldrMaybe'43'_462 (coe v0) (coe v1) (coe v2) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._.foldrMaybe+
d_foldrMaybe'43'_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Maybe AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
d_foldrMaybe'43'_462 v0 ~v1 v2 ~v3 v4 v5
  = du_foldrMaybe'43'_462 v0 v2 v4 v5
du_foldrMaybe'43'_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Maybe AgdaAny -> AgdaAny) -> T__'43'_24 -> AgdaAny
du_foldrMaybe'43'_462 v0 v1 v2 v3
  = case coe v3 of
      C__'38'__42 v4 v5
        -> coe
             v2 v4
             (coe du_foldrMaybe'42'_460 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._[_]*
d__'91'_'93''42'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> Integer -> Maybe AgdaAny
d__'91'_'93''42'_470 v0 ~v1 v2 v3 = du__'91'_'93''42'_470 v0 v2 v3
du__'91'_'93''42'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'42'_30 -> Integer -> Maybe AgdaAny
du__'91'_'93''42'_470 v0 v1 v2
  = case coe v1 of
      C_'91''93'_46 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_'8761'__48 v3
        -> coe du__'91'_'93''43'_472 (coe v0) (coe v3) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base._[_]+
d__'91'_'93''43'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> Integer -> Maybe AgdaAny
d__'91'_'93''43'_472 v0 ~v1 v2 v3 = du__'91'_'93''43'_472 v0 v2 v3
du__'91'_'93''43'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T__'43'_24 -> Integer -> Maybe AgdaAny
du__'91'_'93''43'_472 v0 v1 v2
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe d_head_38 (coe v1))
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                du__'91'_'93''42'_470 (coe v0) (coe d_tail_40 (coe v1)) (coe v3))
-- Data.List.Kleene.Base.applyUpTo*
d_applyUpTo'42'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (Integer -> AgdaAny) -> Integer -> T__'42'_30
d_applyUpTo'42'_484 v0 ~v1 v2 v3 = du_applyUpTo'42'_484 v0 v2 v3
du_applyUpTo'42'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> AgdaAny) -> Integer -> T__'42'_30
du_applyUpTo'42'_484 v0 v1 v2
  = case coe v2 of
      0 -> coe C_'91''93'_46
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                C_'8761'__48 (coe du_applyUpTo'43'_486 (coe v0) (coe v1) (coe v3)))
-- Data.List.Kleene.Base.applyUpTo+
d_applyUpTo'43'_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (Integer -> AgdaAny) -> Integer -> T__'43'_24
d_applyUpTo'43'_486 v0 ~v1 v2 v3 = du_applyUpTo'43'_486 v0 v2 v3
du_applyUpTo'43'_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> AgdaAny) -> Integer -> T__'43'_24
du_applyUpTo'43'_486 v0 v1 v2
  = coe
      C__'38'__42 (coe v1 (0 :: Integer))
      (coe
         du_applyUpTo'42'_484 (coe v0)
         (coe (\ v3 -> coe v1 (addInt (coe (1 :: Integer)) (coe v3))))
         (coe v2))
-- Data.List.Kleene.Base.upTo*
d_upTo'42'_502 :: Integer -> T__'42'_30
d_upTo'42'_502
  = coe du_applyUpTo'42'_484 (coe ()) (coe (\ v0 -> v0))
-- Data.List.Kleene.Base.upTo+
d_upTo'43'_504 :: Integer -> T__'43'_24
d_upTo'43'_504
  = coe du_applyUpTo'43'_486 (coe ()) (coe (\ v0 -> v0))
-- Data.List.Kleene.Base.ZipWith.+zipWith+
d_'43'zipWith'43'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'43'_24 -> T__'43'_24 -> T__'43'_24
d_'43'zipWith'43'_516 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'43'zipWith'43'_516 v0 v2 v4 v6 v7 v8
du_'43'zipWith'43'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'43'_24 -> T__'43'_24 -> T__'43'_24
du_'43'zipWith'43'_516 v0 v1 v2 v3 v4 v5
  = coe
      C__'38'__42 (coe v3 (d_head_38 (coe v4)) (d_head_38 (coe v5)))
      (coe
         du_'42'zipWith'42'_522 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_tail_40 (coe v4)) (coe d_tail_40 (coe v5)))
-- Data.List.Kleene.Base.ZipWith.*zipWith+
d_'42'zipWith'43'_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'42'_30 -> T__'43'_24 -> T__'42'_30
d_'42'zipWith'43'_518 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'42'zipWith'43'_518 v0 v2 v4 v6 v7 v8
du_'42'zipWith'43'_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'42'_30 -> T__'43'_24 -> T__'42'_30
du_'42'zipWith'43'_518 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_'91''93'_46 -> coe v4
      C_'8761'__48 v6
        -> coe
             C_'8761'__48
             (coe
                du_'43'zipWith'43'_516 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.ZipWith.+zipWith*
d_'43'zipWith'42'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'43'_24 -> T__'42'_30 -> T__'42'_30
d_'43'zipWith'42'_520 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'43'zipWith'42'_520 v0 v2 v4 v6 v7 v8
du_'43'zipWith'42'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'43'_24 -> T__'42'_30 -> T__'42'_30
du_'43'zipWith'42'_520 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C_'91''93'_46 -> coe v5
      C_'8761'__48 v6
        -> coe
             C_'8761'__48
             (coe
                du_'43'zipWith'43'_516 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.ZipWith.*zipWith*
d_'42'zipWith'42'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'42'_30 -> T__'42'_30 -> T__'42'_30
d_'42'zipWith'42'_522 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'42'zipWith'42'_522 v0 v2 v4 v6 v7 v8
du_'42'zipWith'42'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T__'42'_30 -> T__'42'_30 -> T__'42'_30
du_'42'zipWith'42'_522 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_'91''93'_46 -> coe v4
      C_'8761'__48 v6
        -> coe
             du_'43'zipWith'42'_520 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)
             (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.Unzip.cons
d_cons_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cons_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_cons_560
du_cons_560 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cons_560
  = coe
      MAlonzo.Code.Data.Product.Base.du_zip'8242'_312 (coe C__'38'__42)
      (coe C__'38'__42)
-- Data.List.Kleene.Base.Unzip.unzipWith*
d_unzipWith'42'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith'42'_562 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_unzipWith'42'_562 v0 v6
du_unzipWith'42'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith'42'_562 v0 v1
  = coe
      du_foldr'42'_100 (coe v0) (coe ())
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128 (coe C_'8761'__48)
              (coe (\ v4 -> coe C_'8761'__48)) (coe du_cons_560 (coe v1 v2) v3)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_46)
         (coe C_'91''93'_46))
-- Data.List.Kleene.Base.Unzip.unzipWith+
d_unzipWith'43'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith'43'_564 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unzipWith'43'_564 v0 v6 v7
du_unzipWith'43'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith'43'_564 v0 v1 v2
  = coe
      du_cons_560 (coe v1 (d_head_38 (coe v2)))
      (coe du_unzipWith'42'_562 v0 v1 (d_tail_40 (coe v2)))
-- Data.List.Kleene.Base.Partition.cons
d_cons_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cons_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_cons_582 v7 v8
du_cons_582 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cons_582 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
           -> coe
                C_'8761'__48
                (coe
                   C__'38'__42 (coe v2)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
           -> coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
           -> coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
           -> coe
                C_'8761'__48
                (coe
                   C__'38'__42 (coe v2)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Kleene.Base.Partition.partitionSumsWith*
d_partitionSumsWith'42'_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSumsWith'42'_600 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_partitionSumsWith'42'_600 v0 v6
du_partitionSumsWith'42'_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  T__'42'_30 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSumsWith'42'_600 v0 v1
  = coe
      du_foldr'42'_100 (coe v0) (coe ())
      (coe (\ v2 -> coe du_cons_582 (coe v1 v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_46)
         (coe C_'91''93'_46))
-- Data.List.Kleene.Base.Partition.partitionSumsWith+
d_partitionSumsWith'43'_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSumsWith'43'_602 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_partitionSumsWith'43'_602 v0 v6
du_partitionSumsWith'43'_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  T__'43'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSumsWith'43'_602 v0 v1
  = coe
      du_foldr'43'_98 (coe v0) (coe ())
      (coe (\ v2 -> coe du_cons_582 (coe v1 v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_46)
         (coe C_'91''93'_46))
-- Data.List.Kleene.Base.tails*
d_tails'42'_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'42'_30
d_tails'42'_604 v0 ~v1 v2 = du_tails'42'_604 v0 v2
du_tails'42'_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'42'_30 -> T__'42'_30
du_tails'42'_604 v0 v1
  = case coe v1 of
      C_'91''93'_46 -> coe v1
      C_'8761'__48 v2
        -> coe C_'8761'__48 (coe du_tails'43'_606 (coe v0) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Kleene.Base.tails+
d_tails'43'_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'43'_24
d_tails'43'_606 v0 ~v1 v2 = du_tails'43'_606 v0 v2
du_tails'43'_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'43'_24 -> T__'43'_24
du_tails'43'_606 v0 v1
  = coe
      C__'38'__42 (coe v1)
      (coe du_tails'42'_604 (coe v0) (coe d_tail_40 (coe v1)))
-- Data.List.Kleene.Base.reverse*
d_reverse'42'_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'42'_30 -> T__'42'_30
d_reverse'42'_614 v0 ~v1 = du_reverse'42'_614 v0
du_reverse'42'_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'42'_30 -> T__'42'_30
du_reverse'42'_614 v0
  = coe
      du_foldl'42'_120 (coe v0) (coe v0)
      (coe
         (\ v1 v2 -> coe C_'8761'__48 (coe C__'38'__42 (coe v2) (coe v1))))
      (coe C_'91''93'_46)
-- Data.List.Kleene.Base.reverse+
d_reverse'43'_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'43'_24 -> T__'43'_24
d_reverse'43'_620 v0 ~v1 v2 = du_reverse'43'_620 v0 v2
du_reverse'43'_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T__'43'_24 -> T__'43'_24
du_reverse'43'_620 v0 v1
  = case coe v1 of
      C__'38'__42 v2 v3
        -> coe
             du_foldl'42'_120 (coe v0) (coe v0)
             (coe
                (\ v4 v5 -> coe C__'38'__42 (coe v5) (coe C_'8761'__48 (coe v4))))
             (coe C__'38'__42 (coe v2) (coe C_'91''93'_46)) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
