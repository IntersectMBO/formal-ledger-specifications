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
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_152 = erased
-- Class.HasEmptySet.HasEmptySet
d_HasEmptySet_300 a0 a1 = ()
newtype T_HasEmptySet_300
  = C_HasEmptySet'46'constructor_1119 AgdaAny
-- Class.HasEmptySet.HasEmptySet.∅
d_'8709'_306 :: T_HasEmptySet_300 -> AgdaAny
d_'8709'_306 v0
  = case coe v0 of
      C_HasEmptySet'46'constructor_1119 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasEmptySet._.∅
d_'8709'_310 :: T_HasEmptySet_300 -> AgdaAny
d_'8709'_310 v0 = coe d_'8709'_306 (coe v0)
-- Class.HasEmptySet.HasEmptySet-Set
d_HasEmptySet'45'Set_314 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> T_HasEmptySet_300
d_HasEmptySet'45'Set_314 v0 ~v1 = du_HasEmptySet'45'Set_314 v0
du_HasEmptySet'45'Set_314 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> T_HasEmptySet_300
du_HasEmptySet'45'Set_314 v0
  = coe
      C_HasEmptySet'46'constructor_1119
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
-- Class.HasEmptySet.HasEmptySet-Map
d_HasEmptySet'45'Map_320 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> T_HasEmptySet_300
d_HasEmptySet'45'Map_320 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_320 v0
du_HasEmptySet'45'Map_320 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> T_HasEmptySet_300
du_HasEmptySet'45'Map_320 v0
  = coe
      C_HasEmptySet'46'constructor_1119
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578 (coe v0))
