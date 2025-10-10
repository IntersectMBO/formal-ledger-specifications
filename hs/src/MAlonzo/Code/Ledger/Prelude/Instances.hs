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

module MAlonzo.Code.Ledger.Prelude.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.CommutativeMonoid.Instances
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasSubset
import qualified MAlonzo.Code.Interface.HasSubtract
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Prelude.Instances.CommMonoid-ℕ-+
d_CommMonoid'45'ℕ'45''43'_6 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_CommMonoid'45'ℕ'45''43'_6
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Instances.d_CommMonoid'45'ℕ'45''43'_8
-- Ledger.Prelude.Instances.HasCoin-Map
d_HasCoin'45'Map_10 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_10 ~v0 v1 = du_HasCoin'45'Map_10 v1
du_HasCoin'45'Map_10 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_10 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
              (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
              (coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Prelude.Instances.HasCoin-Set
d_HasCoin'45'Set_18 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'Set_18 ~v0 v1 = du_HasCoin'45'Set_18 v1
du_HasCoin'45'Set_18 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'Set_18 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum''_1228
              (coe
                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 (coe v0)
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
              (coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
              (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
              (coe v1)))
-- Ledger.Prelude.Instances.HasSubset-Set
d_HasSubset'45'Set_30 ::
  () -> MAlonzo.Code.Interface.HasSubset.T_HasSubset_8
d_HasSubset'45'Set_30 = erased
-- Ledger.Prelude.Instances.HasSubtract-ℙ
d_HasSubtract'45'ℙ_34 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_HasSubtract'45'ℙ_34 ~v0 v1 = du_HasSubtract'45'ℙ_34 v1
du_HasSubtract'45'ℙ_34 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
du_HasSubtract'45'ℙ_34 v0
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_constructor_18
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__732
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0))
-- Ledger.Prelude.Instances.HasSubset-Map
d_HasSubset'45'Map_42 ::
  () -> () -> MAlonzo.Code.Interface.HasSubset.T_HasSubset_8
d_HasSubset'45'Map_42 = erased
