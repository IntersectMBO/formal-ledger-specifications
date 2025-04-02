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

module MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Properties.Setoid
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Binary.Permutation.Setoid.Properties._._↭_
d__'8621'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__38 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.steps
d_steps_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  Integer
d_steps_40 ~v0 ~v1 ~v2 = du_steps_40
du_steps_40 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  Integer
du_steps_40
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_steps_58
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._._∈_
d__'8712'__154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8712'__154 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.AllPairs
d_AllPairs_170 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.Permutation.Permutation
d_Permutation_171 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋._≋_
d__'8779'__180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__180 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.++-cancelʳ
d_'43''43''45'cancel'691'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''45'cancel'691'_182 ~v0 ~v1 ~v2
  = du_'43''43''45'cancel'691'_182
du_'43''43''45'cancel'691'_182 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''45'cancel'691'_182 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'43''43''45'cancel'691'_188
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.++-cancelˡ
d_'43''43''45'cancel'737'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''45'cancel'737'_184 ~v0 ~v1 ~v2
  = du_'43''43''45'cancel'737'_184
du_'43''43''45'cancel'737'_184 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''45'cancel'737'_184 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'43''43''45'cancel'737'_178
      v0
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.++⁺
d_'43''43''8314'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''8314'_186 ~v0 ~v1 ~v2 = du_'43''43''8314'_186
du_'43''43''8314'_186 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''8314'_186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'43''43''8314'_158
      v0 v1
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.++⁺ʳ
d_'43''43''8314''691'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''8314''691'_188 ~v0 ~v1 v2
  = du_'43''43''8314''691'_188 v2
du_'43''43''8314''691'_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''8314''691'_188 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'43''43''8314''691'_168
      (coe v0)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.++⁺ˡ
d_'43''43''8314''737'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''8314''737'_190 ~v0 ~v1 v2
  = du_'43''43''8314''737'_190 v2
du_'43''43''8314''737'_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''8314''737'_190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'43''43''8314''737'_162
      (coe v0) v3
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.Unique-resp-≋
d_Unique'45'resp'45''8779'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Unique'45'resp'45''8779'_192 ~v0 ~v1 ~v2
  = du_Unique'45'resp'45''8779'_192
du_Unique'45'resp'45''8779'_192 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Unique'45'resp'45''8779'_192
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_Unique'45'resp'45''8779'_92
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.concat⁺
d_concat'8314'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_concat'8314'_194 ~v0 ~v1 ~v2 = du_concat'8314'_194
du_concat'8314'_194 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_concat'8314'_194
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_concat'8314'_190
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.filter⁺
d_filter'8314'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_filter'8314'_196 ~v0 ~v1 ~v2 = du_filter'8314'_196
du_filter'8314'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_filter'8314'_196 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_filter'8314'_222
      v2 v4 v5 v6
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.foldr⁺
d_foldr'8314'_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny
d_foldr'8314'_198 ~v0 ~v1 ~v2 = du_foldr'8314'_198
du_foldr'8314'_198 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny
du_foldr'8314'_198
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_foldr'8314'_150
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.map⁺
d_map'8314'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_map'8314'_200 ~v0 ~v1 ~v2 = du_map'8314'_200
du_map'8314'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_map'8314'_200 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_map'8314'_122
      v4 v5 v6 v7
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.reverse⁺
d_reverse'8314'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_reverse'8314'_202 ~v0 ~v1 ~v2 = du_reverse'8314'_202
du_reverse'8314'_202 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_reverse'8314'_202
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_reverse'8314'_228
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.tabulate⁺
d_tabulate'8314'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_tabulate'8314'_204 ~v0 ~v1 ~v2 = du_tabulate'8314'_204
du_tabulate'8314'_204 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_tabulate'8314'_204 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_tabulate'8314'_204
      v0
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.tabulate⁻
d_tabulate'8315'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_tabulate'8315'_206 ~v0 ~v1 ~v2 = du_tabulate'8315'_206
du_tabulate'8315'_206 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_tabulate'8315'_206 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_tabulate'8315'_208
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.ʳ++⁺
d_'691''43''43''8314'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'691''43''43''8314'_208 ~v0 ~v1 ~v2 = du_'691''43''43''8314'_208
du_'691''43''43''8314'_208 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'691''43''43''8314'_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'691''43''43''8314'_226
      v0 v1
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.isEquivalence
d_isEquivalence_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_210 ~v0 ~v1 v2 = du_isEquivalence_210 v2
du_isEquivalence_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
         (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.≋-length
d_'8779''45'length_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8779''45'length_212 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.refl
d_refl_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_refl_214 ~v0 ~v1 v2 = du_refl_214 v2
du_refl_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_refl_214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
            (coe v0)))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.reflexive
