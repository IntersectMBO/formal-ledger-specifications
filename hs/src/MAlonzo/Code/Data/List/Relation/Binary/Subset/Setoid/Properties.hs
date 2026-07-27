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

module MAlonzo.Code.Data.List.Relation.Binary.Subset.Setoid.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Membership.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__42 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊈_
d__'8840'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8840'__46 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.∷⊈[]
d_'8759''8840''91''93'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8759''8840''91''93'_54 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆[]⇒≡[]
d_'8838''91''93''8658''8801''91''93'_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''91''93''8658''8801''91''93'_62 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__82 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._≋_
d__'8779'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__92 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-reflexive
d_'8838''45'reflexive_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'reflexive_166 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8838''45'reflexive_166 v2 v3 v4 v5 v6
du_'8838''45'reflexive_166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'reflexive_166 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_194
      v0 v4 v1 v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-refl
d_'8838''45'refl_170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'refl_170 ~v0 ~v1 ~v2 v3 = du_'8838''45'refl_170 v3
du_'8838''45'refl_170 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'refl_170 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-trans
d_'8838''45'trans_174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'trans_174 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'trans_174 v4 v5 v6 v7
du_'8838''45'trans_174 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'trans_174 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respʳ-≋
d_'8838''45'resp'691''45''8779'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'691''45''8779'_182 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'691''45''8779'_182 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'691''45''8779'_182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'691''45''8779'_182 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_194
      v0 v5 v1 v2 v3 (coe v4 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respˡ-≋
d_'8838''45'resp'737''45''8779'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'737''45''8779'_188 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'737''45''8779'_188 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'737''45''8779'_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'737''45''8779'_188 v0 v1 v2 v3 v4 v5 v6
  = coe
      v4 v5
      (coe
         MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_194
         v0 v5 v2 v1
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                  (coe v0)))
            v1 v2 v3)
         v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_194 ~v0 ~v1 v2
  = du_'8838''45'isPreorder_194 v2
