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

module MAlonzo.Code.Interface.HasEmptySet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Interface.HasEmptySet._.Map
d_Map_150 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_150 = erased
-- Interface.HasEmptySet.HasEmptySet
d_HasEmptySet_278 a0 a1 = ()
newtype T_HasEmptySet_278
  = C_HasEmptySet'46'constructor_971 AgdaAny
-- Interface.HasEmptySet.HasEmptySet.∅
d_'8709'_284 :: T_HasEmptySet_278 -> AgdaAny
d_'8709'_284 v0
  = case coe v0 of
      C_HasEmptySet'46'constructor_971 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasEmptySet.HasEmptySet-Set
d_HasEmptySet'45'Set_288 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_HasEmptySet_278
d_HasEmptySet'45'Set_288 v0 ~v1 = du_HasEmptySet'45'Set_288 v0
du_HasEmptySet'45'Set_288 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasEmptySet_278
du_HasEmptySet'45'Set_288 v0
  = coe
      C_HasEmptySet'46'constructor_971
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
-- Interface.HasEmptySet.HasEmptySet-Map
d_HasEmptySet'45'Map_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_HasEmptySet_278
d_HasEmptySet'45'Map_294 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_294 v0
du_HasEmptySet'45'Map_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasEmptySet_278
du_HasEmptySet'45'Map_294 v0
  = coe
      C_HasEmptySet'46'constructor_971
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_498 (coe v0))
-- Interface.HasEmptySet._.∅
d_'8709'_298 :: T_HasEmptySet_278 -> AgdaAny
d_'8709'_298 v0 = coe d_'8709'_284 (coe v0)
