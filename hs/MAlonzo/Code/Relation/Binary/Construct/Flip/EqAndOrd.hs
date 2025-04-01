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

module MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Construct.Flip.EqAndOrd._.refl
d_refl_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_44 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_refl_44 v4 v5
du_refl_44 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_44 v0 v1 = coe v0 v1
-- Relation.Binary.Construct.Flip.EqAndOrd._.sym
d_sym_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_48 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_48 v4 v5 v6
du_sym_48 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_48 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Flip.EqAndOrd._.trans
d_trans_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_52 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_trans_52 v4 v5 v6 v7 v8 v9
du_trans_52 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_52 v0 v1 v2 v3 v4 v5 = coe v0 v3 v2 v1 v5 v4
-- Relation.Binary.Construct.Flip.EqAndOrd._.asym
d_asym_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_56 = erased
-- Relation.Binary.Construct.Flip.EqAndOrd._.total
d_total_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_60 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_total_60 v4 v5 v6
du_total_60 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_60 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Flip.EqAndOrd._.resp
d_resp_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_resp_72 v6 v7 v8 v9 v10
du_resp_72 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp_72 v0 v1 v2 v3 v4 = coe v1 v2 v3 (coe v0 v3 v2 v4)
-- Relation.Binary.Construct.Flip.EqAndOrd._.max
d_max_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_max_82 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_max_82 v5
du_max_82 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_max_82 v0 = coe v0
-- Relation.Binary.Construct.Flip.EqAndOrd._.min
d_min_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_min_88 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_min_88 v5
du_min_88 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_min_88 v0 = coe v0
-- Relation.Binary.Construct.Flip.EqAndOrd._.reflexive
d_reflexive_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_reflexive_106 v6 v7 v8 v9 v10
du_reflexive_106 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_106 v0 v1 v2 v3 v4 = coe v1 v3 v2 (coe v0 v2 v3 v4)
-- Relation.Binary.Construct.Flip.EqAndOrd._.irrefl
d_irrefl_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_112 = erased
-- Relation.Binary.Construct.Flip.EqAndOrd._.antisym
d_antisym_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_antisym_122 v6 v7 v8 v9 v10
du_antisym_122 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_122 v0 v1 v2 v3 v4 = coe v0 v1 v2 v4 v3
-- Relation.Binary.Construct.Flip.EqAndOrd._.compare
d_compare_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_compare_126 v6 v7 v8
du_compare_126 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_compare_126 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v4
           -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v4
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v5
           -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v5
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v6
           -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Binary.Construct.Flip.EqAndOrd._.resp₂
