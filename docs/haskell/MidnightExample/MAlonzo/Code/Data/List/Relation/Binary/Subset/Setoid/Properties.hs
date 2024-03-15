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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__34 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._≋_
d__'8779'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__44 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-reflexive
d_'8838''45'reflexive_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'reflexive_114 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8838''45'reflexive_114 v2 v3 v4 v5 v6
du_'8838''45'reflexive_114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'reflexive_114 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_158
      v0 v4 v1 v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-refl
d_'8838''45'refl_118 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'refl_118 ~v0 ~v1 ~v2 v3 = du_'8838''45'refl_118 v3
du_'8838''45'refl_118 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'refl_118 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-trans
d_'8838''45'trans_122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_'8838''45'trans_122 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'trans_122 v4 v5 v6 v7
du_'8838''45'trans_122 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'trans_122 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respʳ-≋
d_'8838''45'resp'691''45''8779'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_'8838''45'resp'691''45''8779'_130 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'691''45''8779'_130 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'691''45''8779'_130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'691''45''8779'_130 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_158
      v0 v5 v1 v2 v3 (coe v4 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respˡ-≋
d_'8838''45'resp'737''45''8779'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_'8838''45'resp'737''45''8779'_136 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'737''45''8779'_136 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'737''45''8779'_136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'737''45''8779'_136 v0 v1 v2 v3 v4 v5 v6
  = coe
      v4 v5
      (coe
         MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8779'_158
         v0 v5 v2 v1
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'sym_64
            v0 v1 v2 v3)
         v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_142 ~v0 ~v1 v2
  = du_'8838''45'isPreorder_142 v2
du_'8838''45'isPreorder_142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8838''45'isPreorder_142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'isEquivalence_68
         (coe v0))
      (coe du_'8838''45'reflexive_114 (coe v0))
      (coe (\ v1 v2 v3 v4 v5 v6 v7 -> coe v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-preorder
d_'8838''45'preorder_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'preorder_144 ~v0 ~v1 v2 = du_'8838''45'preorder_144 v2
du_'8838''45'preorder_144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8838''45'preorder_144 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      (coe du_'8838''45'isPreorder_142 (coe v0))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__158 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._↭_
d__'8621'__168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__168 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-reflexive-↭
d_'8838''45'reflexive'45''8621'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'reflexive'45''8621'_266 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8838''45'reflexive'45''8621'_266 v2 v3 v4 v5 v6
du_'8838''45'reflexive'45''8621'_266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'reflexive'45''8621'_266 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_374
      v0 v4 v1 v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respʳ-↭
d_'8838''45'resp'691''45''8621'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'691''45''8621'_270 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'691''45''8621'_270 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'691''45''8621'_270 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'691''45''8621'_270 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_374
      v0 v5 v1 v2 v3 (coe v4 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-respˡ-↭
d_'8838''45'resp'737''45''8621'_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'resp'737''45''8621'_276 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8
                                    v9
  = du_'8838''45'resp'737''45''8621'_276 v2 v4 v5 v6 v7 v8 v9
du_'8838''45'resp'737''45''8621'_276 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'resp'737''45''8621'_276 v0 v1 v2 v3 v4 v5 v6
  = coe
      v4 v5
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_'8712''45'resp'45''8621'_374
         v0 v5 v2 v1
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_144
            v0 v1 v2 v3)
         v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-↭-isPreorder
d_'8838''45''8621''45'isPreorder_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45''8621''45'isPreorder_282 ~v0 ~v1 v2
  = du_'8838''45''8621''45'isPreorder_282 v2
du_'8838''45''8621''45'isPreorder_282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8838''45''8621''45'isPreorder_282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'isEquivalence_148
         (coe v0))
      (coe du_'8838''45'reflexive'45''8621'_266 (coe v0))
      (coe (\ v1 v2 v3 v4 v5 v6 v7 -> coe v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.⊆-↭-preorder
d_'8838''45''8621''45'preorder_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45''8621''45'preorder_284 ~v0 ~v1 v2
  = du_'8838''45''8621''45'preorder_284 v2
du_'8838''45''8621''45'preorder_284 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8838''45''8621''45'preorder_284 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      (coe du_'8838''45''8621''45'isPreorder_282 (coe v0))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base._IsRelatedTo_
d__IsRelatedTo__300 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base._∎
d__'8718'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_302 ~v0 ~v1 v2 = du__'8718'_302 v2
du__'8718'_302 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_302 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.IsEquality
d_IsEquality_304 a0 a1 a2 a3 a4 a5 = ()
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.IsEquality?
d_IsEquality'63'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_306 ~v0 ~v1 ~v2 = du_IsEquality'63'_306
du_IsEquality'63'_306 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_306 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.begin_
d_begin__308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__308 ~v0 ~v1 v2 = du_begin__308 v2
du_begin__308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__308 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v2))))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.begin_
d_begin__310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__310 ~v0 ~v1 ~v2 = du_begin__310
du_begin__310 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__310
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.equalitySubRelation
d_equalitySubRelation_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_312 ~v0 ~v1 ~v2 = du_equalitySubRelation_312
du_equalitySubRelation_312 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_312
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.extractEquality
d_extractEquality_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_316 ~v0 ~v1 ~v2 = du_extractEquality_316
du_extractEquality_316 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_316 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.start
d_start_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_322 ~v0 ~v1 v2 = du_start_322 v2
du_start_322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_322 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡
d_step'45''8801'_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_334 ~v0 ~v1 ~v2 = du_step'45''8801'_334
du_step'45''8801'_334 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_334
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_336 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_step'45''8801''45''8739'_336 v5
du_step'45''8801''45''8739'_336 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_336 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_338 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10216'_338
du_step'45''8801''45''10216'_338 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_338
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_340 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10217'_340
du_step'45''8801''45''10217'_340 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_340
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.step-≡˘
d_step'45''8801''728'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_342 ~v0 ~v1 ~v2 = du_step'45''8801''728'_342
du_step'45''8801''728'_342 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_342
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.stop
d_stop_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_346 ~v0 ~v1 v2 = du_stop_346 v2
du_stop_346 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_346 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≈-go
d_'8776''45'go_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_348 ~v0 ~v1 v2 = du_'8776''45'go_348 v2
du_'8776''45'go_348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_348 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≡-go
d_'8801''45'go_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8801''45'go_350 v7
du_'8801''45'go_350 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_350 v0 = coe v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning.Base.≲-go
d_'8818''45'go_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_352 ~v0 ~v1 v2 = du_'8818''45'go_352 v2
du_'8818''45'go_352 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_352 v0
  = let v1 = coe du_'8838''45'preorder_144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-∈
