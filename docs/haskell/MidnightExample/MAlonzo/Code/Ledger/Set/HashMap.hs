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

module MAlonzo.Code.Ledger.Set.HashMap where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Data.Product.Ext
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Set.Theory

-- Ledger.Set.HashMap.setToHashRel
d_setToHashRel_14 ::
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_setToHashRel_14 ~v0 ~v1 v2 v3 = du_setToHashRel_14 v2 v3
du_setToHashRel_14 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_setToHashRel_14 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_368
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.Hashable.d_hash_18 (coe v0))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Data.Product.Ext.du_'215''45'dup_10) v1)
-- Ledger.Set.HashMap.setToHashMap
d_setToHashMap_16 ::
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_setToHashMap_16 ~v0 ~v1 v2 v3 = du_setToHashMap_16 v2 v3
du_setToHashMap_16 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_setToHashMap_16 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'7504'_472
      (coe du_setToHashRel_14 (coe v0) (coe v1))
