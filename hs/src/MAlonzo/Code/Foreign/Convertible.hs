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

module MAlonzo.Code.Foreign.Convertible where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Foreign.Convertible.Convertible
d_Convertible_8 a0 a1 = ()
data T_Convertible_8
  = C_constructor_22 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Foreign.Convertible.Convertible.to
d_to_18 :: T_Convertible_8 -> AgdaAny -> AgdaAny
d_to_18 v0
  = case coe v0 of
      C_constructor_22 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Convertible.from
d_from_20 :: T_Convertible_8 -> AgdaAny -> AgdaAny
d_from_20 v0
  = case coe v0 of
      C_constructor_22 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible._.from
d_from_26 :: T_Convertible_8 -> AgdaAny -> AgdaAny
d_from_26 v0 = coe d_from_20 (coe v0)
-- Foreign.Convertible._.to
d_to_28 :: T_Convertible_8 -> AgdaAny -> AgdaAny
d_to_28 v0 = coe d_to_18 (coe v0)
-- Foreign.Convertible.HsConvertible
d_HsConvertible_32 ::
  () -> MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 -> ()
d_HsConvertible_32 = erased
-- Foreign.Convertible.Convertible-Refl
d_Convertible'45'Refl_38 :: () -> T_Convertible_8
d_Convertible'45'Refl_38 ~v0 = du_Convertible'45'Refl_38
du_Convertible'45'Refl_38 :: T_Convertible_8
du_Convertible'45'Refl_38
  = coe C_constructor_22 (coe (\ v0 -> v0)) (coe (\ v0 -> v0))
-- Foreign.Convertible.Convertible₁
d_Convertible'8321'_42 :: (() -> ()) -> (() -> ()) -> ()
d_Convertible'8321'_42 = erased
-- Foreign.Convertible.Convertible₂
d_Convertible'8322'_52 ::
  (() -> () -> ()) -> (() -> () -> ()) -> ()
d_Convertible'8322'_52 = erased
-- Foreign.Convertible.Functor⇒Convertible
d_Functor'8658'Convertible_64 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  () -> () -> T_Convertible_8 -> T_Convertible_8
d_Functor'8658'Convertible_64 ~v0 v1 ~v2 ~v3 v4
  = du_Functor'8658'Convertible_64 v1 v4
du_Functor'8658'Convertible_64 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14 ->
  T_Convertible_8 -> T_Convertible_8
du_Functor'8658'Convertible_64 v0 v1
  = coe
      C_constructor_22
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 () erased () erased
         (d_to_18 (coe v1)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22 v0 () erased () erased
         (d_from_20 (coe v1)))
-- Foreign.Convertible.Bifunctor⇒Convertible
d_Bifunctor'8658'Convertible_70 ::
  (() -> () -> ()) ->
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82 ->
  () ->
  () ->
  T_Convertible_8 -> () -> () -> T_Convertible_8 -> T_Convertible_8
d_Bifunctor'8658'Convertible_70 ~v0 v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_Bifunctor'8658'Convertible_70 v1 v4 v7
du_Bifunctor'8658'Convertible_70 ::
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82 ->
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Bifunctor'8658'Convertible_70 v0 v1 v2
  = coe
      C_constructor_22
      (coe
         MAlonzo.Code.Class.Bifunctor.d_bimap_104 v0 erased erased erased
         erased (d_to_18 (coe v1)) (d_to_18 (coe v2)))
      (coe
         MAlonzo.Code.Class.Bifunctor.d_bimap_104 v0 erased erased erased
         erased (d_from_20 (coe v1)) (d_from_20 (coe v2)))
-- Foreign.Convertible._⨾_
d__'10814'__80 ::
  () ->
  () -> () -> T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
d__'10814'__80 ~v0 ~v1 ~v2 v3 v4 = du__'10814'__80 v3 v4
du__'10814'__80 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du__'10814'__80 v0 v1
  = coe
      C_constructor_22 (coe (\ v2 -> coe d_to_18 v1 (coe d_to_18 v0 v2)))
      (coe (\ v2 -> coe d_from_20 v0 (coe d_from_20 v1 v2)))
-- Foreign.Convertible.Convertible-Maybe
d_Convertible'45'Maybe_90 ::
  () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'Maybe_90 ~v0 ~v1 v2
  = du_Convertible'45'Maybe_90 v2
du_Convertible'45'Maybe_90 :: T_Convertible_8 -> T_Convertible_8
du_Convertible'45'Maybe_90 v0
  = coe
      du_Functor'8658'Convertible_64
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
      (coe v0)
