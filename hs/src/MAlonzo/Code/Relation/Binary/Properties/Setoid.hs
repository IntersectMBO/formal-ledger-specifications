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

module MAlonzo.Code.Relation.Binary.Properties.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Composition
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Properties.Setoid._._≉_
d__'8777'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__18 = erased
-- Relation.Binary.Properties.Setoid.isPreorder
d_isPreorder_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_isPreorder_42 ~v0 ~v1 v2 = du_isPreorder_42 v2
du_isPreorder_42 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_isPreorder_42 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_constructor_46 erased
         erased erased)
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
           v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Relation.Binary.Properties.Setoid.≈-isPreorder
d_'8776''45'isPreorder_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8776''45'isPreorder_44 ~v0 ~v1 v2
  = du_'8776''45'isPreorder_44 v2
du_'8776''45'isPreorder_44 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8776''45'isPreorder_44 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
      (coe (\ v1 v2 v3 -> v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Relation.Binary.Properties.Setoid.≈-isPartialOrder
d_'8776''45'isPartialOrder_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8776''45'isPartialOrder_46 ~v0 ~v1 v2
  = du_'8776''45'isPartialOrder_46 v2
du_'8776''45'isPartialOrder_46 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8776''45'isPartialOrder_46 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe du_'8776''45'isPreorder_44 (coe v0))
      (coe (\ v1 v2 v3 v4 -> v3))
-- Relation.Binary.Properties.Setoid.preorder
d_preorder_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_preorder_52 ~v0 ~v1 v2 = du_preorder_52 v2
du_preorder_52 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_preorder_52 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_isPreorder_42 (coe v0))
-- Relation.Binary.Properties.Setoid.≈-preorder
d_'8776''45'preorder_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8776''45'preorder_54 ~v0 ~v1 v2 = du_'8776''45'preorder_54 v2
du_'8776''45'preorder_54 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8776''45'preorder_54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8776''45'isPreorder_44 (coe v0))
-- Relation.Binary.Properties.Setoid.≈-poset
d_'8776''45'poset_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8776''45'poset_56 ~v0 ~v1 v2 = du_'8776''45'poset_56 v2
du_'8776''45'poset_56 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_'8776''45'poset_56 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      (coe du_'8776''45'isPartialOrder_46 (coe v0))
-- Relation.Binary.Properties.Setoid.≉-sym
d_'8777''45'sym_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8777''45'sym_58 = erased
-- Relation.Binary.Properties.Setoid.≉-respˡ
d_'8777''45'resp'737'_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8777''45'resp'737'_62 = erased
-- Relation.Binary.Properties.Setoid.≉-respʳ
d_'8777''45'resp'691'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8777''45'resp'691'_68 = erased
-- Relation.Binary.Properties.Setoid.≉-resp₂
d_'8777''45'resp'8322'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8777''45'resp'8322'_76 ~v0 ~v1 ~v2 = du_'8777''45'resp'8322'_76
du_'8777''45'resp'8322'_76 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8777''45'resp'8322'_76
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Relation.Binary.Properties.Setoid.≉-irrefl
d_'8777''45'irrefl_78 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8777''45'irrefl_78 = erased
-- Relation.Binary.Properties.Setoid.¬[x≉x]
d_'172''91'x'8777'x'93'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'172''91'x'8777'x'93'_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'172''91'x'8777'x'93'_84
du_'172''91'x'8777'x'93'_84 :: AgdaAny
du_'172''91'x'8777'x'93'_84
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
      erased
-- Relation.Binary.Properties.Setoid.≈;≈⇒≈
d_'8776''894''8776''8658''8776'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8776''894''8776''8658''8776'_88 ~v0 ~v1 v2 v3 v4
  = du_'8776''894''8776''8658''8776'_88 v2 v3 v4
du_'8776''894''8776''8658''8776'_88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8776''894''8776''8658''8776'_88 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Composition.du_transitive'8658''8776''894''8776''8838''8776'_366
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
      (coe v1) (coe v2)
-- Relation.Binary.Properties.Setoid.≈⇒≈;≈
d_'8776''8658''8776''894''8776'_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8776''8658''8776''894''8776'_90 ~v0 ~v1 v2 v3 v4
  = du_'8776''8658''8776''894''8776'_90 v2 v3 v4
du_'8776''8658''8776''894''8776'_90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8776''8658''8776''894''8776'_90 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Composition.du_implies'737'_194
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
      (coe (\ v3 v4 v5 -> v5)) (coe v1) (coe v2)
-- Relation.Binary.Properties.Setoid.respʳ-flip
d_resp'691''45'flip_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'691''45'flip_92 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_resp'691''45'flip_92 v2 v3 v4 v5 v6 v7
du_resp'691''45'flip_92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'691''45'flip_92 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
      v1 v2 v3 v5
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
         v3 v2 v4)
-- Relation.Binary.Properties.Setoid.respˡ-flip
d_resp'737''45'flip_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'737''45'flip_98 ~v0 ~v1 v2 v3 v4 v5
  = du_resp'737''45'flip_98 v2 v3 v4 v5
du_resp'737''45'flip_98 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'737''45'flip_98 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
      v3 v2 v1