d_step'45''8712'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_368 ~v0 ~v1 v2 = du_step'45''8712'_368 v2
du_step'45''8712'_368 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_368 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_208
      (coe
         (\ v1 v2 v3 v4 ->
            let v5 = coe du_'8838''45'isPreorder_142 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                    (coe v5))
                 v2 v3 v4 v1)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-⊆
d_step'45''8838'_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_372 ~v0 ~v1 v2 = du_step'45''8838'_372 v2
du_step'45''8838'_372 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_316
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe du_'8838''45'isPreorder_142 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋
d_step'45''8779'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_step'45''8779'_376 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_step'45''8779'_376 v2
du_step'45''8779'_376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_382
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_142 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋-⟨
d_step'45''8779''45''10216'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_step'45''8779''45''10216'_378 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_step'45''8779''45''10216'_378 v2 v5
du_step'45''8779''45''10216'_378 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
du_step'45''8779''45''10216'_378 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_380
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_142 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋-⟩
d_step'45''8779''45''10217'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_step'45''8779''45''10217'_380 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_step'45''8779''45''10217'_380 v2
du_step'45''8779''45''10217'_380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_380 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_378
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_142 (coe v0)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties.⊆-Reasoning._.step-≋˘
d_step'45''8779''728'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_step'45''8779''728'_382 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_step'45''8779''728'_382 v2 v5
du_step'45''8779''728'_382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
du_step'45''8779''728'_382 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_384
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe du_'8838''45'isPreorder_142 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__418 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__466 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.Sublist⇒Subset
d_Sublist'8658'Subset_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Sublist'8658'Subset_560 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_Sublist'8658'Subset_560 v2 v3 v4 v5 v6 v7
du_Sublist'8658'Subset_560 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Sublist'8658'Subset_560 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v9
        -> case coe v2 of
             (:) v10 v11
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                    (coe
                       du_Sublist'8658'Subset_560 (coe v0) (coe v1) (coe v11) (coe v9)
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
                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                        (coe v0))
                                     v4 v12 v14 v18 v10)
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v18
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                  (coe
                                     du_Sublist'8658'Subset_560 (coe v0) (coe v13) (coe v15)
                                     (coe v11) (coe v4) (coe v18))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__614 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊇_
d__'8839'__616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8839'__616 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.Any-resp-⊆
d_Any'45'resp'45''8838'_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_Any'45'resp'45''8838'_640 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_Any'45'resp'45''8838'_640 v2 v5 v6 v7 v8 v9
du_Any'45'resp'45''8838'_640 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Any'45'resp'45''8838'_640 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Data.List.Membership.Setoid.du_find_84 (coe v0)
              (coe v2) (coe v5) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Data.List.Membership.Setoid.du_lose_94 (coe v1)
                       (coe v7) (coe v3) (coe v4 v7 v9) (coe v10)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.All-resp-⊇