du_'8838''45'isPreorder_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8838''45'isPreorder_194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
            (coe v0)))
      (coe du_'8838''45'reflexive_166 (coe v0))
      (coe (\ v1 v2 v3 v4 v5 v6 v7 -> coe v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-preorder
d_'8838''45'preorder_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'preorder_196 ~v0 ~v1 v2 = du_'8838''45'preorder_196 v2
du_'8838''45'preorder_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8838''45'preorder_196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8838''45'isPreorder_194 (coe v0))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__210 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._↭_
d__'8621'__220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__220 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-reflexive-↭
d_'8838''45'reflexive'45''8621'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'reflexive'45''8621'_354 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8838''45'reflexive'45''8621'_354 v2 v3 v4 v5 v6
du_'8838''45'reflexive'45''8621'_354 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'reflexive'45''8621'_354 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_430
      v0 v4 v1 v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respʳ-↭
d_'8838''45'resp'691''45''8621'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'691''45''8621'_358 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'691''45''8621'_358 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'691''45''8621'_358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'691''45''8621'_358 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_430
      v0 v5 v1 v2 v3 (coe v4 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respˡ-↭
d_'8838''45'resp'737''45''8621'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'737''45''8621'_364 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'737''45''8621'_364 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'737''45''8621'_364 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'737''45''8621'_364 v0 v1 v2 v3 v4 v5 v6
  = coe
      v4 v5
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_430
         v0 v5 v2 v1
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
            v0 v1 v2 v3)
         v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-↭-isPreorder
d_'8838''45''8621''45'isPreorder_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45''8621''45'isPreorder_370 ~v0 ~v1 v2
  = du_'8838''45''8621''45'isPreorder_370 v2
du_'8838''45''8621''45'isPreorder_370 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8838''45''8621''45'isPreorder_370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'isEquivalence_176
         (coe v0))
      (coe du_'8838''45'reflexive'45''8621'_354 (coe v0))
      (coe (\ v1 v2 v3 v4 v5 v6 v7 -> coe v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-↭-preorder
d_'8838''45''8621''45'preorder_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45''8621''45'preorder_372 ~v0 ~v1 v2
  = du_'8838''45''8621''45'preorder_372 v2
du_'8838''45''8621''45'preorder_372 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8838''45''8621''45'preorder_372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8838''45''8621''45'isPreorder_370 (coe v0))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base._IsRelatedTo_
d__IsRelatedTo__388 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base._∎
d__'8718'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_390 ~v0 ~v1 v2 = du__'8718'_390 v2
du__'8718'_390 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_390 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.IsEquality
d_IsEquality_392 a0 a1 a2 a3 a4 a5 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.IsEquality?
d_IsEquality'63'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_394 ~v0 ~v1 ~v2 = du_IsEquality'63'_394
du_IsEquality'63'_394 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_394 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.begin_
d_begin__396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__396 ~v0 ~v1 v2 = du_begin__396 v2
du_begin__396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__396 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.begin_
d_begin__398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__398 ~v0 ~v1 ~v2 = du_begin__398
du_begin__398 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__398
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.equalitySubRelation
d_equalitySubRelation_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_400 ~v0 ~v1 ~v2 = du_equalitySubRelation_400
du_equalitySubRelation_400 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_400
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.extractEquality
d_extractEquality_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_404 ~v0 ~v1 ~v2 = du_extractEquality_404
du_extractEquality_404 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_404 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.start
d_start_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_410 ~v0 ~v1 v2 = du_start_410 v2
du_start_410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_410 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡
d_step'45''8801'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_422 ~v0 ~v1 ~v2 = du_step'45''8801'_422
du_step'45''8801'_422 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_422
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_424 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_step'45''8801''45''8739'_424 v5
du_step'45''8801''45''8739'_424 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_424 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_426 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10216'_426
du_step'45''8801''45''10216'_426 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_426
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_428 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10217'_428
du_step'45''8801''45''10217'_428 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_428
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡˘
d_step'45''8801''728'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_430 ~v0 ~v1 ~v2 = du_step'45''8801''728'_430
du_step'45''8801''728'_430 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_430
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.stop
d_stop_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_434 ~v0 ~v1 v2 = du_stop_434 v2
du_stop_434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_434 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≈-go
d_'8776''45'go_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_436 ~v0 ~v1 v2 = du_'8776''45'go_436 v2
du_'8776''45'go_436 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_436 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≡-go
d_'8801''45'go_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8801''45'go_438 v7
du_'8801''45'go_438 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_438 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≲-go
d_'8818''45'go_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_440 ~v0 ~v1 v2 = du_'8818''45'go_440 v2
du_'8818''45'go_440 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_440 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-∈
d_step'45''8712'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_456 ~v0 ~v1 v2 = du_step'45''8712'_456 v2
du_step'45''8712'_456 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_456 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_210
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                 (coe du_'8838''45'isPreorder_194 (coe v0)))
              v2 v3 v4 v1))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-⊆
