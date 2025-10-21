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

module MAlonzo.Code.Class.HasEmptySet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Class.HasEmptySet._.Map
d_Map_154 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_Map_154 = erased
-- Class.HasEmptySet.HasEmptySet
d_HasEmptySet_322 a0 a1 = ()
newtype T_HasEmptySet_322 = C_constructor_330 AgdaAny
-- Class.HasEmptySet.HasEmptySet.∅
d_'8709'_328 :: T_HasEmptySet_322 -> AgdaAny
d_'8709'_328 v0
  = case coe v0 of
      C_constructor_330 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasEmptySet._.∅
d_'8709'_334 :: T_HasEmptySet_322 -> AgdaAny
d_'8709'_334 v0 = coe d_'8709'_328 (coe v0)
-- Class.HasEmptySet.HasEmptySet-Set
d_HasEmptySet'45'Set_338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> T_HasEmptySet_322
d_HasEmptySet'45'Set_338 v0 ~v1 = du_HasEmptySet'45'Set_338 v0
du_HasEmptySet'45'Set_338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> T_HasEmptySet_322
du_HasEmptySet'45'Set_338 v0
  = coe
      C_constructor_330
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0))
-- Class.HasEmptySet.HasEmptySet-Map
d_HasEmptySet'45'Map_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> T_HasEmptySet_322
d_HasEmptySet'45'Map_344 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_344 v0
du_HasEmptySet'45'Map_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> T_HasEmptySet_322
du_HasEmptySet'45'Map_344 v0
  = coe
      C_constructor_330
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_588 (coe v0))
