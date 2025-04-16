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

module MAlonzo.Code.Ledger.TokenAlgebra.Coin where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Morphism.Construct.Identity
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.TokenAlgebra.Coin._.TokenAlgebra
d_TokenAlgebra_12 a0 = ()
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_20 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_20 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_204 (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.Value
d_Value_28 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_28 = erased
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_30 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_30 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_110
      (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.coin
d_coin_34 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_34 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_192 (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_38 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_38 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_202
      (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_40 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_40 = erased
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.inject
d_inject_42 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_42 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_194 (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.policies
d_policies_46 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_46 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_196 (coe v0)
-- Ledger.TokenAlgebra.Coin._.TokenAlgebra.size
d_size_50 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_50 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_198 (coe v0)
-- Ledger.TokenAlgebra.Coin.Coin-TokenAlgebra
d_Coin'45'TokenAlgebra_116 ::
  () -> MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_Coin'45'TokenAlgebra_116 ~v0 = du_Coin'45'TokenAlgebra_116
du_Coin'45'TokenAlgebra_116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_Coin'45'TokenAlgebra_116 = coe du_'46'extendedlambda0_118
-- Ledger.TokenAlgebra.Coin..extendedlambda0
d_'46'extendedlambda0_118 ::
  () -> MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda0_118 ~v0 = du_'46'extendedlambda0_118
du_'46'extendedlambda0_118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_'46'extendedlambda0_118
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_1259
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_442
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1470
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (\ v0 -> 1 :: Integer)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_198
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_110
                     (coe du_'46'extendedlambda0_118)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