d_step'45''8838'_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_460 ~v0 ~v1 v2 = du_step'45''8838'_460 v2
du_step'45''8838'_460 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋
d_step'45''8779'_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779'_464 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_step'45''8779'_464 v2
du_step'45''8779'_464 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_464 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_384
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋-⟨
d_step'45''8779''45''10216'_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10216'_466 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_step'45''8779''45''10216'_466 v2 v5
du_step'45''8779''45''10216'_466 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10216'_466 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_382
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋-⟩
d_step'45''8779''45''10217'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10217'_468 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_step'45''8779''45''10217'_468 v2
du_step'45''8779''45''10217'_468 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_380
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋˘
d_step'45''8779''728'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''728'_470 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_step'45''8779''728'_470 v2 v5
du_step'45''8779''728'_470 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''728'_470 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_386
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__508 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__558 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.Sublist⇒Subset
d_Sublist'8658'Subset_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Sublist'8658'Subset_658 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_Sublist'8658'Subset_658 v2 v3 v4 v5 v6 v7
du_Sublist'8658'Subset_658 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Sublist'8658'Subset_658 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v9
        -> case coe v2 of
             (:) v10 v11
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                    (coe
                       du_Sublist'8658'Subset_658 (coe v0) (coe v1) (coe v11) (coe v9)
                       (coe v4) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v10 v11
        -> case coe v1 of
             (:) v12 v13
               -> case coe v2 of
                    (:) v14 v15
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v18
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                        (coe v0))
                                     v4 v12 v14 v18 v10)
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v18
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                  (coe
                                     du_Sublist'8658'Subset_658 (coe v0) (coe v13) (coe v15)
                                     (coe v11) (coe v4) (coe v18))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__714 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊇_
d__'8839'__716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8839'__716 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.Any-resp-⊆
d_Any'45'resp'45''8838'_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Any'45'resp'45''8838'_740 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_Any'45'resp'45''8838'_740 v2 v5 v6 v7 v8 v9
du_Any'45'resp'45''8838'_740 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Any'45'resp'45''8838'_740 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Data.List.Membership.Setoid.du_find_86 (coe v0)
              (coe v2) (coe v5) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Data.List.Membership.Setoid.du_lose_102 (coe v1)
                       (coe v7) (coe v3) (coe v4 v7 v9) (coe v10)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.All-resp-⊇
d_All'45'resp'45''8839'_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_All'45'resp'45''8839'_766 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_All'45'resp'45''8839'_766 v2 v5 v6 v7 v8 v9
du_All'45'resp'45''8839'_766 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_All'45'resp'45''8839'_766 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_tabulate'8347'_258
      (coe v0) (coe v3)
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup'8347'_500 v0 v2
              v1 v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__810 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._∈_
d__'8712'__820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8712'__820 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._∉_
d__'8713'__822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8713'__822 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆x∷xs
d_xs'8838'x'8759'xs_838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'x'8759'xs_838 ~v0 ~v1 ~v2 ~v3 = du_xs'8838'x'8759'xs_838
du_xs'8838'x'8759'xs_838 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'x'8759'xs_838
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.∷⁺ʳ
d_'8759''8314''691'_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8759''8314''691'_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8759''8314''691'_854 v6 v7 v8
du_'8759''8314''691'_854 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8759''8314''691'_854 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v5
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 (coe v0 v1 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.∈-∷⁺ʳ
d_'8712''45''8759''8314''691'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8759''8314''691'_868 ~v0 ~v1 v2 v3 v4 ~v5 v6 v7 v8 v9
  = du_'8712''45''8759''8314''691'_868 v2 v3 v4 v6 v7 v8 v9
du_'8712''45''8759''8314''691'_868 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45''8759''8314''691'_868 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
        -> coe
             MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8776'_172
             (coe v0) (coe v2) (coe v1) (coe v5)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                v5 v1 v9)
             (coe v3)
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
        -> coe v4 v5 v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆∷⇒∈∨⊆
d_'8838''8759''8658''8712''8744''8838'_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8838''8759''8658''8712''8744''8838'_878 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8838''8759''8658''8712''8744''8838'_878 v2 v3 v4 v5 v6
du_'8838''8759''8658''8712''8744''8838'_878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8838''8759''8658''8712''8744''8838'_878 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      (:) v5 v6
        -> let v7
                 = coe
                     du_'8838''8759''8658''8712''8744''8838'_878 (coe v0) (coe v6)
                     (coe v2) (coe v3)
                     (coe
                        (\ v7 v8 ->
                           coe
                             v4 v7
                             (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8))) in
           coe
             (case coe v7 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                       (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8)
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                  -> let v9
                           = coe
                               v4 v5
                               (coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                        (coe v0))
                                     v5)) in
                     coe
                       (case coe v9 of
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
                            -> coe
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                 (coe
                                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                       (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v0))
                                       v5 v2 v12))
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
                            -> coe
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                 (coe
                                    du_'8712''45''8759''8314''691'_868 (coe v0) (coe v5) (coe v3)
                                    (coe v12) (coe v8))
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆∷∧∉⇒⊆
d_'8838''8759''8743''8713''8658''8838'_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''8759''8743''8713''8658''8838'_912 ~v0 ~v1 v2 v3 v4 v5 v6
                                           ~v7 v8
  = du_'8838''8759''8743''8713''8658''8838'_912 v2 v3 v4 v5 v6 v8
