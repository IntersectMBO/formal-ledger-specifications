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

-- Relation.Binary.Morphism.OrderMonomorphism.EqM.asym
d_asym_58 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_58 = erased
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.dec
d_dec_60 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_dec_60 v12 v13
du_dec_60 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_60 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.isDecEquivalence
d_isDecEquivalence_62 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12 v13
  = du_isDecEquivalence_62 v12 v13
du_isDecEquivalence_62 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_62 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isDecEquivalence_98
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.isEquivalence
d_isEquivalence_64 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13
  = du_isEquivalence_64 v12 v13
du_isEquivalence_64 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_64 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.refl
d_refl_66 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_refl_66 v12 v13
du_refl_66 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_66 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_refl_36
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.sym
d_sym_68 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_sym_68 v12 v13
du_sym_68 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_68 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_sym_40
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.total
d_total_70 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_total_70 v12 v13
du_total_70 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_70 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.EqM.trans
d_trans_72 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_trans_72 v12 v13
du_trans_72 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_72 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.asym
d_asym_76 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_76 = erased
-- Relation.Binary.Morphism.OrderMonomorphism._.dec
d_dec_78 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_dec_78 v12 v13
du_dec_78 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_78 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.isDecEquivalence
d_isDecEquivalence_80 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_80 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12 v13
  = du_isDecEquivalence_80 v12 v13
du_isDecEquivalence_80 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_80 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isDecEquivalence_98
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.isEquivalence
d_isEquivalence_82 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13
  = du_isEquivalence_82 v12 v13
du_isEquivalence_82 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_82 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.refl
d_refl_84 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_refl_84 v12 v13
du_refl_84 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_84 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_refl_36
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.sym
d_sym_86 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_sym_86 v12 v13
du_sym_86 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_86 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_sym_40
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.total
d_total_88 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_total_88 v12 v13
du_total_88 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_88 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism._.trans
d_trans_90 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_trans_90 v12 v13
du_trans_90 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_90 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe v1))
-- Relation.Binary.Morphism.OrderMonomorphism.reflexive
d_reflexive_92 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               v12 v13 v14 v15 v16 v17
  = du_reflexive_92 v12 v13 v14 v15 v16 v17
du_reflexive_92 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_92 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_204 v1 v3
      v4
      (coe
         v2 (coe v0 v3) (coe v0 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_154
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v3 v4 v5))
-- Relation.Binary.Morphism.OrderMonomorphism.irrefl
d_irrefl_98 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_98 = erased
-- Relation.Binary.Morphism.OrderMonomorphism.antisym
d_antisym_106 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
              v13 v14 v15 v16 v17 v18
  = du_antisym_106 v12 v13 v14 v15 v16 v17 v18
du_antisym_106 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_106 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_202 v1
      v3 v4
      (coe
         v2 (coe v0 v3) (coe v0 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_156
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v3 v4 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_156
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v4 v3 v6))
-- Relation.Binary.Morphism.OrderMonomorphism.compare
d_compare_114 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
              v13 v14 v15 v16
  = du_compare_114 v12 v13 v14 v15 v16
du_compare_114 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_compare_114 v0 v1 v2 v3 v4
  = let v5 = coe v2 (coe v0 v3) (coe v0 v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_204 v1 v3
                   v4 v6)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_injective_202 v1
                   v3 v4 v7)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                (coe
                   MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_204 v1 v4
                   v3 v8)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Binary.Morphism.OrderMonomorphism.respˡ
d_resp'737'_162 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'737'_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                v12 v13 v14 v15 v16 v17 v18 v19
  = du_resp'737'_162 v12 v13 v14 v15 v16 v17 v18 v19
du_resp'737'_162 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'737'_162 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_204 v1 v5
      v3
      (coe
         v2 (coe v0 v3) (coe v0 v4) (coe v0 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_154
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v4 v5 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_156
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v4 v3 v7))
-- Relation.Binary.Morphism.OrderMonomorphism.respʳ
d_resp'691'_170 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'691'_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                v12 v13 v14 v15 v16 v17 v18 v19
  = du_resp'691'_170 v12 v13 v14 v15 v16 v17 v18 v19
du_resp'691'_170 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'691'_170 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cancel_204 v1 v3
      v5
      (coe
         v2 (coe v0 v3) (coe v0 v4) (coe v0 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_154
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v4 v5 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.d_mono_156
            (MAlonzo.Code.Relation.Binary.Morphism.Structures.d_isOrderHomomorphism_200
               (coe v1))
            v3 v4 v7))
-- Relation.Binary.Morphism.OrderMonomorphism.resp
d_resp_178 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
           v13
  = du_resp_178 v12 v13
du_resp_178 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp_178 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_resp'691'_170 (coe v0) (coe v1))
      (coe (\ v2 -> coe du_resp'737'_162 (coe v0) (coe v1)))
-- Relation.Binary.Morphism.OrderMonomorphism.isPreorder
d_isPreorder_180 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 v12 v13 v14
  = du_isPreorder_180 v12 v13 v14
du_isPreorder_180 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_180 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe v2)))
      (coe
         du_reflexive_92 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isPartialOrder
d_isPartialOrder_222 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_isPartialOrder_222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 v13 v14
  = du_isPartialOrder_222 v12 v13 v14
du_isPartialOrder_222 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_isPartialOrder_222 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe
         du_isPreorder_180 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182 (coe v2)))
      (coe
         du_antisym_106 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_184 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isTotalOrder
d_isTotalOrder_268 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_isTotalOrder_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 v12 v13 v14
  = du_isTotalOrder_268 v12 v13 v14
du_isTotalOrder_268 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
du_isTotalOrder_268 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20555
      (coe
         du_isPartialOrder_222 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_412
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_total_54
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_414 (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isDecTotalOrder
d_isDecTotalOrder_320 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_isDecTotalOrder_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12 v13 v14
  = du_isDecTotalOrder_320 v12 v13 v14
du_isDecTotalOrder_320 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
du_isDecTotalOrder_320 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22695
      (coe
         du_isTotalOrder_268 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_470
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__472 (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_dec_70
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
            (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isStrictPartialOrder
d_isStrictPartialOrder_386 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_isStrictPartialOrder_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13 v14
  = du_isStrictPartialOrder_386 v12 v13 v14
du_isStrictPartialOrder_386 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
du_isStrictPartialOrder_386 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14045
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_isEquivalence_78
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_216
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_302
            (coe v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
            (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_306 (coe v2)))
      (coe
         du_resp_178 v0 v1
         (MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_308
            (coe v2)))
-- Relation.Binary.Morphism.OrderMonomorphism.isStrictTotalOrder
d_isStrictTotalOrder_422 ::
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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_isStrictTotalOrder_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 v12 v13 v14
  = du_isStrictTotalOrder_422 v12 v13 v14
du_isStrictTotalOrder_422 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
du_isStrictTotalOrder_422 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24953
      (coe
         du_isStrictPartialOrder_386 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
            (coe v2)))
      (coe
         du_compare_114 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_544 (coe v2)))
