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

module MAlonzo.Code.Class.HasSingleton where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Class.HasSingleton._.Map
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_152 = erased
-- Class.HasSingleton.HasSingleton
d_HasSingleton_302 a0 a1 a2 = ()
newtype T_HasSingleton_302
  = C_HasSingleton'46'constructor_1127 (AgdaAny -> AgdaAny)
-- Class.HasSingleton.HasSingleton.❴_❵
d_'10100'_'10101'_310 :: T_HasSingleton_302 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_310 v0
  = case coe v0 of
      C_HasSingleton'46'constructor_1127 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasSingleton._.❴_❵
d_'10100'_'10101'_314 :: T_HasSingleton_302 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_314 v0 = coe d_'10100'_'10101'_310 (coe v0)
-- Class.HasSingleton.HasSingletonSet-Set
d_HasSingletonSet'45'Set_318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> T_HasSingleton_302
d_HasSingletonSet'45'Set_318 v0 ~v1
  = du_HasSingletonSet'45'Set_318 v0
du_HasSingletonSet'45'Set_318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> T_HasSingleton_302
du_HasSingletonSet'45'Set_318 v0
  = coe
      C_HasSingleton'46'constructor_1127
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased)
-- Class.HasSingleton.HasSingletonSet-Map
d_HasSingletonSet'45'Map_324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_HasSingleton_302
d_HasSingletonSet'45'Map_324 v0 ~v1 ~v2
  = du_HasSingletonSet'45'Map_324 v0
du_HasSingletonSet'45'Map_324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> T_HasSingleton_302
du_HasSingletonSet'45'Map_324 v0
  = coe
      C_HasSingleton'46'constructor_1127
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746 (coe v0))