du_'8838''8759''8743''8713''8658''8838'_912 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''8759''8743''8713''8658''8838'_912 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              du_'8838''8759''8658''8712''8744''8838'_878 (coe v0) (coe v1)
              (coe v2) (coe v3) (coe v4) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7 -> coe v7 v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__946 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆xs++ys
d_xs'8838'xs'43''43'ys_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'xs'43''43'ys_974 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_xs'8838'xs'43''43'ys_974 v3
du_xs'8838'xs'43''43'ys_974 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'xs'43''43'ys_974 v0
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''43''43''8314''737'_832
      (coe v0)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆ys++xs
d_xs'8838'ys'43''43'xs_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'ys'43''43'xs_984 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_xs'8838'ys'43''43'xs_984 v3 v4
du_xs'8838'ys'43''43'xs_984 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'ys'43''43'xs_984 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''43''43''8314''691'_840
      v1 v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺ʳ
d_'43''43''8314''691'_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'43''43''8314''691'_996 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'43''43''8314''691'_996 v5 v6 v7
du_'43''43''8314''691'_996 ::
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'43''43''8314''691'_996 v0 v1 v2
  = case coe v0 of
      [] -> coe v1 v2
      (:) v3 v4
        -> coe
             (\ v5 ->
                case coe v5 of
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                    -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
                    -> coe
                         MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                         (coe du_'43''43''8314''691'_996 v4 v1 v2 v8)
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺ˡ
d_'43''43''8314''737'_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'43''43''8314''737'_1022 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'43''43''8314''737'_1022 v3 v4 v5 v6 v7
du_'43''43''8314''737'_1022 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'43''43''8314''737'_1022 v0 v1 v2 v3 v4
  = case coe v0 of
      [] -> coe du_xs'8838'ys'43''43'xs_984 (coe v2) (coe v1)
      (:) v5 v6
        -> coe
             (\ v7 ->
                case coe v7 of
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10
                    -> coe
                         du_xs'8838'xs'43''43'ys_974 v1
                         (coe
                            v3 v4
                            (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10))
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v10
                    -> coe
                         du_'43''43''8314''737'_1022 v6 v1 v2
                         (\ v11 v12 ->
                            coe
                              v3 v11
                              (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12))
                         v4 v10
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺
d_'43''43''8314'_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'43''43''8314'_1062 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 v8 v9 v10
  = du_'43''43''8314'_1062 v3 v4 v5 v7 v8 v9 v10
du_'43''43''8314'_1062 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'43''43''8314'_1062 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'43''43''8314''691'_996 v1 v4 v5
      (coe du_'43''43''8314''737'_1022 v0 v1 v2 v3 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.S._≈_
d__'8776'__1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1086 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.S.Carrier
d_Carrier_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 -> ()
d_Carrier_1090 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.S⊆._⊆_
d__'8838'__1134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1134 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.R⊆._⊆_
d__'8838'__1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1144 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.map⁺
d_map'8314'_1158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'8314'_1158 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_map'8314'_1158 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_map'8314'_1158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_map'8314'_1158 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8776'_172
      (coe v1)
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v4) (coe v3))
      (coe
         v4
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
               (coe v0) (coe v2) (coe v8))))
      (coe v7)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))
         v7
         (coe
            v4
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
                  (coe v0) (coe v2) (coe v8))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
                  (coe v0) (coe v2) (coe v8)))))
      (coe
         MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8314'_736
         (coe v5)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
               (coe v0) (coe v2) (coe v8)))
         (coe v3)
         (coe
            v6
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
                  (coe v0) (coe v2) (coe v8)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'map'8315'_750
                     (coe v0) (coe v2) (coe v8))))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__1210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1210 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.reverse-selfAdjoint
