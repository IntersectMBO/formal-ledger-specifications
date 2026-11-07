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

module MAlonzo.Code.Class.Bifunctor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base

-- Class.Bifunctor.BifunctorI
d_BifunctorI_32 a0 a1 = ()
newtype T_BifunctorI_32
  = C_constructor_62 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      (AgdaAny -> ()) ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      (AgdaAny -> ()) ->
                      (AgdaAny -> AgdaAny) ->
                      (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.Bifunctor.BifunctorI.bimap′
d_bimap'8242'_46 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap'8242'_46 v0
  = case coe v0 of
      C_constructor_62 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Bifunctor.BifunctorI.map₁′
d_map'8321''8242'_48 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8242'_48 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 ~v8 v9
  = du_map'8321''8242'_48 v2 v3 v5 v7 v9
du_map'8321''8242'_48 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8242'_48 v0 v1 v2 v3 v4
  = coe
      d_bimap'8242'_46 v0 v1 erased v2 erased v3 erased v3 erased v4
      (\ v5 v6 -> v6)
-- Class.Bifunctor.BifunctorI._<$>₁′_
d__'60''36''62''8321''8242'__52 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8242'__52 ~v0 ~v1 v2
  = du__'60''36''62''8321''8242'__52 v2
du__'60''36''62''8321''8242'__52 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321''8242'__52 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du_map'8321''8242'_48 (coe v0) v1 v3 v5 v7
-- Class.Bifunctor.BifunctorI.map₂′
d_map'8322''8242'_56 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322''8242'_56 ~v0 ~v1 v2 v3 v4 ~v5 ~v6 v7 ~v8 v9
  = du_map'8322''8242'_56 v2 v3 v4 v7 v9
du_map'8322''8242'_56 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322''8242'_56 v0 v1 v2 v3 v4
  = coe
      d_bimap'8242'_46 v0 v1 erased v1 erased v2 erased v3 erased
      (\ v5 -> v5) v4
-- Class.Bifunctor.BifunctorI._<$>₂′_
d__'60''36''62''8322''8242'__60 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322''8242'__60 ~v0 ~v1 v2
  = du__'60''36''62''8322''8242'__60 v2
du__'60''36''62''8322''8242'__60 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322''8242'__60 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du_map'8322''8242'_56 (coe v0) v1 v2 v5 v7
-- Class.Bifunctor._._<$>₁′_
d__'60''36''62''8321''8242'__66 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8242'__66 ~v0 ~v1 v2
  = du__'60''36''62''8321''8242'__66 v2
du__'60''36''62''8321''8242'__66 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321''8242'__66 v0
  = coe du__'60''36''62''8321''8242'__52 (coe v0)
-- Class.Bifunctor._._<$>₂′_
d__'60''36''62''8322''8242'__68 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322''8242'__68 ~v0 ~v1 v2
  = du__'60''36''62''8322''8242'__68 v2
du__'60''36''62''8322''8242'__68 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322''8242'__68 v0
  = coe du__'60''36''62''8322''8242'__60 (coe v0)
-- Class.Bifunctor._.bimap′
d_bimap'8242'_70 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap'8242'_70 v0 = coe d_bimap'8242'_46 (coe v0)
-- Class.Bifunctor._.map₁′
d_map'8321''8242'_72 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8242'_72 ~v0 ~v1 v2 = du_map'8321''8242'_72 v2
du_map'8321''8242'_72 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8242'_72 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du_map'8321''8242'_48 (coe v0) v1 v3 v5 v7
-- Class.Bifunctor._.map₂′
d_map'8322''8242'_74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322''8242'_74 ~v0 ~v1 v2 = du_map'8322''8242'_74 v2
du_map'8322''8242'_74 ::
  T_BifunctorI_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322''8242'_74 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du_map'8322''8242'_56 (coe v0) v1 v2 v5 v7
-- Class.Bifunctor.Bifunctor-Σ
d_Bifunctor'45'Σ_76 :: T_BifunctorI_32
d_Bifunctor'45'Σ_76
  = coe
      C_constructor_62
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
            coe MAlonzo.Code.Data.Product.Base.du_map_128))