d_resp'8322'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp'8322'_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_resp'8322'_188 v6
du_resp'8322'_188 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp'8322'_188 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Flip.EqAndOrd._.dec
d_dec_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_dec_206 v6 v7 v8
du_dec_206 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_206 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Flip.EqAndOrd.isEquivalence
d_isEquivalence_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_210 ~v0 ~v1 ~v2 ~v3 v4 = du_isEquivalence_210 v4
du_isEquivalence_210 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (coe
         du_refl_44
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v0)))
      (coe
         du_sym_48
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v0)))
      (coe
         du_trans_52
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isDecEquivalence
d_isDecEquivalence_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_232 ~v0 ~v1 ~v2 ~v3 v4
  = du_isDecEquivalence_232 v4
du_isDecEquivalence_232 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_3083
      (coe
         du_isEquivalence_210
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v0)))
      (coe
         du_dec_206
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isPreorder
d_isPreorder_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isPreorder_258 v6
du_isPreorder_258 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_258 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v0))
      (coe
         du_reflexive_106
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v0)))
      (coe
         du_trans_52
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isTotalPreorder
d_isTotalPreorder_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_isTotalPreorder_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_304 v6
du_isTotalPreorder_304 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
du_isTotalPreorder_304 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8325
      (coe
         du_isPreorder_258
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132 (coe v0)))
      (coe
         du_total_60
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_134 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isPartialOrder
d_isPartialOrder_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialOrder_350 v6
du_isPartialOrder_350 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
du_isPartialOrder_350 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_11935
      (coe
         du_isPreorder_258
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244 (coe v0)))
      (coe
         du_antisym_122
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_246 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isTotalOrder
d_isTotalOrder_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_isTotalOrder_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalOrder_398 v6
du_isTotalOrder_398 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
du_isTotalOrder_398 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_22821
      (coe
         du_isPartialOrder_350
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
            (coe v0)))
      (coe
         du_total_60
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_478 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isDecTotalOrder
d_isDecTotalOrder_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_isDecTotalOrder_450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecTotalOrder_450 v6
du_isDecTotalOrder_450 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
du_isDecTotalOrder_450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
      (coe
         du_isTotalOrder_398
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__536 (coe v0))
      (coe
         du_dec_206
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__538
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isStrictPartialOrder
d_isStrictPartialOrder_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictPartialOrder_518 v6
du_isStrictPartialOrder_518 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
du_isStrictPartialOrder_518 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
         (coe v0))
      (coe
         du_trans_52
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_370 (coe v0)))
      (coe
         du_resp'8322'_188
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.isStrictTotalOrder
d_isStrictTotalOrder_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_isStrictTotalOrder_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictTotalOrder_556 v6
du_isStrictTotalOrder_556 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
du_isStrictTotalOrder_556 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_27253
      (coe
         du_isStrictPartialOrder_518
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
            (coe v0)))
      (coe
         du_compare_126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_610 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.setoid
d_setoid_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_612 ~v0 ~v1 v2 = du_setoid_612 v2
du_setoid_612 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_612 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (coe
         du_isEquivalence_210
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.decSetoid
d_decSetoid_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_decSetoid_644 ~v0 ~v1 v2 = du_decSetoid_644 v2
du_decSetoid_644 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
du_decSetoid_644 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1435
      (coe
         du_isDecEquivalence_232
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecEquivalence_102
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.preorder
d_preorder_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_preorder_682 ~v0 ~v1 ~v2 v3 = du_preorder_682 v3
du_preorder_682 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
du_preorder_682 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2331
      (coe
         du_isPreorder_258
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.totalPreorder
d_totalPreorder_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
d_totalPreorder_760 ~v0 ~v1 ~v2 v3 = du_totalPreorder_760 v3
du_totalPreorder_760 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
du_totalPreorder_760 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4405
      (coe
         du_isTotalPreorder_304
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.poset
d_poset_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_poset_844 ~v0 ~v1 ~v2 v3 = du_poset_844 v3
du_poset_844 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
du_poset_844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_9149
      (coe
         du_isPartialOrder_350
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.totalOrder
d_totalOrder_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_totalOrder_928 ~v0 ~v1 ~v2 v3 = du_totalOrder_928 v3
du_totalOrder_928 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
du_totalOrder_928 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      (coe
         du_isTotalOrder_398
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.decTotalOrder
d_decTotalOrder_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_decTotalOrder_1022 ~v0 ~v1 ~v2 v3 = du_decTotalOrder_1022 v3
du_decTotalOrder_1022 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
du_decTotalOrder_1022 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      (coe
         du_isDecTotalOrder_450
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1098
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.strictPartialOrder
d_strictPartialOrder_1134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_strictPartialOrder_1134 ~v0 ~v1 ~v2 v3
  = du_strictPartialOrder_1134 v3
du_strictPartialOrder_1134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
du_strictPartialOrder_1134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_14243
      (coe
         du_isStrictPartialOrder_518
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_766
            (coe v0)))
-- Relation.Binary.Construct.Flip.EqAndOrd.strictTotalOrder
d_strictTotalOrder_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
d_strictTotalOrder_1204 ~v0 ~v1 ~v2 v3
  = du_strictTotalOrder_1204 v3
du_strictTotalOrder_1204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
du_strictTotalOrder_1204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_24345
      (coe
         du_isStrictTotalOrder_556
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_1278
            (coe v0)))
