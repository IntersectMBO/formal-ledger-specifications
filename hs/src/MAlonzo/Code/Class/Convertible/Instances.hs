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

module MAlonzo.Code.Class.Convertible.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core

-- Class.Convertible.Instances.HsConvertible
d_HsConvertible_8 ::
  () -> MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 -> ()
d_HsConvertible_8 = erased
-- Class.Convertible.Instances.Convertible-ℕ
d_Convertible'45'ℕ_12 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'ℕ_12
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0))
-- Class.Convertible.Instances.Convertible-Maybe
d_Convertible'45'Maybe_16 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'Maybe_16 ~v0 ~v1 v2
  = du_Convertible'45'Maybe_16 v2
du_Convertible'45'Maybe_16 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45'Maybe_16 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
      (coe v0)
-- Class.Convertible.Instances.Convertible-×
d_Convertible'45''215'_18 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45''215'_18 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45''215'_18 v2 v5
du_Convertible'45''215'_18 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45''215'_18 v0 v1
  = coe
      MAlonzo.Code.Class.Convertible.Core.du_Bifunctor'8658'Convertible_66
      (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
      (coe v0) (coe v1)
-- Class.Convertible.Instances.Convertible-⊎
d_Convertible'45''8846'_20 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45''8846'_20 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45''8846'_20 v2 v5
du_Convertible'45''8846'_20 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45''8846'_20 v0 v1
  = coe
      MAlonzo.Code.Class.Convertible.Core.du_Bifunctor'8658'Convertible_66
      (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''8846'_162)
      (coe v0) (coe v1)
-- Class.Convertible.Instances.Convertible-List
d_Convertible'45'List_22 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'List_22 ~v0 ~v1 v2 = du_Convertible'45'List_22 v2
du_Convertible'45'List_22 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45'List_22 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (MAlonzo.Code.Class.Convertible.Core.d_to_20 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (MAlonzo.Code.Class.Convertible.Core.d_from_22 (coe v0)))
-- Class.Convertible.Instances.Convertible-Fun
d_Convertible'45'Fun_34 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'Fun_34 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Convertible'45'Fun_34 v4 v5
du_Convertible'45'Fun_34 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45'Fun_34 v0 v1
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Class.Convertible.Core.d_to_20 v1
              (coe
                 v2 (coe MAlonzo.Code.Class.Convertible.Core.d_from_22 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Class.Convertible.Core.d_from_22 v1
              (coe v2 (coe MAlonzo.Code.Class.Convertible.Core.d_to_20 v0 v3))))
