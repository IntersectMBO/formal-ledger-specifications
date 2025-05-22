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

module MAlonzo.Code.Ledger.Conway.TokenAlgebra.Coin where

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
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra
d_TokenAlgebra_14 a0 = ()
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__22 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__22 = erased
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_24 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_24 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_26 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_26 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.Value
d_Value_34 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_34 = erased
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_36 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.coin
d_coin_40 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_40 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_44 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_44 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_46 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_46 = erased
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.inject
d_inject_48 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_48 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.policies
d_policies_52 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_52 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin._.TokenAlgebra.size
d_size_56 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_56 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.TokenAlgebra.Coin.Coin-TokenAlgebra
d_Coin'45'TokenAlgebra_122 ::
  () -> MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_Coin'45'TokenAlgebra_122 ~v0 = du_Coin'45'TokenAlgebra_122
du_Coin'45'TokenAlgebra_122 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
du_Coin'45'TokenAlgebra_122 = coe du_'46'extendedlambda0_124
-- Ledger.Conway.TokenAlgebra.Coin..extendedlambda0
d_'46'extendedlambda0_124 ::
  () -> MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_'46'extendedlambda0_124 ~v0 = du_'46'extendedlambda0_124
du_'46'extendedlambda0_124 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
du_'46'extendedlambda0_124
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.C_TokenAlgebra'46'constructor_1735
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
                     MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                     (coe du_'46'extendedlambda0_124)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