-- Class.Bifunctor.Bifunctor
d_Bifunctor_82 a0 a1 = ()
newtype T_Bifunctor_82
  = C_constructor_130 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () ->
                       () ->
                       () ->
                       () ->
                       (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Class.Bifunctor.Bifunctor.bimap
d_bimap_104 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap_104 v0
  = case coe v0 of
      C_constructor_130 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Bifunctor.Bifunctor.map₁
d_map'8321'_112 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321'_112 ~v0 ~v1 v2 v3 v4 ~v5 ~v6 ~v7 v8
  = du_map'8321'_112 v2 v3 v4 v8
du_map'8321'_112 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321'_112 v0 v1 v2 v3
  = coe
      d_bimap_104 v0 v1 v2 erased erased erased erased v3 (\ v4 -> v4)
-- Class.Bifunctor.Bifunctor._<$>₁_
d__'60''36''62''8321'__116 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321'__116 ~v0 ~v1 v2
  = du__'60''36''62''8321'__116 v2
du__'60''36''62''8321'__116 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321'__116 v0 v1 v2 v3 v4 v5 v6
  = coe du_map'8321'_112 (coe v0) v1 v2 v6
-- Class.Bifunctor.Bifunctor.map₂
d_map'8322'_124 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322'_124 ~v0 ~v1 v2 v3 v4 ~v5 ~v6 ~v7 v8
  = du_map'8322'_124 v2 v3 v4 v8
du_map'8322'_124 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322'_124 v0 v1 v2 v3
  = coe
      d_bimap_104 v0 v1 v2 erased erased erased erased (\ v4 -> v4) v3
-- Class.Bifunctor.Bifunctor._<$>₂_
d__'60''36''62''8322'__128 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322'__128 ~v0 ~v1 v2
  = du__'60''36''62''8322'__128 v2
du__'60''36''62''8322'__128 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322'__128 v0 v1 v2 v3 v4 v5 v6
  = coe du_map'8322'_124 (coe v0) v1 v2 v6
-- Class.Bifunctor._._<$>₁_
d__'60''36''62''8321'__134 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321'__134 ~v0 ~v1 v2
  = du__'60''36''62''8321'__134 v2
du__'60''36''62''8321'__134 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321'__134 v0
  = coe du__'60''36''62''8321'__116 (coe v0)
-- Class.Bifunctor._._<$>₂_
d__'60''36''62''8322'__136 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322'__136 ~v0 ~v1 v2
  = du__'60''36''62''8322'__136 v2
du__'60''36''62''8322'__136 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322'__136 v0
  = coe du__'60''36''62''8322'__128 (coe v0)
-- Class.Bifunctor._.bimap
d_bimap_138 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap_138 v0 = coe d_bimap_104 (coe v0)
-- Class.Bifunctor._.map₁
d_map'8321'_140 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321'_140 ~v0 ~v1 v2 = du_map'8321'_140 v2
du_map'8321'_140 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321'_140 v0 v1 v2 v3 v4 v5 v6
  = coe du_map'8321'_112 (coe v0) v1 v2 v6
-- Class.Bifunctor._.map₂
d_map'8322'_142 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322'_142 ~v0 ~v1 v2 = du_map'8322'_142 v2
du_map'8322'_142 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322'_142 v0 v1 v2 v3 v4 v5 v6
  = coe du_map'8322'_124 (coe v0) v1 v2 v6
-- Class.Bifunctor.map₁₂
d_map'8321''8322'_154 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8322'_154 v0 v1 ~v2 ~v3 v4
  = du_map'8321''8322'_154 v0 v1 v4
du_map'8321''8322'_154 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8322'_154 v0 v1 v2
  = coe d_bimap_104 v0 v1 v1 erased erased erased erased v2 v2
-- Class.Bifunctor._<$>₁₂_
d__'60''36''62''8321''8322'__158 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()) ->
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8322'__158 ~v0 ~v1 v2 v3 ~v4 ~v5 v6
  = du__'60''36''62''8321''8322'__158 v2 v3 v6
du__'60''36''62''8321''8322'__158 ::
  T_Bifunctor_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321''8322'__158 v0 v1 v2
  = coe d_bimap_104 v0 v1 v1 erased erased erased erased v2 v2
-- Class.Bifunctor.Bifunctor-×
d_Bifunctor'45''215'_160 :: T_Bifunctor_82
d_Bifunctor'45''215'_160
  = coe
      C_constructor_130
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128 (coe v6)
              (coe (\ v8 -> v7))))
-- Class.Bifunctor.Bifunctor-⊎
d_Bifunctor'45''8846'_166 :: T_Bifunctor_82
d_Bifunctor'45''8846'_166
  = coe
      C_constructor_130
      (coe
         (\ v0 v1 v2 v3 v4 v5 -> coe MAlonzo.Code.Data.Sum.Base.du_map_84))