d_All'45'resp'45''8839'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_All'45'resp'45''8839'_666 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_All'45'resp'45''8839'_666 v2 v5 v6 v7 v8 v9
du_All'45'resp'45''8839'_666 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_All'45'resp'45''8839'_666 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_tabulate'8347'_258
      (coe v0) (coe v3)
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup'8347'_502 v0 v2
              v1 v5 v6 (coe v4 v6 v7)))
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__708 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._∈_
d__'8712'__718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8712'__718 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆x∷xs
d_xs'8838'x'8759'xs_736 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'x'8759'xs_736 ~v0 ~v1 ~v2 ~v3 = du_xs'8838'x'8759'xs_736
du_xs'8838'x'8759'xs_736 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'x'8759'xs_736
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.∷⁺ʳ
d_'8759''8314''691'_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8759''8314''691'_748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8759''8314''691'_748 v6 v7 v8
du_'8759''8314''691'_748 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8759''8314''691'_748 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v5
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v5
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 (coe v0 v1 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.∈-∷⁺ʳ
d_'8712''45''8759''8314''691'_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8759''8314''691'_768 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_'8712''45''8759''8314''691'_768 v2 v4 v5 v6 v7 v8 v9
du_'8712''45''8759''8314''691'_768 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45''8759''8314''691'_768 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
        -> coe
             MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'resp'45''8776'_136
             (coe v0) (coe v1) (coe v2) (coe v5)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                v5 v2 v9)
             (coe v3)
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
        -> coe v4 v5 v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__790 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆xs++ys
d_xs'8838'xs'43''43'ys_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'xs'43''43'ys_818 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_xs'8838'xs'43''43'ys_818 v3
du_xs'8838'xs'43''43'ys_818 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'xs'43''43'ys_818 v0
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''43''43''8314''737'_766
      (coe v0)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.xs⊆ys++xs
d_xs'8838'ys'43''43'xs_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_xs'8838'ys'43''43'xs_828 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_xs'8838'ys'43''43'xs_828 v3 v4
du_xs'8838'ys'43''43'xs_828 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_xs'8838'ys'43''43'xs_828 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''43''43''8314''691'_774
      v1 v0
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺ʳ
d_'43''43''8314''691'_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'43''43''8314''691'_840 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'43''43''8314''691'_840 v5 v6 v7
du_'43''43''8314''691'_840 ::
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'43''43''8314''691'_840 v0 v1 v2
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
                         (coe du_'43''43''8314''691'_840 v4 v1 v2 v8)
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺ˡ
d_'43''43''8314''737'_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'43''43''8314''737'_866 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'43''43''8314''737'_866 v3 v4 v5 v6 v7
du_'43''43''8314''737'_866 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'43''43''8314''737'_866 v0 v1 v2 v3 v4
  = case coe v0 of
      [] -> coe du_xs'8838'ys'43''43'xs_828 (coe v2) (coe v1)
      (:) v5 v6
        -> coe
             (\ v7 ->
                case coe v7 of
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10
                    -> coe
                         du_xs'8838'xs'43''43'ys_818 v1
                         (coe
                            v3 v4
                            (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v10))
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v10
                    -> coe
                         du_'43''43''8314''737'_866 v6 v1 v2
                         (\ v11 v12 ->
                            coe
                              v3 v11
                              (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12))
                         v4 v10
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.++⁺
d_'43''43''8314'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_'43''43''8314'_906 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 v8 v9 v10
  = du_'43''43''8314'_906 v3 v4 v5 v7 v8 v9 v10
du_'43''43''8314'_906 ::
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
du_'43''43''8314'_906 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'43''43''8314''691'_840 v1 v4 v5
      (coe du_'43''43''8314''737'_866 v0 v1 v2 v3 v5 v6)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__946 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.filter-⊆
d_filter'45''8838'_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_960 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_filter'45''8838'_960 v5 v6 v8
du_filter'45''8838'_960 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'45''8838'_960 v0 v1 v2
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
                              (coe du_filter'45''8838'_960 (coe v0) (coe v4) (coe v8))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                       (coe du_filter'45''8838'_960 (coe v0) (coe v4) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.filter⁺′
d_filter'8314''8242'_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
d_filter'8314''8242'_1026 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8 v9 ~v10
                          ~v11 v12 v13 v14 v15 v16
  = du_filter'8314''8242'_1026 v2 v6 v7 v9 v12 v13 v14 v15 v16
du_filter'8314''8242'_1026 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
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
du_filter'8314''8242'_1026 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = let v9
          = coe
              MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'filter'8315'_1532
              (coe v0) (coe v1) (coe v2) (coe v7) (coe v4) (coe v8) in
    coe
      (case coe v9 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
           -> coe
                MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45'filter'8314'_1480
                (coe v3) (coe v5) (coe v6 v7 v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Binary.Subset.Setoid.Properties._._._⊆_
d__'8838'__1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__1098 = erased
-- Data.List.Relation.Binary.Subset.Setoid.Properties._.applyUpTo⁺
d_applyUpTo'8314'_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (Integer -> AgdaAny) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_applyUpTo'8314'_1112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
  = du_applyUpTo'8314'_1112 v6 v8
du_applyUpTo'8314'_1112 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_applyUpTo'8314'_1112 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
               -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v7
             MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                    (coe du_applyUpTo'8314'_1112 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Subset.Setoid.Properties.filter⁺
d_filter'8314'_1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'8314'_1122 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe du_filter'45''8838'_960 v5 v6 v8