d_reflexive_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_reflexive_216 ~v0 ~v1 v2 = du_reflexive_216 v2
du_reflexive_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_reflexive_216 v0
  = let v1
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
              (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.≋-setoid
d_'8779''45'setoid_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8779''45'setoid_218 ~v0 ~v1 v2 = du_'8779''45'setoid_218 v2
du_'8779''45'setoid_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8779''45'setoid_218 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
      (coe v0)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.sym
d_sym_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_sym_220 ~v0 ~v1 v2 = du_sym_220 v2
du_sym_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_sym_220 v0
  = let v1
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.trans
d_trans_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_trans_222 ~v0 ~v1 v2 = du_trans_222 v2
du_trans_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_trans_222 v0
  = let v1
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.Pointwise.All-resp-Pointwise
d_All'45'resp'45'Pointwise_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_All'45'resp'45'Pointwise_230 ~v0 ~v1 ~v2
  = du_All'45'resp'45'Pointwise_230
du_All'45'resp'45'Pointwise_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_All'45'resp'45'Pointwise_230 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_All'45'resp'45'Pointwise_206
      v6 v7 v8 v9 v10
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.Pointwise.AllPairs-resp-Pointwise
d_AllPairs'45'resp'45'Pointwise_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_AllPairs'45'resp'45'Pointwise_232 ~v0 ~v1 ~v2
  = du_AllPairs'45'resp'45'Pointwise_232
du_AllPairs'45'resp'45'Pointwise_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_AllPairs'45'resp'45'Pointwise_232 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_AllPairs'45'resp'45'Pointwise_240
      v6 v7 v8 v9 v10
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.Pointwise.Any-resp-Pointwise
d_Any'45'resp'45'Pointwise_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Any'45'resp'45'Pointwise_234 ~v0 ~v1 ~v2
  = du_Any'45'resp'45'Pointwise_234
du_Any'45'resp'45'Pointwise_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Any'45'resp'45'Pointwise_234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_Any'45'resp'45'Pointwise_222
      v6 v7 v8 v9 v10
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.All-resp-↭
d_All'45'resp'45''8621'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_All'45'resp'45''8621'_268 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_All'45'resp'45''8621'_268 v5 v6 v7 v8 v9
du_All'45'resp'45''8621'_268 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_All'45'resp'45''8621'_268 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_All'45'resp'45'Pointwise_206
             (coe v0) (coe v1) (coe v2) (coe v7) (coe v4)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v17 v18
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                  (coe v0 v11 v13 v9 v17)
                                  (coe
                                     du_All'45'resp'45''8621'_268 (coe v0) (coe v12) (coe v14)
                                     (coe v10) (coe v18))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v11 v12 v13
        -> case coe v1 of
             (:) v14 v15
               -> case coe v15 of
                    (:) v16 v17
                      -> case coe v2 of
                           (:) v18 v19
                             -> case coe v19 of
                                  (:) v20 v21
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v24 v25
                                           -> case coe v25 of
                                                MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v28 v29
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                       (coe v0 v16 v18 v12 v28)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                          (coe v0 v14 v20 v11 v24)
                                                          (coe
                                                             du_All'45'resp'45''8621'_268 (coe v0)
                                                             (coe v17) (coe v21) (coe v13)
                                                             (coe v29)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v6 v8 v9
        -> coe
             du_All'45'resp'45''8621'_268 (coe v0) (coe v6) (coe v2) (coe v9)
             (coe
                du_All'45'resp'45''8621'_268 (coe v0) (coe v1) (coe v6) (coe v8)
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.Any-resp-↭
d_Any'45'resp'45''8621'_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Any'45'resp'45''8621'_308 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_Any'45'resp'45''8621'_308 v5 v6 v7 v8 v9
du_Any'45'resp'45''8621'_308 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_Any'45'resp'45''8621'_308 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_Any'45'resp'45'Pointwise_222
             (coe v0) (coe v1) (coe v2) (coe v7) (coe v4)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                  (coe v0 v11 v13 v9 v17)
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                  (coe
                                     du_Any'45'resp'45''8621'_308 (coe v0) (coe v12) (coe v14)
                                     (coe v10) (coe v17))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v11 v12 v13
        -> case coe v1 of
             (:) v14 v15
               -> case coe v15 of
                    (:) v16 v17
                      -> case coe v2 of
                           (:) v18 v19
                             -> case coe v19 of
                                  (:) v20 v21
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v24
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                (coe
                                                   MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                   (coe v0 v14 v20 v11 v24))
                                         MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v24
                                           -> case coe v24 of
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v27
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                       (coe v0 v16 v18 v12 v27)
                                                MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v27
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                       (coe
                                                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                          (coe
                                                             du_Any'45'resp'45''8621'_308 (coe v0)
                                                             (coe v17) (coe v21) (coe v13)
                                                             (coe v27)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v6 v8 v9
        -> coe
             du_Any'45'resp'45''8621'_308 (coe v0) (coe v6) (coe v2) (coe v9)
             (coe
                du_Any'45'resp'45''8621'_308 (coe v0) (coe v1) (coe v6) (coe v8)
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.AllPairs-resp-↭
d_AllPairs'45'resp'45''8621'_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_AllPairs'45'resp'45''8621'_370 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
                                 v10
  = du_AllPairs'45'resp'45''8621'_370 v5 v6 v7 v8 v9 v10
du_AllPairs'45'resp'45''8621'_370 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_AllPairs'45'resp'45''8621'_370 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_AllPairs'45'resp'45'Pointwise_240
             (coe v1) (coe v2) (coe v3) (coe v8) (coe v5)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v3 of
                    (:) v14 v15
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v18 v19
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                  (coe
                                     du_All'45'resp'45''8621'_268
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1 v14) (coe v13)
                                     (coe v15) (coe v11)
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164
                                        (coe
                                           (\ v20 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v20 v12
                                                v14 v10))
                                        (coe v13) (coe v18)))
                                  (coe
                                     du_AllPairs'45'resp'45''8621'_370 (coe v0) (coe v1) (coe v13)
                                     (coe v15) (coe v11) (coe v19))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v12 v13 v14
        -> case coe v2 of
             (:) v15 v16
               -> case coe v16 of
                    (:) v17 v18
                      -> case coe v3 of
                           (:) v19 v20
                             -> case coe v20 of
                                  (:) v21 v22
                                    -> case coe v1 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                           -> case coe v5 of
                                                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v27 v28
                                                  -> case coe v27 of
                                                       MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v31 v32
                                                         -> case coe v28 of
                                                              MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v35 v36
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                                                        (coe
                                                                           v0 v21 v19
                                                                           (coe
                                                                              v23 v21 v17 v19 v13
                                                                              (coe
                                                                                 v24 v17 v15 v21 v12
                                                                                 v31)))
                                                                        (coe
                                                                           du_All'45'resp'45''8621'_268
                                                                           (coe v23 v19) (coe v18)
                                                                           (coe v22) (coe v14)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164
                                                                              (coe
                                                                                 (\ v37 ->
                                                                                    coe
                                                                                      v24 v37 v17
                                                                                      v19 v13))
                                                                              (coe v18) (coe v35))))
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                                                        (coe
                                                                           du_All'45'resp'45''8621'_268
                                                                           (coe v23 v21) (coe v18)
                                                                           (coe v22) (coe v14)
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164
                                                                              (coe
                                                                                 (\ v37 ->
                                                                                    coe
                                                                                      v24 v37 v15
                                                                                      v21 v12))
                                                                              (coe v18) (coe v32)))
                                                                        (coe
                                                                           du_AllPairs'45'resp'45''8621'_370
                                                                           (coe v0) (coe v1)
                                                                           (coe v18) (coe v22)
                                                                           (coe v14) (coe v36)))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v7 v9 v10
        -> coe
             du_AllPairs'45'resp'45''8621'_370 (coe v0) (coe v1) (coe v7)
             (coe v3) (coe v10)
             (coe
                du_AllPairs'45'resp'45''8621'_370 (coe v0) (coe v1) (coe v2)
                (coe v7) (coe v9) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.∈-resp-↭
d_'8712''45'resp'45''8621'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'resp'45''8621'_426 ~v0 ~v1 v2 v3 v4 v5
  = du_'8712''45'resp'45''8621'_426 v2 v3 v4 v5
du_'8712''45'resp'45''8621'_426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'resp'45''8621'_426 v0 v1 v2 v3
  = coe
      du_Any'45'resp'45''8621'_308
      (coe
         (\ v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
              (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
              v1 v4 v5 v7 v6))
      (coe v2) (coe v3)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.Unique-resp-↭
d_Unique'45'resp'45''8621'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Unique'45'resp'45''8621'_428 ~v0 ~v1 v2 v3 v4
  = du_Unique'45'resp'45''8621'_428 v2 v3 v4
du_Unique'45'resp'45''8621'_428 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Unique'45'resp'45''8621'_428 v0 v1 v2
  = coe
      du_AllPairs'45'resp'45''8621'_370
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              v5
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                 v4 v3 v6)))
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8777''45'resp'8322'_72)
      (coe v1) (coe v2)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.shift
d_shift_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_shift_436 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_shift_436 v2 v3 v4 v5 v6 v7
du_shift_436 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_shift_436 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
             v3
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
                (coe v0)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v5)))
      (:) v6 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v8 v9 v10 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32
                      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                      (coe v5))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v8 v9 v10 ->
                         coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                           (coe v9))))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                         (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                         (coe v5))))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v8 v9 v10 ->
                            coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                              (coe v9))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5))))
                   (let v8
                          = coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                              (coe v0) in
                    coe
                      (let v9
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (coe v8)) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v9))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7)
                                     (coe v5)))))))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         v6)
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         v2)
                      (coe
                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
                         (coe v0)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v7) (coe v5)))))
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                      v6)
                   (coe
                      du_shift_436 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                      (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.↭-split
d_'8621''45'split_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8621''45'split_472 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8621''45'split_472 v2 v3 v4 v5 v6 v7
du_'8621''45'split_472 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8621''45'split_472 v0 v1 v2 v3 v4 v5
  = coe
      du_helper_494 (coe v0) (coe v2) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
            (coe v4)))
      (coe v3) (coe v4) (coe v5)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
               (coe v4))))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.helper
d_helper_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_494 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9 v10 v11 v12 v13
  = du_helper_494 v2 v4 v8 v9 v10 v11 v12 v13
