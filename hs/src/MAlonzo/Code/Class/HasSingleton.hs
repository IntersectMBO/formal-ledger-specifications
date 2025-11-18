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
d_Map_156 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Map_156 = erased
-- Class.HasSingleton.HasSingleton
d_HasSingleton_328 a0 a1 a2 = ()
newtype T_HasSingleton_328 = C_constructor_338 (AgdaAny -> AgdaAny)
-- Class.HasSingleton.HasSingleton.❴_❵
d_'10100'_'10101'_336 :: T_HasSingleton_328 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_336 v0
  = case coe v0 of
      C_constructor_338 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasSingleton._.❴_❵
d_'10100'_'10101'_342 :: T_HasSingleton_328 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_342 v0 = coe d_'10100'_'10101'_336 (coe v0)
-- Class.HasSingleton.HasSingletonSet-Set
d_HasSingletonSet'45'Set_346 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> T_HasSingleton_328
d_HasSingletonSet'45'Set_346 v0 ~v1
  = du_HasSingletonSet'45'Set_346 v0
du_HasSingletonSet'45'Set_346 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> T_HasSingleton_328
du_HasSingletonSet'45'Set_346 v0
  = coe
      C_constructor_338
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased)
-- Class.HasSingleton.HasSingletonSet-Map
d_HasSingletonSet'45'Map_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_HasSingleton_328
d_HasSingletonSet'45'Map_352 v0 ~v1 ~v2
  = du_HasSingletonSet'45'Map_352 v0
du_HasSingletonSet'45'Map_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> T_HasSingleton_328
du_HasSingletonSet'45'Map_352 v0
  = coe
      C_constructor_338
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844 (coe v0))