d_reverse'45'selfAdjoint_1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_reverse'45'selfAdjoint_1222 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_reverse'45'selfAdjoint_1222 v3 v4 v5 v6 v7
du_reverse'45'selfAdjoint_1222 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_reverse'45'selfAdjoint_1222 v0 v1 v2 v3 v4
  = coe
      du_reverse'8315'_1230 v3 v1
      (coe v2 v3 (coe du_reverse'8315'_1230 v3 v0 v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._.reverse⁻
d_reverse'8315'_1230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_reverse'8315'_1230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_reverse'8315'_1230
du_reverse'8315'_1230 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_reverse'8315'_1230 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_reverse'8315'_1070
      v1
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.reverse⁺
d_reverse'8314'_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_reverse'8314'_1236 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_reverse'8314'_1236 v2 v3 v4 v5 v6
du_reverse'8314'_1236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_reverse'8314'_1236 v0 v1 v2 v3 v4
  = coe
      du_reverse'45'selfAdjoint_1222 (coe v1)
      (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
            (coe du_'8838''45'isPreorder_194 (coe v0)))
         v1
         (coe
            MAlonzo.Code.Data.List.Base.du_reverse_444
            (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe du_'8838''45'isPreorder_194 (coe v0)))
            v1 v2
            (coe
               MAlonzo.Code.Data.List.Base.du_reverse_444
               (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v5 v6 v7 v8 v9 -> v9) v2
               (coe
                  MAlonzo.Code.Data.List.Base.du_reverse_444
                  (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2))
               (coe
                  MAlonzo.Code.Data.List.Base.du_reverse_444
                  (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                     (coe du_'8838''45'isPreorder_194 (coe v0)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du_reverse_444
                     (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v2)))
               erased)
            v3))
      (coe v4)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._._IsRelatedTo_
d__IsRelatedTo__1250 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._._∎
d__'8718'_1252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_1252 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du__'8718'_1252 v2
du__'8718'_1252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_1252 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.IsEquality
d_IsEquality_1254 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.IsEquality?
d_IsEquality'63'_1256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_1256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_IsEquality'63'_1256
du_IsEquality'63'_1256 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_1256 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.begin_
d_begin__1258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__1258 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_begin__1258 v2
du_begin__1258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__1258 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.begin_
d_begin__1260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__1260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_begin__1260
du_begin__1260 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__1260
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.equalitySubRelation
d_equalitySubRelation_1262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_1262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_equalitySubRelation_1262
du_equalitySubRelation_1262 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_1262
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.extractEquality
d_extractEquality_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_1266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_extractEquality_1266
du_extractEquality_1266 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_1266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.start
d_start_1272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_1272 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_start_1272 v2
du_start_1272 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_1272 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-∈
d_step'45''8712'_1274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_1274 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8712'_1274 v2
du_step'45''8712'_1274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_1274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_210
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                 (coe du_'8838''45'isPreorder_194 (coe v0)))
              v2 v3 v4 v1))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋
d_step'45''8779'_1276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779'_1276 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_step'45''8779'_1276 v2
du_step'45''8779'_1276 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_1276 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_384
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋-⟨
d_step'45''8779''45''10216'_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10216'_1278 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                 v9
  = du_step'45''8779''45''10216'_1278 v2 v9