du_helper_494 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_494 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v10
        -> case coe v4 of
             []
               -> case coe v10 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v15 v16
                      -> case coe v2 of
                           (:) v17 v18
                             -> case coe v3 of
                                  (:) v19 v20
                                    -> case coe v7 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v25 v26
                                           -> coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v18)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                               (coe v0))
                                                            v17 v19 v1 v15 v25)
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                                  (coe v0)))
                                                            v18))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
                                                         (let v27
                                                                = coe
                                                                    MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                                    (coe v0) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                  (coe v27))
                                                               v18 v20
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v4) (coe v5))
                                                               v16 v26)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v11 v12
               -> case coe v10 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v17 v18
                      -> case coe v2 of
                           (:) v19 v20
                             -> case coe v3 of
                                  (:) v21 v22
                                    -> case coe v7 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v27 v28
                                           -> coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v5)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                               (coe v0))
                                                            v19 v21 v11 v17 v27)
                                                         (let v29
                                                                = coe
                                                                    MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                                    (coe v0) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                  (coe v29))
                                                               v20 v22
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v12)
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                                        (coe v1))
                                                                     (coe v5)))
                                                               v18 v28)))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v4) (coe v5)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v12 v13
        -> case coe v2 of
             (:) v14 v15
               -> case coe v3 of
                    (:) v16 v17
                      -> case coe v4 of
                           []
                             -> case coe v7 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v22 v23
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v15)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (coe v0))
                                                     v14 v16 v1 v12 v22)
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (coe
                                                           MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                           (coe v0)))
                                                     v15))
                                               (coe
                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'691''45''8779'_130
                                                  (coe v0) (coe v15) (coe v17)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                     (coe v4) (coe v5))
                                                  (coe v13) (coe v23))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           (:) v18 v19
                             -> case coe v7 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v24 v25
                                    -> let v26
                                             = coe
                                                 du_helper_494 (coe v0) (coe v1) (coe v15) (coe v17)
                                                 (coe v19) (coe v5) (coe v13) (coe v25) in
                                       coe
                                         (case coe v26 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                              -> case coe v28 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                     -> case coe v30 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                            -> coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe v18) (coe v27))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe v29)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                (coe v0))
                                                                             v14 v16 v18 v12 v24)
                                                                          v31)
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                (coe v0))
                                                                             v18)
                                                                          v32)))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v14 v15 v16
        -> case coe v2 of
             (:) v17 v18
               -> case coe v18 of
                    (:) v19 v20
                      -> case coe v3 of
                           (:) v21 v22
                             -> case coe v22 of
                                  (:) v23 v24
                                    -> case coe v4 of
                                         []
                                           -> case coe v5 of
                                                (:) v25 v26
                                                  -> case coe v7 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v31 v32
                                                         -> case coe v32 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v37 v38
                                                                -> coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v25) (coe v4))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe v20)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                    (coe v0))
                                                                                 v17 v23 v25 v14
                                                                                 v37)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                       (coe v0))
                                                                                    v19 v21 v1 v15
                                                                                    v31)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                                                          (coe v0)))
                                                                                    v20)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                    (coe v0))
                                                                                 v25)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'691''45''8779'_130
                                                                                 (coe v0) (coe v20)
                                                                                 (coe v24) (coe v26)
                                                                                 (coe v16)
                                                                                 (coe v38)))))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         (:) v25 v26
                                           -> case coe v26 of
                                                []
                                                  -> case coe v7 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v31 v32
                                                         -> case coe v32 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v37 v38
                                                                -> coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v26)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v25) (coe v20))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                    (coe v0))
                                                                                 v17 v23 v1 v14 v37)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                       (coe v0))
                                                                                    v19 v21 v25 v15
                                                                                    v31)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                                                                                          (coe v0)))
                                                                                    v20)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                    (coe v0))
                                                                                 v25)
                                                                              (coe
                                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'691''45''8779'_130
                                                                                 (coe v0) (coe v20)
                                                                                 (coe v24)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                    (coe v26)
                                                                                    (coe v5))
                                                                                 (coe v16)
                                                                                 (coe v38)))))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                (:) v27 v28
                                                  -> case coe v7 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v33 v34
                                                         -> case coe v34 of
                                                              MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v39 v40
                                                                -> let v41
                                                                         = coe
                                                                             du_helper_494 (coe v0)
                                                                             (coe v1) (coe v20)
                                                                             (coe v24) (coe v28)
                                                                             (coe v5) (coe v16)
                                                                             (coe v40) in
                                                                   coe
                                                                     (case coe v41 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v42 v43
                                                                          -> case coe v43 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v44 v45
                                                                                 -> case coe v45 of
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v46 v47
                                                                                        -> coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   v27)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                   (coe
                                                                                                      v25)
                                                                                                   (coe
                                                                                                      v42)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   v44)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         v17
                                                                                                         v23
                                                                                                         v27
                                                                                                         v14
                                                                                                         v39)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            v19
                                                                                                            v21
                                                                                                            v25
                                                                                                            v15
                                                                                                            v33)
                                                                                                         v46))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         v27)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                                                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         v25)
                                                                                                      v47)))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v9 v11 v12
        -> let v13
                 = coe
                     du_helper_494 (coe v0) (coe v1) (coe v9) (coe v3) (coe v4) (coe v5)
                     (coe v12) (coe v7) in
           coe
             (case coe v13 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                  -> case coe v15 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                         -> case coe v17 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                -> let v20
                                         = coe
                                             du_helper_494 (coe v0) (coe v1) (coe v2) (coe v9)
                                             (coe v14) (coe v16) (coe v11) (coe v18) in
                                   coe
                                     (case coe v20 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                          -> case coe v22 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                 -> case coe v24 of
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                        -> coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v21)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v23)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v25)
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'8242'_162
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                         (coe v21) (coe v23))
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                         (coe v14) (coe v16))
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                         (coe v4) (coe v5))
                                                                      (coe v26) (coe v19))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._._._↭_
