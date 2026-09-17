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

module MAlonzo.Code.Data.Nat.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.Nat.Instances.ℕ-≡-isDecEquivalence
d_ℕ'45''8801''45'isDecEquivalence_6 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_ℕ'45''8801''45'isDecEquivalence_6
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isDecEquivalence_398
      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)
-- Data.Nat.Instances.ℕ-≤-isDecTotalOrder
d_ℕ'45''8804''45'isDecTotalOrder_8 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_ℕ'45''8804''45'isDecTotalOrder_8
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isDecTotalOrder_2958