-- Foreign.Convertible.Convertible-×
d_Convertible'45''215'_92 ::
  () ->
  () ->
  T_Convertible_8 -> () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45''215'_92 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45''215'_92 v2 v5
du_Convertible'45''215'_92 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45''215'_92 v0 v1
  = coe
      du_Bifunctor'8658'Convertible_70
      (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
      (coe v0) (coe v1)
-- Foreign.Convertible.Convertible-Pair
d_Convertible'45'Pair_94 ::
  () ->
  () ->
  T_Convertible_8 -> () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'Pair_94 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45'Pair_94 v2 v5
du_Convertible'45'Pair_94 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45'Pair_94 v0 v1
  = coe
      C_constructor_22
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_128 (coe d_to_18 (coe v0))
                 (coe (\ v3 -> d_to_18 (coe v1))) (coe v2))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128 (coe d_from_20 (coe v0))
              (coe (\ v3 -> d_from_20 (coe v1)))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2)))
-- Foreign.Convertible.Convertible-⊎
d_Convertible'45''8846'_98 ::
  () ->
  () ->
  T_Convertible_8 -> () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45''8846'_98 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45''8846'_98 v2 v5
du_Convertible'45''8846'_98 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45''8846'_98 v0 v1
  = coe
      du_Bifunctor'8658'Convertible_70
      (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''8846'_162)
      (coe v0) (coe v1)
-- Foreign.Convertible.Convertible-Either
d_Convertible'45'Either_100 ::
  () ->
  () ->
  T_Convertible_8 -> () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'Either_100 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45'Either_100 v2 v5
du_Convertible'45'Either_100 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45'Either_100 v0 v1
  = coe
      C_constructor_22
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_either'45'toFFI_96)
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_map_84 (d_to_18 (coe v0))
                 (d_to_18 (coe v1)) v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Sum.Base.du_map_84 (d_from_20 (coe v0))
              (d_from_20 (coe v1))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2)))
-- Foreign.Convertible.Convertible-FinSet
d_Convertible'45'FinSet_104 ::
  () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'FinSet_104 ~v0 ~v1 v2
  = du_Convertible'45'FinSet_104 v2
du_Convertible'45'FinSet_104 :: T_Convertible_8 -> T_Convertible_8
du_Convertible'45'FinSet_104 v0
  = coe
      C_constructor_22
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Class.Functor.Core.du_fmap_22
              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
              () erased (d_to_18 (coe v0)) v1))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                 () erased (d_from_20 (coe v0)) v1)))
-- Foreign.Convertible.Convertible-Map
d_Convertible'45'Map_116 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'Map_116 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_Convertible'45'Map_116 v4 v5 v6
du_Convertible'45'Map_116 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45'Map_116 v0 v1 v2
  = coe
      C_constructor_22
      (coe
         (\ v3 ->
            coe
              d_to_18
              (coe
                 du_Convertible'45'FinSet_104
                 (coe du_Convertible'45'Pair_94 (coe v1) (coe v2)))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_586
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v0)
              (coe
                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                 () erased
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Data.Product.Base.du_map_128 (coe d_from_20 (coe v1))
                      (coe (\ v5 -> d_from_20 (coe v2)))
                      (coe
                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                 v3)))
-- Foreign.Convertible.Convertible-List
d_Convertible'45'List_120 ::
  () -> () -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'List_120 ~v0 ~v1 v2
  = du_Convertible'45'List_120 v2
du_Convertible'45'List_120 :: T_Convertible_8 -> T_Convertible_8
du_Convertible'45'List_120 v0
  = coe
      C_constructor_22
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_to_18 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_from_20 (coe v0)))
-- Foreign.Convertible.Convertible-Fun
d_Convertible'45'Fun_132 ::
  () ->
  () ->
  () -> () -> T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
d_Convertible'45'Fun_132 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Convertible'45'Fun_132 v4 v5
du_Convertible'45'Fun_132 ::
  T_Convertible_8 -> T_Convertible_8 -> T_Convertible_8
du_Convertible'45'Fun_132 v0 v1
  = coe
      C_constructor_22
      (coe (\ v2 v3 -> coe d_to_18 v1 (coe v2 (coe d_from_20 v0 v3))))
      (coe (\ v2 v3 -> coe d_from_20 v1 (coe v2 (coe d_to_18 v0 v3))))