d__'8621'__668 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__668 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.map⁺
d_map'8314'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_map'8314'_672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_map'8314'_672 v6 v7 v8 v9 v10
du_map'8314'_672 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_map'8314'_672 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_map'8314'_420
                (coe v2) (coe v3)
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.du_map_120
                   (coe v1) (coe v2) (coe v3) (coe v7)))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                           (coe v1 v11 v13 v9)
                           (coe
                              du_map'8314'_672 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v11 v12 v13
        -> case coe v2 of
             (:) v14 v15
               -> case coe v15 of
                    (:) v16 v17
                      -> case coe v3 of
                           (:) v18 v19
                             -> case coe v19 of
                                  (:) v20 v21
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                         (coe v1 v14 v20 v11) (coe v1 v16 v18 v12)
                                         (coe
                                            du_map'8314'_672 (coe v0) (coe v1) (coe v17) (coe v21)
                                            (coe v13))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v6 v8 v9
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v10 v11 -> v11)
                (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)) v2 v6)
             (coe du_map'8314'_672 (coe v0) (coe v1) (coe v2) (coe v6) (coe v8))
             (coe du_map'8314'_672 (coe v0) (coe v1) (coe v6) (coe v3) (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.filter⁺
d_filter'8314'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_filter'8314'_712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 v7 v8 v9
  = du_filter'8314'_712 v5 v7 v8 v9
du_filter'8314'_712 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_filter'8314'_712 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v6
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_filter'8314'_222
                (coe v0) (coe v1) (coe v2) (coe v6))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> let v14 = coe v0 v10 in
                         coe
                           (let v15 = coe v0 v12 in
                            coe
                              (case coe v14 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                   -> if coe v16
                                        then coe
                                               seq (coe v17)
                                               (case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                    -> if coe v18
                                                         then coe
                                                                seq (coe v19)
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                   v8
                                                                   (coe
                                                                      du_filter'8314'_712 (coe v0)
                                                                      (coe v11) (coe v13) (coe v9)))
                                                         else coe
                                                                seq (coe v19)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                   erased)
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        else coe
                                               seq (coe v17)
                                               (case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                    -> if coe v18
                                                         then coe
                                                                seq (coe v19)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                   erased)
                                                         else coe
                                                                seq (coe v19)
                                                                (coe
                                                                   du_filter'8314'_712 (coe v0)
                                                                   (coe v11) (coe v13) (coe v9))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                 _ -> MAlonzo.RTE.mazUnreachableError))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v10 v11 v12
        -> case coe v1 of
             (:) v13 v14
               -> case coe v14 of
                    (:) v15 v16
                      -> case coe v2 of
                           (:) v17 v18
                             -> case coe v18 of
                                  (:) v19 v20
                                    -> let v21 = coe v0 v13 in
                                       coe
                                         (let v22 = coe v0 v17 in
                                          coe
                                            (case coe v21 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                 -> if coe v23
                                                      then coe
                                                             seq (coe v24)
                                                             (case coe v22 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                  -> if coe v25
                                                                       then case coe v26 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v27
                                                                                -> let v28
                                                                                         = coe
                                                                                             v0
                                                                                             v19 in
                                                                                   coe
                                                                                     (let v29
                                                                                            = coe
                                                                                                v0
                                                                                                v15 in
                                                                                      coe
                                                                                        (let v30
                                                                                               = case coe
                                                                                                        v29 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                     -> coe
                                                                                                          seq
                                                                                                          (coe
                                                                                                             v30)
                                                                                                          (coe
                                                                                                             seq
                                                                                                             (coe
                                                                                                                v31)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                erased))
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                         coe
                                                                                           (case coe
                                                                                                   v28 of
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                -> let v33
                                                                                                         = case coe
                                                                                                                  v29 of
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v33 v34
                                                                                                               -> case coe
                                                                                                                         v33 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                                                                                      -> case coe
                                                                                                                                v34 of
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                             -> coe
                                                                                                                                  MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                  erased
                                                                                                                           _ -> coe
                                                                                                                                  v30
                                                                                                                    _ -> coe
                                                                                                                           v30
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                   coe
                                                                                                     (if coe
                                                                                                           v31
                                                                                                        then case coe
                                                                                                                    v29 of
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                 -> if coe
                                                                                                                         v34
                                                                                                                      then case coe
                                                                                                                                  v32 of
                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                               -> case coe
                                                                                                                                         v35 of
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v37
                                                                                                                                      -> coe
                                                                                                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                                                                                                                           v10
                                                                                                                                           v11
                                                                                                                                           (coe
                                                                                                                                              du_filter'8314'_712
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v16)
                                                                                                                                              (coe
                                                                                                                                                 v20)
                                                                                                                                              (coe
                                                                                                                                                 v12))
                                                                                                                                    _ -> coe
                                                                                                                                           v33
                                                                                                                             _ -> coe
                                                                                                                                    v33
                                                                                                                      else (case coe
                                                                                                                                   v35 of
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                     erased
                                                                                                                              _ -> coe
                                                                                                                                     v33)
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        else (let v34
                                                                                                                    = case coe
                                                                                                                             v29 of
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                          -> case coe
                                                                                                                                    v34 of
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                                                                                                 -> case coe
                                                                                                                                           v35 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                        -> coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                             erased
                                                                                                                                      _ -> coe
                                                                                                                                             v33
                                                                                                                               _ -> coe
                                                                                                                                      v33
                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                              coe
                                                                                                                (case coe
                                                                                                                        v32 of
                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                     -> coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                          erased
                                                                                                                   _ -> coe
                                                                                                                          v34)))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       else (case coe v26 of
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                 -> let v28
                                                                                          = coe
                                                                                              v0
                                                                                              v19 in
                                                                                    coe
                                                                                      (let v29
                                                                                             = coe
                                                                                                 v0
                                                                                                 v15 in
                                                                                       coe
                                                                                         (let v30
                                                                                                = case coe
                                                                                                         v29 of
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                      -> coe
                                                                                                           seq
                                                                                                           (coe
                                                                                                              v30)
                                                                                                           (coe
                                                                                                              seq
                                                                                                              (coe
                                                                                                                 v31)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                 erased))
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v28 of
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                 -> let v33
                                                                                                          = case coe
                                                                                                                   v29 of
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v33 v34
                                                                                                                -> case coe
                                                                                                                          v33 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                       -> case coe
                                                                                                                                 v34 of
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v35
                                                                                                                              -> coe
                                                                                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                   erased
                                                                                                                            _ -> coe
                                                                                                                                   v30
                                                                                                                     _ -> coe
                                                                                                                            v30
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                    coe
                                                                                                      (if coe
                                                                                                            v31
                                                                                                         then case coe
                                                                                                                     v29 of
                                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                  -> if coe
                                                                                                                          v34
                                                                                                                       then case coe
                                                                                                                                   v35 of
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                     erased
                                                                                                                              _ -> coe
                                                                                                                                     v33
                                                                                                                       else (case coe
                                                                                                                                    v32 of
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                 -> case coe
                                                                                                                                           v35 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                        -> coe
                                                                                                                                             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                                                                                             v10
                                                                                                                                             (coe
                                                                                                                                                du_filter'8314'_712
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   v16)
                                                                                                                                                (coe
                                                                                                                                                   v20)
                                                                                                                                                (coe
                                                                                                                                                   v12))
                                                                                                                                      _ -> coe
                                                                                                                                             v33
                                                                                                                               _ -> coe
                                                                                                                                      v33)
                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                         else (let v34
                                                                                                                     = case coe
                                                                                                                              v29 of
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                           -> case coe
                                                                                                                                     v34 of
                                                                                                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                                  -> case coe
                                                                                                                                            v35 of
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                         -> coe
                                                                                                                                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                              erased
                                                                                                                                       _ -> coe
                                                                                                                                              v33
                                                                                                                                _ -> coe
                                                                                                                                       v33
                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                               coe
                                                                                                                 (case coe
                                                                                                                         v32 of
                                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                           erased
                                                                                                                    _ -> coe
                                                                                                                           v34)))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                      else coe
                                                             seq (coe v24)
                                                             (case coe v22 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                  -> if coe v25
                                                                       then case coe v26 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v27
                                                                                -> let v28
                                                                                         = coe
                                                                                             v0
                                                                                             v19 in
                                                                                   coe
                                                                                     (let v29
                                                                                            = coe
                                                                                                v0
                                                                                                v15 in
                                                                                      coe
                                                                                        (let v30
                                                                                               = case coe
                                                                                                        v28 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                     -> coe
                                                                                                          seq
                                                                                                          (coe
                                                                                                             v30)
                                                                                                          (coe
                                                                                                             seq
                                                                                                             (coe
                                                                                                                v31)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                erased))
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                         coe
                                                                                           (case coe
                                                                                                   v29 of
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                -> let v33
                                                                                                         = case coe
                                                                                                                  v28 of
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v33 v34
                                                                                                               -> case coe
                                                                                                                         v33 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                      -> case coe
                                                                                                                                v34 of
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v35
                                                                                                                             -> coe
                                                                                                                                  MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                  erased
                                                                                                                           _ -> coe
                                                                                                                                  v30
                                                                                                                    _ -> coe
                                                                                                                           v30
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                   coe
                                                                                                     (if coe
                                                                                                           v31
                                                                                                        then case coe
                                                                                                                    v28 of
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                 -> if coe
                                                                                                                         v34
                                                                                                                      then case coe
                                                                                                                                  v35 of
                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                    erased
                                                                                                                             _ -> coe
                                                                                                                                    v33
                                                                                                                      else (case coe
                                                                                                                                   v35 of
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                -> case coe
                                                                                                                                          v32 of
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v37
                                                                                                                                       -> coe
                                                                                                                                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                                                                                                                            v11
                                                                                                                                            (coe
                                                                                                                                               du_filter'8314'_712
                                                                                                                                               (coe
                                                                                                                                                  v0)
                                                                                                                                               (coe
                                                                                                                                                  v16)
                                                                                                                                               (coe
                                                                                                                                                  v20)
                                                                                                                                               (coe
                                                                                                                                                  v12))
                                                                                                                                     _ -> coe
                                                                                                                                            v33
                                                                                                                              _ -> coe
                                                                                                                                     v33)
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        else (let v34
                                                                                                                    = case coe
                                                                                                                             v28 of
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                          -> case coe
                                                                                                                                    v34 of
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                                 -> case coe
                                                                                                                                           v35 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                        -> coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                             erased
                                                                                                                                      _ -> coe
                                                                                                                                             v33
                                                                                                                               _ -> coe
                                                                                                                                      v33
                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                              coe
                                                                                                                (case coe
                                                                                                                        v32 of
                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                     -> coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                          erased
                                                                                                                   _ -> coe
                                                                                                                          v34)))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       else (case coe v26 of
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                 -> let v28
                                                                                          = coe
                                                                                              v0
                                                                                              v19 in
                                                                                    coe
                                                                                      (let v29
                                                                                             = coe
                                                                                                 v0
                                                                                                 v15 in
                                                                                       coe
                                                                                         (let v30
                                                                                                = case coe
                                                                                                         v28 of
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                      -> coe
                                                                                                           seq
                                                                                                           (coe
                                                                                                              v30)
                                                                                                           (coe
                                                                                                              seq
                                                                                                              (coe
                                                                                                                 v31)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                 erased))
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v29 of
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                 -> let v33
                                                                                                          = case coe
                                                                                                                   v28 of
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v33 v34
                                                                                                                -> case coe
                                                                                                                          v33 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                       -> case coe
                                                                                                                                 v34 of
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v35
                                                                                                                              -> coe
                                                                                                                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                   erased
                                                                                                                            _ -> coe
                                                                                                                                   v30
                                                                                                                     _ -> coe
                                                                                                                            v30
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                    coe
                                                                                                      (if coe
                                                                                                            v31
                                                                                                         then let v34
                                                                                                                    = case coe
                                                                                                                             v28 of
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                          -> case coe
                                                                                                                                    v34 of
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                                 -> case coe
                                                                                                                                           v35 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                        -> coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                             erased
                                                                                                                                      _ -> coe
                                                                                                                                             v33
                                                                                                                               _ -> coe
                                                                                                                                      v33
                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                                              coe
                                                                                                                (case coe
                                                                                                                        v32 of
                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v35
                                                                                                                     -> coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                          erased
                                                                                                                   _ -> coe
                                                                                                                          v34)
                                                                                                         else (case coe
                                                                                                                      v28 of
                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v34 v35
                                                                                                                   -> if coe
                                                                                                                           v34
                                                                                                                        then case coe
                                                                                                                                    v35 of
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v36
                                                                                                                                 -> coe
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                                      erased
                                                                                                                               _ -> coe
                                                                                                                                      v33
                                                                                                                        else (case coe
                                                                                                                                     v35 of
                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                  -> case coe
                                                                                                                                            v32 of
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                         -> coe
                                                                                                                                              du_filter'8314'_712
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v16)
                                                                                                                                              (coe
                                                                                                                                                 v20)
                                                                                                                                              (coe
                                                                                                                                                 v12)
                                                                                                                                       _ -> coe
                                                                                                                                              v33
                                                                                                                                _ -> coe
                                                                                                                                       v33)
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v5 v7 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             (coe MAlonzo.Code.Data.List.Base.du_filter_664 (coe v0) (coe v5))
             (coe du_filter'8314'_712 (coe v0) (coe v1) (coe v5) (coe v7))
             (coe du_filter'8314'_712 (coe v0) (coe v5) (coe v2) (coe v8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++⁺ʳ
d_'43''43''8314''691'_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''8314''691'_1200 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'43''43''8314''691'_1200 v2 v3 v4 v5 v6
du_'43''43''8314''691'_1200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''8314''691'_1200 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v7
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_'43''43''8314'_302
                (coe v1) (coe v2) (coe v7)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                   (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                      (coe
                         MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                         (coe v0)))
                   v3))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                           v9
                           (coe
                              du_'43''43''8314''691'_1200 (coe v0) (coe v12) (coe v14) (coe v3)
                              (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v11 v12 v13
        -> case coe v1 of
             (:) v14 v15
               -> case coe v15 of
                    (:) v16 v17
                      -> case coe v2 of
                           (:) v18 v19
                             -> case coe v19 of
                                  (:) v20 v21
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                         v11 v12
                                         (coe
                                            du_'43''43''8314''691'_1200 (coe v0) (coe v17) (coe v21)
                                            (coe v3) (coe v13))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v6 v8 v9
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v6) (coe v3))
             (coe
                du_'43''43''8314''691'_1200 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v8))
             (coe
                du_'43''43''8314''691'_1200 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.dropMiddleElement-≋
d_dropMiddleElement'45''8779'_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_dropMiddleElement'45''8779'_1236 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_dropMiddleElement'45''8779'_1236 v2 v3 v4 v5 v6 v7 v8
du_dropMiddleElement'45''8779'_1236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_dropMiddleElement'45''8779'_1236 v0 v1 v2 v3 v4 v5 v6
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
                           v12
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v7 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v13 v14
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'737''45''8779'_98
                           (coe v0)
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4))
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                 (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                                 (coe v5)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v5)))
                           (coe v14)
                           (coe
                              du_shift_436 (coe v0) (coe v1) (coe v7) (coe v13) (coe v8)
                              (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v7 v8
        -> case coe v3 of
             []
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v13 v14
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'trans'691''45''8779'_130
                           (coe v0)
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v4)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                 (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                                 (coe v4)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3) (coe v5))
                           (coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                              v0
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v4)))
                              (coe
                                 du_shift_436 (coe v0) (coe v1) (coe v7)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (coe v0))
                                    v7 v1 v13)
                                 (coe v8) (coe v4)))
                           (coe v14)
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v9 v10
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v15 v16
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                           v15
                           (coe
                              du_dropMiddleElement'45''8779'_1236 (coe v0) (coe v1) (coe v8)
                              (coe v10) (coe v4) (coe v5) (coe v16))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋.Pointwise.Pointwise
d_Pointwise_1263 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.↭-shift
d_'8621''45'shift_1274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8621''45'shift_1274 ~v0 ~v1 v2 v3
  = du_'8621''45'shift_1274 v2 v3
du_'8621''45'shift_1274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8621''45'shift_1274 v0 v1
  = coe
      du_shift_436 (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
         v1)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++⁺ˡ
d_'43''43''8314''737'_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''8314''737'_1282 ~v0 ~v1 v2 v3 ~v4 ~v5 v6
  = du_'43''43''8314''737'_1282 v2 v3 v6
du_'43''43''8314''737'_1282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''8314''737'_1282 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                v3)
             (coe du_'43''43''8314''737'_1282 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++⁺
d_'43''43''8314'_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''8314'_1292 ~v0 ~v1 v2 v3 v4 v5 ~v6 v7 v8
  = du_'43''43''8314'_1292 v2 v3 v4 v5 v7 v8
du_'43''43''8314'_1292 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''8314'_1292 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
      (coe
         du_'43''43''8314''691'_1200 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
      (coe du_'43''43''8314''737'_1282 (coe v0) (coe v2) (coe v5))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.zoom
d_zoom_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_zoom_1306 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_zoom_1306 v2 v3 v4 v5 v6 v7
du_zoom_1306 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_zoom_1306 v0 v1 v2 v3 v4 v5
  = coe
      du_'43''43''8314''737'_1282 (coe v0) (coe v1)
      (coe
         du_'43''43''8314''691'_1200 (coe v0) (coe v3) (coe v4) (coe v2)
         (coe v5))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.inject
d_inject_1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_inject_1322 ~v0 ~v1 v2 v3 v4 ~v5 v6 v7 v8 v9
  = du_inject_1322 v2 v3 v4 v6 v7 v8 v9
du_inject_1322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_inject_1322 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4)))
      (coe
         du_'43''43''8314''737'_1282 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
               v1)
            v6))
      (coe
         du_'43''43''8314''691'_1200 (coe v0) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
         (coe v5))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-identityˡ
