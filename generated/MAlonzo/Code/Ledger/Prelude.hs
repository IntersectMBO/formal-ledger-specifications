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

module MAlonzo.Code.Ledger.Prelude where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Prelude._.HasSingleton
d_HasSingleton_6 a0 a1 = ()
-- Ledger.Prelude._.HasSingletonSet-Map
d_HasSingletonSet'45'Map_8 ::
  () -> () -> MAlonzo.Code.Interface.HasSingleton.T_HasSingleton_296
d_HasSingletonSet'45'Map_8 v0 v1
  = coe
      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude._.HasSingletonSet-Set
d_HasSingletonSet'45'Set_10 ::
  () -> MAlonzo.Code.Interface.HasSingleton.T_HasSingleton_296
d_HasSingletonSet'45'Set_10 v0
  = coe
      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude._.❴_❵
d_'10100'_'10101'_12 ::
  MAlonzo.Code.Interface.HasSingleton.T_HasSingleton_296 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_12 v0
  = coe
      MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304 (coe v0)
-- Ledger.Prelude._.HasSingleton.❴_❵
d_'10100'_'10101'_16 ::
  MAlonzo.Code.Interface.HasSingleton.T_HasSingleton_296 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_16 v0
  = coe
      MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304 (coe v0)
-- Ledger.Prelude._.HasEmptySet-Map
d_HasEmptySet'45'Map_20 ::
  () -> () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
d_HasEmptySet'45'Map_20 v0 v1
  = coe
      MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude._.HasEmptySet-Set
d_HasEmptySet'45'Set_22 ::
  () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
d_HasEmptySet'45'Set_22 v0
  = coe
      MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_296
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude.dec-de-morgan
d_dec'45'de'45'morgan_28 ::
  () ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_dec'45'de'45'morgan_28 ~v0 ~v1 v2 v3
  = du_dec'45'de'45'morgan_28 v2 v3
du_dec'45'de'45'morgan_28 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_dec'45'de'45'morgan_28 v0 v1
  = case coe v0 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v2
        -> case coe v2 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
               -> if coe v3
                    then case coe v4 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     (\ v6 ->
                                        coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                             (coe v6))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v4) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
