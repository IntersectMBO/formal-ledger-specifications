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

module MAlonzo.Code.Reflection.TCM.Utilities where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Reflection.AST.Traversal

-- Reflection.TCM.Utilities.blockOnMetas
d_blockOnMetas_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_blockOnMetas_6 v0
  = let v1
          = coe
              MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
              (coe du_applicative_18) (coe du_actions_72)
              (coe
                 MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54
                 (coe (0 :: Integer))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe v0) in
    coe
      (case coe v1 of
         []
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (:) v2 v3
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_blockTC_414 () erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_blockerAll_104
                   (coe
                      MAlonzo.Code.Data.List.Base.du_map_22
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_blockerMeta_106)
                      (coe v1)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Reflection.TCM.Utilities._.applicative
d_applicative_18 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_applicative_18 ~v0 ~v1 = du_applicative_18
du_applicative_18 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
du_applicative_18
  = coe
      MAlonzo.Code.Effect.Applicative.du_mkRawApplicative_94
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.List.Base.du__'43''43'__32))
-- Reflection.TCM.Utilities._._.Actions
d_Actions_30 a0 = ()
-- Reflection.TCM.Utilities._._.Cxt
d_Cxt_32 a0 = ()
-- Reflection.TCM.Utilities._._.Actions.onCon
d_onCon_58 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> [AgdaAny]
d_onCon_58 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.TCM.Utilities._._.Actions.onDef
d_onDef_60 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> [AgdaAny]
d_onDef_60 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.TCM.Utilities._._.Actions.onMeta
d_onMeta_62 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> [AgdaAny]
d_onMeta_62 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.TCM.Utilities._._.Actions.onVar
d_onVar_64 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> [AgdaAny]
d_onVar_64 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.TCM.Utilities._._.Cxt.context
d_context_68 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_68 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.TCM.Utilities._._.Cxt.len
d_len_70 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_70 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.TCM.Utilities._.actions
d_actions_72 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_72 ~v0 = du_actions_72
du_actions_72 :: MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
du_actions_72
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_Actions'46'constructor_1115
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 (coe du_applicative_18)
              erased))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 (coe du_applicative_18)
              erased))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 (coe du_applicative_18)
              erased))