d_'43''43''45'identity'737'_1330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''45'identity'737'_1330 ~v0 ~v1 v2 v3
  = du_'43''43''45'identity'737'_1330 v2 v3
du_'43''43''45'identity'737'_1330 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''45'identity'737'_1330 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-identityʳ
d_'43''43''45'identity'691'_1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''45'identity'691'_1334 ~v0 ~v1 v2 v3
  = du_'43''43''45'identity'691'_1334 v2 v3
du_'43''43''45'identity'691'_1334 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''45'identity'691'_1334 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'reflexive_92
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-identity
d_'43''43''45'identity_1338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''45'identity_1338 ~v0 ~v1 v2
  = du_'43''43''45'identity_1338 v2
du_'43''43''45'identity_1338 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''45'identity_1338 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'43''43''45'identity'737'_1330 (coe v0))
      (coe du_'43''43''45'identity'691'_1334 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-assoc
d_'43''43''45'assoc_1340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''45'assoc_1340 ~v0 ~v1 v2 v3 v4 v5
  = du_'43''43''45'assoc_1340 v2 v3 v4 v5
du_'43''43''45'assoc_1340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''45'assoc_1340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'reflexive_92
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
         (coe v3))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-comm
d_'43''43''45'comm_1348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''45'comm_1348 ~v0 ~v1 v2 v3 v4
  = du_'43''43''45'comm_1348 v2 v3 v4
