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

module MAlonzo.Code.Relation.Binary.Morphism.OrderMonomorphism where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Morphism.OrderMonomorphism.EqM.dec
d_dec_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_dec_58 v12 v13
du_dec_58 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_58 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.isEquivalence
d_isEquivalence_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13
  = du_isEquivalence_60 v12 v13
du_isEquivalence_60 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_60 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.total
d_total_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_total_62 v12 v13
du_total_62 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_62 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.trans
d_trans_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_trans_64 v12 v13
du_trans_64 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_64 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.dec
d_dec_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_dec_68 v12 v13
du_dec_68 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_68 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.isEquivalence
d_isEquivalence_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13
  = du_isEquivalence_70 v12 v13
du_isEquivalence_70 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_70 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.total
d_total_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_total_72 v12 v13
du_total_72 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_72 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.trans
d_trans_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_74 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_trans_74 v12 v13
du_trans_74 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_74 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.reflexive
d_reflexive_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_76 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               v12 v13 v14 v15 v16 v17
  = du_reflexive_76 v12 v13 v14 v15 v16 v17
du_reflexive_76 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_76 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_212 v1 v3
      v4
      (coe
         v2 (coe v0 v3) (coe v0 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_160
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v3 v4 v5))
-- Relation.Binary.Morphism.OrderMonomorphism.irrefl
d_irrefl_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_82 = erased
-- Relation.Binary.Morphism.OrderMonomorphism.antisym
d_antisym_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
             v13 v14 v15 v16 v17 v18
  = du_antisym_90 v12 v13 v14 v15 v16 v17 v18
du_antisym_90 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_90 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_210 v1
      v3 v4
      (coe
         v2 (coe v0 v3) (coe v0 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v3 v4 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v4 v3 v6))
-- Relation.Binary.Morphism.OrderMonomorphism.compare
d_compare_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
             v13 v14 v15 v16
  = du_compare_98 v12 v13 v14 v15 v16
du_compare_98 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_compare_98 v0 v1 v2 v3 v4
  = let v5 = coe v2 (coe v0 v3) (coe v0 v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_212 v1 v3
                   v4 v6)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_210 v1
                   v3 v4 v7)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_212 v1 v4
                   v3 v8)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Binary.Morphism.OrderMonomorphism.respˡ
d_resp'737'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'737'_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                v12 v13 v14 v15 v16 v17 v18 v19
  = du_resp'737'_146 v12 v13 v14 v15 v16 v17 v18 v19
du_resp'737'_146 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'737'_146 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_212 v1 v5
      v3
      (coe
         v2 (coe v0 v3) (coe v0 v4) (coe v0 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_160
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v4 v5 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v4 v3 v7))
-- Relation.Binary.Morphism.OrderMonomorphism.respʳ
d_resp'691'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'691'_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                v12 v13 v14 v15 v16 v17 v18 v19
  = du_resp'691'_154 v12 v13 v14 v15 v16 v17 v18 v19
du_resp'691'_154 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'691'_154 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_212 v1 v3
      v5
      (coe
         v2 (coe v0 v3) (coe v0 v4) (coe v0 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_160
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v4 v5 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_162
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_208
               (coe v1))
            v3 v4 v7))
-- Relation.Binary.Morphism.OrderMonomorphism.resp
d_resp_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_resp_162 v12 v13
du_resp_162 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp_162 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_resp'691'_154 (coe v0) (coe v1))
      (coe (\ v2 -> coe du_resp'737'_146 (coe v0) (coe v1)))
-- Relation.Binary.Morphism.OrderMonomorphism.isPreorder
d_isPreorder_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_isPreorder_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 v12 v13 v14
  = du_isPreorder_164 v12 v13 v14
du_isPreorder_164 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_isPreorder_164 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v2)))
      (coe
         du_reflexive_76 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88 (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_90 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isPartialOrder
d_isPartialOrder_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_isPartialOrder_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 v13 v14
  = du_isPartialOrder_206 v12 v13 v14
du_isPartialOrder_206 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_isPartialOrder_206 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe
         du_isPreorder_164 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v2)))
      (coe
         du_antisym_90 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_258 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isTotalOrder
d_isTotalOrder_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_isTotalOrder_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13 v14
  = du_isTotalOrder_252 v12 v13 v14
du_isTotalOrder_252 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_isTotalOrder_252 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe
         du_isPartialOrder_206 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_498 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isDecTotalOrder
d_isDecTotalOrder_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_isDecTotalOrder_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12 v13 v14
  = du_isDecTotalOrder_304 v12 v13 v14
du_isDecTotalOrder_304 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
du_isDecTotalOrder_304 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe
         du_isTotalOrder_252 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
            (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isStrictPartialOrder
d_isStrictPartialOrder_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_isStrictPartialOrder_372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13 v14
  = du_isStrictPartialOrder_372 v12 v13 v14
du_isStrictPartialOrder_372 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
du_isStrictPartialOrder_372 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_224
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_226
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_386 (coe v2)))
      (coe
         du_resp_162 v0 v1
         (MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isStrictTotalOrder
d_isStrictTotalOrder_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_isStrictTotalOrder_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 v12 v13 v14
  = du_isStrictTotalOrder_408 v12 v13 v14
du_isStrictTotalOrder_408 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_190 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
du_isStrictTotalOrder_408 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe
         du_isStrictPartialOrder_372 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
            (coe v2)))
      (coe
         du_compare_98 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_634 (coe v2)))
