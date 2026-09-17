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

module MAlonzo.Code.Class.CommutativeMonoid.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Data.Nat.Properties

-- Class.CommutativeMonoid.Instances.NonUniqueInstances.CommMonoid-ℕ-+
d_CommMonoid'45'ℕ'45''43'_8 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_CommMonoid'45'ℕ'45''43'_8
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476)
-- Class.CommutativeMonoid.Instances.NonUniqueInstances.CommMonoid-ℕ-*
d_CommMonoid'45'ℕ'45''42'_10 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_CommMonoid'45'ℕ'45''42'_10
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'42''45'1'45'commutativeMonoid_3884)