du_'43''43''45'comm_1348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''45'comm_1348 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
             v0
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
             v2 (coe du_'43''43''45'identity'691'_1334 (coe v0) (coe v2))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2)))
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v5 v6 v7 ->
                         coe
                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                           (coe v6))))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4)))
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                              (coe v6))))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                      (coe v0))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4)))
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
                   (let v5
                          = coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                              (coe v0) in
                    coe
                      (let v6
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (coe v5)) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v6))
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1)))))
                   (coe du_'8621''45'shift_1274 v0 v3 v2 v4))
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                      v3)
                   (coe du_'43''43''45'comm_1348 (coe v0) (coe v4) (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.shifts
d_shifts_1368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_shifts_1368 ~v0 ~v1 v2 v3 v4 v5 = du_shifts_1368 v2 v3 v4 v5
du_shifts_1368 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_shifts_1368 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                    (coe v5))))
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
            (coe v0))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
            (coe v3))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                       (coe v5))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
               (coe v3))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
               (coe v3))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     (\ v4 v5 v6 ->
                        coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                          (coe v5))))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
                  (coe v3))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3)))
               (let v4
                      = coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                          (coe v0) in
                coe
                  (let v5
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe v4)) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v5))
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v3))))))
               (coe
                  du_'43''43''45'assoc_1340 (coe v0) (coe v2) (coe v1) (coe v3)))
            (coe
               du_'43''43''8314''691'_1200 (coe v0)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v1))
               (coe v3)
               (coe du_'43''43''45'comm_1348 (coe v0) (coe v1) (coe v2))))
         (coe
            du_'43''43''45'assoc_1340 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-isMagma
d_'43''43''45'isMagma_1380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''43''45'isMagma_1380 ~v0 ~v1 v2
  = du_'43''43''45'isMagma_1380 v2
du_'43''43''45'isMagma_1380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'43''43''45'isMagma_1380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'isEquivalence_176
         (coe v0))
      (\ v1 v2 v3 v4 v5 v6 ->
         coe du_'43''43''8314'_1292 (coe v0) v1 v2 v3 v5 v6)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-isSemigroup
d_'43''43''45'isSemigroup_1382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''43''45'isSemigroup_1382 ~v0 ~v1 v2
  = du_'43''43''45'isSemigroup_1382 v2
du_'43''43''45'isSemigroup_1382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'43''43''45'isSemigroup_1382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'43''43''45'isMagma_1380 (coe v0))
      (coe du_'43''43''45'assoc_1340 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-isMonoid
d_'43''43''45'isMonoid_1384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''43''45'isMonoid_1384 ~v0 ~v1 v2
  = du_'43''43''45'isMonoid_1384 v2
du_'43''43''45'isMonoid_1384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'43''43''45'isMonoid_1384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'43''43''45'isSemigroup_1382 (coe v0))
      (coe du_'43''43''45'identity_1338 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-isCommutativeMonoid
d_'43''43''45'isCommutativeMonoid_1386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''43''45'isCommutativeMonoid_1386 ~v0 ~v1 v2
  = du_'43''43''45'isCommutativeMonoid_1386 v2
du_'43''43''45'isCommutativeMonoid_1386 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'43''43''45'isCommutativeMonoid_1386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'43''43''45'isMonoid_1384 (coe v0))
      (coe du_'43''43''45'comm_1348 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-magma
d_'43''43''45'magma_1388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'43''43''45'magma_1388 ~v0 ~v1 v2 = du_'43''43''45'magma_1388 v2
du_'43''43''45'magma_1388 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'43''43''45'magma_1388 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe du_'43''43''45'isMagma_1380 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-semigroup
d_'43''43''45'semigroup_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'43''43''45'semigroup_1390 ~v0 ~v1 v2
  = du_'43''43''45'semigroup_1390 v2
du_'43''43''45'semigroup_1390 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'43''43''45'semigroup_1390 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe du_'43''43''45'isSemigroup_1382 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-monoid
d_'43''43''45'monoid_1392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'43''43''45'monoid_1392 ~v0 ~v1 v2
  = du_'43''43''45'monoid_1392 v2
du_'43''43''45'monoid_1392 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'43''43''45'monoid_1392 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_'43''43''45'isMonoid_1384 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++-commutativeMonoid
d_'43''43''45'commutativeMonoid_1394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''43''45'commutativeMonoid_1394 ~v0 ~v1 v2
  = du_'43''43''45'commutativeMonoid_1394 v2
du_'43''43''45'commutativeMonoid_1394 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''43''45'commutativeMonoid_1394 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_'43''43''45'isCommutativeMonoid_1386 (coe v0))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.dropMiddleElement
d_dropMiddleElement_1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_dropMiddleElement_1406 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_dropMiddleElement_1406 v2 v3 v4 v5 v6 v7 v8
du_dropMiddleElement_1406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_dropMiddleElement_1406 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8621''45'split_472 (coe v0)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                     (coe v4)))
               (coe v1) (coe v3) (coe v5) (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_helper_494 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                        (coe v5)))
                  (coe v3) (coe v5) (coe v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe
                           MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                           (coe v5))))))))
      (coe
         du_dropMiddleElement'45''8779'_1236 (coe v0) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8621''45'split_472 (coe v0)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                     (coe v4)))
               (coe v1) (coe v3) (coe v5) (coe v6)))
         (coe v4)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_helper_494 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                        (coe v5)))
                  (coe v3) (coe v5) (coe v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe
                           MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                           (coe v5)))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_'8621''45'split_472 (coe v0)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                           (coe v4)))
                     (coe v1) (coe v3) (coe v5) (coe v6))))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_'8621''45'split_472 (coe v0)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                        (coe v4)))
                  (coe v1) (coe v3) (coe v5) (coe v6)))))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.dropMiddle
d_dropMiddle_1438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_dropMiddle_1438 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_dropMiddle_1438 v2 v3 v4 v5 v6 v7 v8
du_dropMiddle_1438 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_dropMiddle_1438 v0 v1 v2 v3 v4 v5 v6
  = case coe v1 of
      [] -> coe v6
      (:) v7 v8
        -> coe
             du_dropMiddle_1438 (coe v0) (coe v8) (coe v2) (coe v3) (coe v4)
             (coe v5)
             (coe
                du_dropMiddleElement_1406 (coe v0) (coe v7) (coe v2) (coe v3)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v4))
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v5))
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.drop-∷
d_drop'45''8759'_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_drop'45''8759'_1456 ~v0 ~v1 v2 v3 v4 v5
  = du_drop'45''8759'_1456 v2 v3 v4 v5
du_drop'45''8759'_1456 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_drop'45''8759'_1456 v0 v1 v2 v3
  = coe
      du_dropMiddleElement_1406 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2)
      (coe v3)
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.∷↭∷ʳ
d_'8759''8621''8759''691'_1462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8759''8621''8759''691'_1462 ~v0 ~v1 v2 v3 v4
  = du_'8759''8621''8759''691'_1462 v2 v3 v4
du_'8759''8621''8759''691'_1462 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8759''8621''8759''691'_1462 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
      v0
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
         (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v3 v4 v5 ->
                     coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                       (coe v4))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2))
               (let v3
                      = coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                          (coe v0) in
                coe
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe v3)) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)))))
               erased)
            (coe
               du_'8621''45'shift_1274 v0 v1 v2
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.↭-reverse
d_'8621''45'reverse_1474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8621''45'reverse_1474 ~v0 ~v1 v2 v3
  = du_'8621''45'reverse_1474 v2 v3
du_'8621''45'reverse_1474 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8621''45'reverse_1474 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
             (coe v0) (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v1) v1
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v4 v5 v6 v7 v8 -> v8)
                (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v1)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'8759''691'__464
                   (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v3) (coe v2))
                v1
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                              (coe v5))))
                   (coe
                      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                      (coe v0))
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'8759''691'__464
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v3) (coe v2))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v3))
                   v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                                 (coe v5))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v3))
                      v1 v1
                      (let v4
                             = coe
                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                                 (coe v0) in
                       coe
                         (let v5
                                = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (coe v4)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe v5))
                               (coe v1))))
                      (coe
                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                            v2)
                         (coe du_'8621''45'reverse_1474 (coe v0) (coe v3))))
                   (coe
                      du_'8759''8621''8759''691'_1462 (coe v0) (coe v2)
                      (coe MAlonzo.Code.Data.List.Base.du_reverse_460 v3)))
                erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.++↭ʳ++
d_'43''43''8621''691''43''43'_1488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'43''43''8621''691''43''43'_1488 ~v0 ~v1 v2 v3 v4
  = du_'43''43''8621''691''43''43'_1488 v2 v3 v4