du_step'45''8779''45''10216'_1278 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10216'_1278 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_382
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋-⟩
d_step'45''8779''45''10217'_1280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10217'_1280 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                 ~v9
  = du_step'45''8779''45''10217'_1280 v2
du_step'45''8779''45''10217'_1280 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_1280 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_380
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋˘
d_step'45''8779''728'_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''728'_1282 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_step'45''8779''728'_1282 v2 v9
du_step'45''8779''728'_1282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''728'_1282 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_386
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡
d_step'45''8801'_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_1284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801'_1284
du_step'45''8801'_1284 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_1284
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-∣
d_step'45''8801''45''8739'_1286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_1286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                v9
  = du_step'45''8801''45''8739'_1286 v9
du_step'45''8801''45''8739'_1286 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_1286 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-⟨
d_step'45''8801''45''10216'_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''45''10216'_1288
du_step'45''8801''45''10216'_1288 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_1288
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-⟩
d_step'45''8801''45''10217'_1290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_1290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''45''10217'_1290
du_step'45''8801''45''10217'_1290 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_1290
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡˘
d_step'45''8801''728'_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_1292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''728'_1292
du_step'45''8801''728'_1292 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_1292
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-⊆
d_step'45''8838'_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_1294 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8838'_1294 v2
du_step'45''8838'_1294 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_1294 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.stop
d_stop_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_1296 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_stop_1296 v2
du_stop_1296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_1296 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≈-go
d_'8776''45'go_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_1298 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_'8776''45'go_1298 v2
du_'8776''45'go_1298 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_1298 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≡-go
d_'8801''45'go_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_'8801''45'go_1300 v11
du_'8801''45'go_1300 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_1300 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≲-go
d_'8818''45'go_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_1302 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_'8818''45'go_1302 v2
du_'8818''45'go_1302 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_1302 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.reverse⁻
d_reverse'8315'_1318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_reverse'8315'_1318 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_reverse'8315'_1318 v2 v3 v4 v5 v6
du_reverse'8315'_1318 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_reverse'8315'_1318 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      v1 v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v5 v6 v7 v8 v9 -> v9) v1
         (coe
            MAlonzo.Code.Data.List.Base.du_reverse_444
            (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v1))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe du_'8838''45'isPreorder_194 (coe v0)))
            (coe
               MAlonzo.Code.Data.List.Base.du_reverse_444
               (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v1))
            v2 v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe du_'8838''45'isPreorder_194 (coe v0)))
               (coe v2))
            (coe
               du_reverse'45'selfAdjoint_1222
               (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v1) (coe v2)
               (coe v3)))
         erased)
      v4
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._._IsRelatedTo_
d__IsRelatedTo__1332 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._._∎
d__'8718'_1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_1334 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du__'8718'_1334 v2
du__'8718'_1334 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_1334 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.IsEquality
d_IsEquality_1336 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.IsEquality?
d_IsEquality'63'_1338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_1338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_IsEquality'63'_1338
du_IsEquality'63'_1338 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_1338 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.begin_
d_begin__1340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__1340 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_begin__1340 v2
du_begin__1340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__1340 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.begin_
d_begin__1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__1342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_begin__1342
du_begin__1342 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__1342
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.equalitySubRelation
d_equalitySubRelation_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_1344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_equalitySubRelation_1344
du_equalitySubRelation_1344 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_1344
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.extractEquality
d_extractEquality_1348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_1348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_extractEquality_1348
du_extractEquality_1348 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_1348 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.start
d_start_1354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_1354 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_start_1354 v2
du_start_1354 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_1354 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-∈
d_step'45''8712'_1356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_1356 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8712'_1356 v2
du_step'45''8712'_1356 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_1356 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_210
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                 (coe du_'8838''45'isPreorder_194 (coe v0)))
              v2 v3 v4 v1))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋
d_step'45''8779'_1358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779'_1358 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_step'45''8779'_1358 v2
du_step'45''8779'_1358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_1358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_384
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋-⟨
d_step'45''8779''45''10216'_1360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10216'_1360 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                 v9
  = du_step'45''8779''45''10216'_1360 v2 v9
