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

module MAlonzo.Code.Class.Convertible.Foreign where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce

-- Class.Convertible.Foreign.Convertible-Pair
d_Convertible'45'Pair_6 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'Pair_6 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45'Pair_6 v2 v5
du_Convertible'45'Pair_6 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45'Pair_6 v0 v1
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe MAlonzo.Code.Class.Convertible.Core.d_to_20 (coe v0))
                 (coe
                    (\ v3 -> MAlonzo.Code.Class.Convertible.Core.d_to_20 (coe v1)))
                 (coe v2))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe MAlonzo.Code.Class.Convertible.Core.d_from_22 (coe v0))
              (coe
                 (\ v3 -> MAlonzo.Code.Class.Convertible.Core.d_from_22 (coe v1)))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2)))
-- Class.Convertible.Foreign.Convertible-Either
d_Convertible'45'Either_10 ::
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convertible'45'Either_10 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_Convertible'45'Either_10 v2 v5
du_Convertible'45'Either_10 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convertible'45'Either_10 v0 v1
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_either'45'toFFI_96)
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_map_84
                 (MAlonzo.Code.Class.Convertible.Core.d_to_20 (coe v0))
                 (MAlonzo.Code.Class.Convertible.Core.d_to_20 (coe v1)) v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Sum.Base.du_map_84
              (MAlonzo.Code.Class.Convertible.Core.d_from_22 (coe v0))
              (MAlonzo.Code.Class.Convertible.Core.d_from_22 (coe v1))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2)))