du_'43''43''8621''691''43''43'_1488 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'43''43''8621''691''43''43'_1488 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
             (coe v0)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                   (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v3))
                   (coe v2)))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                v0
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32
                      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v3))
                      (coe v2)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2)))
                (coe du_'8621''45'shift_1274 v0 v3 v4 v2))
             (coe
                du_'43''43''8621''691''43''43'_1488 (coe v0) (coe v4)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.partition-↭
d_partition'45''8621'_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_partition'45''8621'_1512 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_partition'45''8621'_1512 v2 v5 v6
du_partition'45''8621'_1512 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_partition'45''8621'_1512 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
             (coe v0) (coe v2)
      (:) v3 v4
        -> let v5
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v1 v3) in
           coe
             (if coe v5
                then coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                          v3)
                       (coe du_partition'45''8621'_1512 (coe v0) (coe v1) (coe v4))
                else coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1) (coe v4)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1)
                                   (coe v4)))))
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                             v3)
                          (coe du_partition'45''8621'_1512 (coe v0) (coe v1) (coe v4)))
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                          v0
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1) (coe v4)))
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v3))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1)
                                      (coe v4)))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1)
                                      (coe v4)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1)
                                      (coe v4)))))
                          (coe
                             du_'8621''45'shift_1274 v0 v3
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1) (coe v4)))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_partition_696 (coe v1)
                                   (coe v4))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.merge-↭
d_merge'45''8621'_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_merge'45''8621'_1546 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_merge'45''8621'_1546 v2 v5 v6 v7
du_merge'45''8621'_1546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_merge'45''8621'_1546 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_merge_192 (coe v1) (coe v3)
                       (coe v3))
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'refl_94
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_merge_192 (coe v1) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                    v0
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
                    v2 (coe du_'43''43''45'identity'691'_1334 (coe v0) (coe v2))
             (:) v6 v7
               -> let v8
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v1 v4 v6) in
                  coe
                    (let v9
                           = coe
                               du_merge'45''8621'_1546 (coe v0) (coe v1) (coe v5) (coe v3) in
                     coe
                       (let v10
                              = coe
                                  du_merge'45''8621'_1546 (coe v0) (coe v1) (coe v2) (coe v7) in
                        coe
                          (if coe v8
                             then coe
                                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (coe v0))
                                       v4)
                                    v9
                             else coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (\ v11 v12 v13 ->
                                       coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                         v13)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_merge_192 (coe v1) (coe v2)
                                          (coe v7)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5)
                                          (coe v3)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                          (coe
                                             (\ v11 v12 v13 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                                                  (coe v12))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_merge_192 (coe v1)
                                             (coe v2) (coe v7)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe v5) (coe v7))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5)
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                             (coe
                                                (\ v11 v12 v13 ->
                                                   coe
                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
                                                     (coe v12))))
                                          (coe
                                             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v4)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v5) (coe v7))))
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe v5) (coe v3)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v11 v12 v13 v14 v15 -> v15)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe v2) (coe v3))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v4)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v5) (coe v3)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe v4)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v5) (coe v3)))
                                             (let v11
                                                    = coe
                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'setoid_178
                                                        (coe v0) in
                                              coe
                                                (let v12
                                                       = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                              (coe v11)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                         (coe v12))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v5) (coe v3))))))
                                             erased)
                                          (coe du_'8621''45'shift_1274 v0 v6 v2 v7))
                                       (coe
                                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                (coe v0))
                                             v6)
                                          v10)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.commutativeMonoid
d_commutativeMonoid_1602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_commutativeMonoid_1602 ~v0 ~v1 ~v2 v3 v4 v5
  = du_commutativeMonoid_1602 v3 v4 v5