du_step'45''8779''45''10216'_1360 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10216'_1360 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_382
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋-⟩
d_step'45''8779''45''10217'_1362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10217'_1362 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                 ~v9
  = du_step'45''8779''45''10217'_1362 v2
du_step'45''8779''45''10217'_1362 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_1362 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_380
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≋˘
d_step'45''8779''728'_1364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> [AgdaAny] -> ()) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''728'_1364 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_step'45''8779''728'_1364 v2 v9
du_step'45''8779''728'_1364 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  ([AgdaAny] ->
   [AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''728'_1364 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_386
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_194 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡
d_step'45''8801'_1366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_1366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801'_1366
du_step'45''8801'_1366 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_1366
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-∣
d_step'45''8801''45''8739'_1368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_1368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                v9
  = du_step'45''8801''45''8739'_1368 v9
du_step'45''8801''45''8739'_1368 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_1368 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-⟨
d_step'45''8801''45''10216'_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_1370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''45''10216'_1370
du_step'45''8801''45''10216'_1370 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_1370
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡-⟩
d_step'45''8801''45''10217'_1372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_1372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''45''10217'_1372
du_step'45''8801''45''10217'_1372 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_1372
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-≡˘
d_step'45''8801''728'_1374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_1374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8801''728'_1374
du_step'45''8801''728'_1374 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_1374
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.step-⊆
d_step'45''8838'_1376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_1376 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_step'45''8838'_1376 v2
du_step'45''8838'_1376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_1376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe du_'8838''45'isPreorder_194 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.stop
d_stop_1378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_1378 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 = du_stop_1378 v2
du_stop_1378 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_1378 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≈-go
d_'8776''45'go_1380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_1380 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_'8776''45'go_1380 v2
du_'8776''45'go_1380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_1380 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≡-go
d_'8801''45'go_1382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_1382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_'8801''45'go_1382 v11
du_'8801''45'go_1382 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_1382 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._.≲-go
d_'8818''45'go_1384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_1384 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_'8818''45'go_1384 v2
du_'8818''45'go_1384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_1384 v0
  = let v1 = coe du_'8838''45'preorder_196 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1432 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.filter-⊆
d_filter'45''8838'_1446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_1446 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_filter'45''8838'_1446 v5 v6 v8
du_filter'45''8838'_1446 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'45''8838'_1446 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> let v5
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v3) in
           coe
             (if coe v5
                then case coe v2 of
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                         -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
                         -> coe
                              MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                              (coe du_filter'45''8838'_1446 (coe v0) (coe v4) (coe v8))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                       (coe du_filter'45''8838'_1446 (coe v0) (coe v4) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.filter⁺′
d_filter'8314''8242'_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'8314''8242'_1512 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8 v9 ~v10
                          ~v11 v12 v13 v14 v15 v16
  = du_filter'8314''8242'_1512 v2 v6 v7 v9 v12 v13 v14 v15 v16
du_filter'8314''8242'_1512 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'8314''8242'_1512 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = let v9
          = coe
              MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'filter'8315'_1620
              (coe v0) (coe v1) (coe v2) (coe v7) (coe v4) (coe v8) in
    coe
      (case coe v9 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
           -> coe
                MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'filter'8314'_1568
                (coe v3) (coe v5) (coe v6 v7 v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1586 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.applyUpTo⁺
d_applyUpTo'8314'_1600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (Integer -> AgdaAny) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_applyUpTo'8314'_1600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
  = du_applyUpTo'8314'_1600 v6 v8
du_applyUpTo'8314'_1600 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_applyUpTo'8314'_1600 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                    (coe du_applyUpTo'8314'_1600 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties.filter⁺
d_filter'8314'_1610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'8314'_1610 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe du_filter'45''8838'_1446 v5 v6 v8