du_commutativeMonoid_1602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_commutativeMonoid_1602 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      v0 v1 v2
-- Data.List.Relation.Binary.Permutation.Setoid.Properties._.foldr-commMonoid
d_foldr'45'commMonoid_1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  AgdaAny
d_foldr'45'commMonoid_1676 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_foldr'45'commMonoid_1676 v3 v4 v5 v6 v7 v8
du_foldr'45'commMonoid_1676 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  AgdaAny
du_foldr'45'commMonoid_1676 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_foldr'8314'_472
             (coe v3) (coe v4) (coe v0) (coe v0)
             (coe
                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2)))))
             (coe v1) (coe v1)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2)))))
                v1)
             (coe v8)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v10 v11
        -> case coe v3 of
             (:) v12 v13
               -> case coe v4 of
                    (:) v14 v15
                      -> coe
                           MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                           (MAlonzo.Code.Algebra.Structures.d_isMagma_480
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2))))
                           v12 v14
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (coe MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0) (coe v1))
                              (\ v16 v17 -> v16) v13 v15)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v16 v17 -> v17)
                              (coe MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0) (coe v1))
                              v13 v15)
                           v10
                           (coe
                              du_foldr'45'commMonoid_1676 (coe v0) (coe v1) (coe v2) (coe v13)
                              (coe v15) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v12 v13 v14
        -> case coe v3 of
             (:) v15 v16
               -> case coe v16 of
                    (:) v17 v18
                      -> case coe v4 of
                           (:) v19 v20
                             -> case coe v20 of
                                  (:) v21 v22
                                    -> coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                         (\ v23 v24 v25 ->
                                            coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                              v25)
                                         (coe
                                            v0 v15
                                            (coe
                                               v0 v17
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0)
                                                  (coe v1) (coe v18))))
                                         (coe
                                            v0 v19
                                            (coe
                                               v0 v21
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0)
                                                  (coe v1) (coe v22))))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                (coe v2) in
                                                      coe
                                                        (let v24
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v23) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v24))))))))
                                            (coe
                                               v0 v15
                                               (coe
                                                  v0 v17
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe v0) (coe v1) (coe v18))))
                                            (coe
                                               v0 v15
                                               (coe
                                                  v0 v17
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe v0) (coe v1) (coe v22))))
                                            (coe
                                               v0 v19
                                               (coe
                                                  v0 v21
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe v0) (coe v1) (coe v22))))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                   (coe v2) in
                                                         coe
                                                           (let v24
                                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                      (coe v23) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                    (coe v24))))))))
                                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                (coe v2) in
                                                      coe
                                                        (let v24
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v23) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v24)))))))
                                               (coe
                                                  v0 v15
                                                  (coe
                                                     v0 v17
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe v0) (coe v1) (coe v22))))
                                               (coe
                                                  v0 (coe v0 v15 v17)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe v0) (coe v1) (coe v22)))
                                               (coe
                                                  v0 v19
                                                  (coe
                                                     v0 v21
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe v0) (coe v1) (coe v22))))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                           (let v23
                                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                      (coe v2) in
                                                            coe
                                                              (let v24
                                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                         (coe v23) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                       (coe v24))))))))
                                                  (coe
                                                     v0 (coe v0 v15 v17)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe v0) (coe v1) (coe v22)))
                                                  (coe
                                                     v0 (coe v0 v17 v15)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe v0) (coe v1) (coe v22)))
                                                  (coe
                                                     v0 v19
                                                     (coe
                                                        v0 v21
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe v0) (coe v1) (coe v22))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                              (let v23
                                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                         (coe v2) in
                                                               coe
                                                                 (let v24
                                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                            (coe v23) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                          (coe v24))))))))
                                                     (coe
                                                        v0 (coe v0 v17 v15)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe v0) (coe v1) (coe v22)))
                                                     (coe
                                                        v0 (coe v0 v19 v21)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe v0) (coe v1) (coe v22)))
                                                     (coe
                                                        v0 v19
                                                        (coe
                                                           v0 v21
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1) (coe v22))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                 (let v23
                                                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                            (coe v2) in
                                                                  coe
                                                                    (let v24
                                                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                               (coe v23) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                             (coe v24))))))))
                                                        (coe
                                                           v0 (coe v0 v19 v21)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1) (coe v22)))
                                                        (coe
                                                           v0 v19
                                                           (coe
                                                              v0 v21
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                 (coe v0) (coe v1) (coe v22))))
                                                        (coe
                                                           v0 v19
                                                           (coe
                                                              v0 v21
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                 (coe v0) (coe v1) (coe v22))))
                                                        (let v23
                                                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                      (let v23
                                                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                                 (coe v2) in
                                                                       coe
                                                                         (let v24
                                                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                    (coe v23) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                               (coe
                                                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                                  (coe v24)))))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                 (coe v23))
                                                              (coe
                                                                 v0 v19
                                                                 (coe
                                                                    v0 v21
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                       (coe v0) (coe v1)
                                                                       (coe v22))))))
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_assoc_482
                                                           (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                 (coe v2)))
                                                           v19 v21
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1) (coe v22))))
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                (coe v2) in
                                                      coe
                                                        (let v24
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v23) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v24))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                 (coe v0) (coe v1) (coe v22))
                                                              (coe v0 v17 v15) (coe v0 v19 v21)
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                                                                 (MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                          (coe v2))))
                                                                 v17 v19 v15 v21 v13 v12)))))
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                             (coe v2) in
                                                   coe
                                                     (let v24
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                (coe v23) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                              (coe v24))
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1) (coe v22))
                                                           (coe v0 v15 v17) (coe v0 v17 v15)
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_comm_748
                                                              v2 v15 v17)))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_assoc_482
                                                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                        (coe v2)))
                                                  v15 v17
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe v0) (coe v1) (coe v22))))
                                            (let v23
                                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                       (coe v2) in
                                             coe
                                               (let v24
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                          (coe v23) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                        (coe v24))
                                                     (coe v15)
                                                     (coe
                                                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                        (coe v0 v17) (\ v25 v26 -> v25)
                                                        (coe
                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1))
                                                           (\ v25 v26 -> v25) v18 v22)
                                                        (coe
                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                           (\ v25 v26 -> v26)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1))
                                                           v18 v22))
                                                     (coe
                                                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                        (\ v25 v26 -> v26) (coe v0 v17)
                                                        (coe
                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1))
                                                           (\ v25 v26 -> v25) v18 v22)
                                                        (coe
                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                           (\ v25 v26 -> v26)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                              (coe v0) (coe v1))
                                                           v18 v22))
                                                     (let v25
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                (coe v2) in
                                                      coe
                                                        (let v26
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v25) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v26))
                                                              (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                    (coe v0) (coe v1))
                                                                 (\ v27 v28 -> v27) v18 v22)
                                                              (coe
                                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                 (\ v27 v28 -> v28)
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                    (coe v0) (coe v1))
                                                                 v18 v22)
                                                              (coe
                                                                 du_foldr'45'commMonoid_1676
                                                                 (coe v0) (coe v1) (coe v2)
                                                                 (coe v18) (coe v22)
                                                                 (coe v14)))))))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v7 v9 v10
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2)))))
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                (coe MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0) (coe v1))
                (\ v11 v12 -> v11) v3 v7)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v11 v12 -> v12)
                (coe MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0) (coe v1)) v3
                v7)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v11 v12 -> v12)
                (coe MAlonzo.Code.Data.List.Base.du_foldr_216 (coe v0) (coe v1)) v7
                v4)
             (coe
                du_foldr'45'commMonoid_1676 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v7) (coe v9))
             (coe
                du_foldr'45'commMonoid_1676 (coe v0) (coe v1) (coe v2) (coe v7)
                (coe v4) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.≋⇒↭
d_'8779''8658''8621'_1750 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8779''8658''8621'_1750 ~v0 ~v1 ~v2 = du_'8779''8658''8621'_1750
du_'8779''8658''8621'_1750 ::
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8779''8658''8621'_1750
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.↭-respʳ-≋
d_'8621''45'resp'691''45''8779'_1752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8621''45'resp'691''45''8779'_1752 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8621''45'resp'691''45''8779'_1752 v2 v3 v4 v5 v6 v7
du_'8621''45'resp'691''45''8779'_1752 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8621''45'resp'691''45''8779'_1752 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
             (let v9
                    = coe
                        MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                        (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                   (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                   v1 v2 v3 v8 v4))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v10 v11
        -> case coe v1 of
             (:) v12 v13
               -> case coe v2 of
                    (:) v14 v15
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                               (coe v0))
                                            v12 v14 v22 v10 v20)
                                         (coe
                                            du_'8621''45'resp'691''45''8779'_1752 (coe v0) (coe v13)
                                            (coe v15) (coe v23) (coe v21) (coe v11))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v12 v13 v14
        -> case coe v1 of
             (:) v15 v16
               -> case coe v16 of
                    (:) v17 v18
                      -> case coe v2 of
                           (:) v19 v20
                             -> case coe v20 of
                                  (:) v21 v22
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v27 v28
                                           -> case coe v3 of
                                                (:) v29 v30
                                                  -> case coe v28 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v35 v36
                                                         -> case coe v30 of
                                                              (:) v37 v38
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                           (coe v0))
                                                                        v15 v21 v37 v12 v35)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                           (coe v0))
                                                                        v17 v19 v29 v13 v27)
                                                                     (coe
                                                                        du_'8621''45'resp'691''45''8779'_1752
                                                                        (coe v0) (coe v18) (coe v22)
                                                                        (coe v38) (coe v36)
                                                                        (coe v14))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v7 v9 v10
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             v7 v9
             (coe
                du_'8621''45'resp'691''45''8779'_1752 (coe v0) (coe v7) (coe v2)
                (coe v3) (coe v4) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.↭-respˡ-≋
d_'8621''45'resp'737''45''8779'_1784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
d_'8621''45'resp'737''45''8779'_1784 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8621''45'resp'737''45''8779'_1784 v2 v3 v4 v5 v6 v7
du_'8621''45'resp'737''45''8779'_1784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28
du_'8621''45'resp'737''45''8779'_1784 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v8
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38
             (let v9
                    = coe
                        MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                        (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                   (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                   v3 v2 v1
                   (let v10
                          = coe
                              MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                              (coe v0) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v10))
                         v2 v3 v4))
                   v8))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v10 v11
        -> case coe v1 of
             (:) v12 v13
               -> case coe v2 of
                    (:) v14 v15
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                               (coe v0))
                                            v22 v14 v12
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (coe v0))
                                               v14 v22 v20)
                                            v10)
                                         (coe
                                            du_'8621''45'resp'737''45''8779'_1784 (coe v0) (coe v13)
                                            (coe v15) (coe v23) (coe v21) (coe v11))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v12 v13 v14
        -> case coe v1 of
             (:) v15 v16
               -> case coe v16 of
                    (:) v17 v18
                      -> case coe v2 of
                           (:) v19 v20
                             -> case coe v20 of
                                  (:) v21 v22
                                    -> case coe v4 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v27 v28
                                           -> case coe v3 of
                                                (:) v29 v30
                                                  -> case coe v28 of
                                                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v35 v36
                                                         -> case coe v30 of
                                                              (:) v37 v38
                                                                -> coe
                                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                           (coe v0))
                                                                        v29 v19 v17
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                                           (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                              (coe v0))
                                                                           v19 v29 v27)
                                                                        v12)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                           (coe v0))
                                                                        v37 v21 v15
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                                           (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                              (coe v0))
                                                                           v21 v37 v35)
                                                                        v13)
                                                                     (coe
                                                                        du_'8621''45'resp'737''45''8779'_1784
                                                                        (coe v0) (coe v18) (coe v22)
                                                                        (coe v38) (coe v36)
                                                                        (coe v14))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v7 v9 v10
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76
             v7
             (coe
                du_'8621''45'resp'737''45''8779'_1784 (coe v0) (coe v7) (coe v2)
                (coe v3) (coe v4) (coe v9))
             v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.0<steps
d_0'60'steps_1818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_0'60'steps_1818 ~v0 ~v1 ~v2 v3 v4 v5
  = du_0'60'steps_1818 v3 v4 v5
du_0'60'steps_1818 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_0'60'steps_1818 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_refl_38 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_prep_50 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_m'60'n'8658'm'60'1'43'n_3088
                           (coe du_0'60'steps_1818 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_swap_68 v9 v10 v11
        -> case coe v0 of
             (:) v12 v13
               -> case coe v13 of
                    (:) v14 v15
                      -> case coe v1 of
                           (:) v16 v17
                             -> case coe v17 of
                                  (:) v18 v19
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Properties.du_m'60'n'8658'm'60'1'43'n_3088
                                         (coe du_0'60'steps_1818 (coe v15) (coe v19) (coe v11))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.C_trans_76 v4 v6 v7
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3018
             (coe du_0'60'steps_1818 (coe v0) (coe v4) (coe v6))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_steps_58
                   v0 v4 v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.steps-respˡ
d_steps'45'resp'737'_1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_steps'45'resp'737'_1838 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.steps-respʳ
d_steps'45'resp'691'_1860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_steps'45'resp'691'_1860 = erased
-- Data.List.Relation.Binary.Permutation.Setoid.Properties.split
d_split_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_split_1890 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_split_1890 v2 v3 v4 v5 v6 v7
du_split_1890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_split_1890 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              du_helper_494 (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                    (coe v3)))
              (coe v2) (coe v3) (coe v5)
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
                       (coe v3)))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> case coe v10 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v11))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
