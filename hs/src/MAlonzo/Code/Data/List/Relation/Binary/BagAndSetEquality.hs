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

module MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Membership.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Data.Product.Function.Dependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Properties.Inverse
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Function.Related.TypeIsomorphisms
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.List.Relation.Binary.BagAndSetEquality.[_]-Order
d_'91'_'93''45'Order_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'91'_'93''45'Order_30 ~v0 v1 ~v2 = du_'91'_'93''45'Order_30 v1
du_'91'_'93''45'Order_30 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'91'_'93''45'Order_30 v0
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_InducedPreorder'8322'_392
      (coe v0)
-- Data.List.Relation.Binary.BagAndSetEquality.[_]-Equality
d_'91'_'93''45'Equality_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'91'_'93''45'Equality_36 ~v0 v1 ~v2
  = du_'91'_'93''45'Equality_36 v1
du_'91'_'93''45'Equality_36 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_'91'_'93''45'Equality_36 v0
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_InducedEquivalence'8322'_482
      (coe v0)
-- Data.List.Relation.Binary.BagAndSetEquality._∼[_]_
d__'8764''91'_'93'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] -> ()
d__'8764''91'_'93'__46 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.ListMonad._>>=_
d__'62''62''61'__188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__188 ~v0 ~v1 ~v2 v3 v4
  = du__'62''62''61'__188 v3 v4
du__'62''62''61'__188 ::
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du__'62''62''61'__188 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v1) (coe v0)
-- Data.List.Relation.Binary.BagAndSetEquality.ListMonad._⊗_
d__'8855'__190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8855'__190 ~v0 = du__'8855'__190
du__'8855'__190 ::
  () ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8855'__190
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8855'__76
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.ListMonad._⊛_
d__'8859'__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__192 ~v0 = du__'8859'__192
du__'8859'__192 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8859'__192
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.MP.associative
d_associative_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_associative_218 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.cong
d_cong_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_220 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.left-identity
d_left'45'identity_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'identity_222 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.left-zero
d_left'45'zero_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'zero_224 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.right-distributive
d_right'45'distributive_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'distributive_226 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.right-identity
d_right'45'identity_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'identity_228 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.MP.right-zero
d_right'45'zero_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'zero_230 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.bag-=⇒
d_bag'45''61''8658'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> AgdaAny
d_bag'45''61''8658'_234 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_bag'45''61''8658'_234 v4 v5 v6
du_bag'45''61''8658'_234 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> AgdaAny
du_bag'45''61''8658'_234 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82 v0
      (coe v1 v2)
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base._IsRelatedTo_
d__IsRelatedTo__246 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base._∎
d__'8718'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_248 ~v0 ~v1 = du__'8718'_248
du__'8718'_248 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_248
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.IsEquality
d_IsEquality_250 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.IsEquality?
d_IsEquality'63'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_252 ~v0 ~v1 = du_IsEquality'63'_252
du_IsEquality'63'_252 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_252 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.begin_
d_begin__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__254 ~v0 ~v1 = du_begin__254
du_begin__254 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__254
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.begin_
d_begin__256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__256 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.equalitySubRelation
d_equalitySubRelation_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_258 ~v0 ~v1 = du_equalitySubRelation_258
du_equalitySubRelation_258 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_258
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.extractEquality
d_extractEquality_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_262 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.start
d_start_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_268 ~v0 ~v1 = du_start_268
du_start_268 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_268
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡
d_step'45''8801'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_280 ~v0 ~v1 = du_step'45''8801'_280
du_step'45''8801'_280 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_280
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_282 ~v0 ~v1 ~v2 ~v3 v4
  = du_step'45''8801''45''8739'_282 v4
du_step'45''8801''45''8739'_282 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_282 v0 = coe v0
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_284 ~v0 ~v1
  = du_step'45''8801''45''10216'_284
du_step'45''8801''45''10216'_284 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_284
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_286 ~v0 ~v1
  = du_step'45''8801''45''10217'_286
du_step'45''8801''45''10217'_286 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_286
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡˘
d_step'45''8801''728'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_288 ~v0 ~v1 = du_step'45''8801''728'_288
du_step'45''8801''728'_288 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_288
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.stop
d_stop_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_292 ~v0 ~v1 = du_stop_292
du_stop_292 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_292
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≈-go
d_'8776''45'go_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_294 ~v0 ~v1 = du_'8776''45'go_294
du_'8776''45'go_294 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_294
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≡-go
d_'8801''45'go_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'go_296 v6
du_'8801''45'go_296 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_296 v0 = coe v0
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≲-go
d_'8818''45'go_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_298 ~v0 ~v1 = du_'8818''45'go_298
du_'8818''45'go_298 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_298
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_126 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.step-∈
d_step'45''8712'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_314 ~v0 ~v1 = du_step'45''8712'_314
du_step'45''8712'_314 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_314
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_210
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                 (coe
                    MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_124))
              v1 v2 v3 v0))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.step-⊆
d_step'45''8838'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_318 ~v0 ~v1 = du_step'45''8838'_318
du_step'45''8838'_318 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_318
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_124))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.∼-go
d_'8764''45'go_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8764''45'go_330 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8764''45'go_330 v2 v3 v4 v5 v6
du_'8764''45'go_330 ::
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8764''45'go_330 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_124)
      (coe v1) (coe v2) (coe v3)
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8658''8594'_112 v0
              (coe v4 v5)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._._.step-∼
d_step'45''8764'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8764'_336 ~v0 ~v1 v2 = du_step'45''8764'_336 v2
du_step'45''8764'_336 ::
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8764'_336 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (coe du_'8764''45'go_330 (coe v0))
-- Data.List.Relation.Binary.BagAndSetEquality._.∷-cong
d_'8759''45'cong_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8759''45'cong_354 ~v0 ~v1 v2 v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8759''45'cong_354 v2 v3 v8 v9
du_'8759''45'cong_354 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8759''45'cong_354 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe v0)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe v0))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe v0)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2052
                  (coe v1)))
            (coe
               MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
               v0
               (coe
                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                  (coe v0))
               (coe v2 v3)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2052
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.map-cong
d_map'45'cong_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'45'cong_386 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 ~v9 v10 ~v11
  = du_map'45'cong_386 v4 v7 v8 v10
du_map'45'cong_386 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_map'45'cong_386 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe v0)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe v0))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe v0)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8596'_780
                  (coe v2)))
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_Any'45'cong_140
               (coe v1) (coe v2) (coe v0)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82 v0
                       (coe du_helper_400)))
               (coe v3)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8596'_780
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._._.helper
d_helper_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_helper_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_helper_400
du_helper_400 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_helper_400
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542 erased
      erased
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda0
d_'46'extendedlambda0_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda0_408 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda1
d_'46'extendedlambda1_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda1_410 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.++-cong
d_'43''43''45'cong_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'43''43''45'cong_432 ~v0 ~v1 v2 v3 v4 ~v5 ~v6 v7 v8 v9
  = du_'43''43''45'cong_432 v2 v3 v4 v7 v8 v9
du_'43''43''45'cong_432 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'43''43''45'cong_432 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 -> v8) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v6 v7 v8 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe v0)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe v0))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe v0)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                  (coe v2)))
            (coe
               MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
               v0 (coe v3 v5) (coe v4 v5)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.concat-cong
d_concat'45'cong_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [[AgdaAny]] ->
  [[AgdaAny]] -> ([AgdaAny] -> AgdaAny) -> AgdaAny -> AgdaAny
d_concat'45'cong_456 ~v0 ~v1 v2 v3 v4 v5 ~v6
  = du_concat'45'cong_456 v2 v3 v4 v5
du_concat'45'cong_456 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [[AgdaAny]] -> [[AgdaAny]] -> ([AgdaAny] -> AgdaAny) -> AgdaAny
du_concat'45'cong_456 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe v0)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe v0))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe v0)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_concat'8596'_1256
                  (coe v2)))
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_Any'45'cong_140
               (coe v1) (coe v2) (coe v0)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe v0))
                       erased))
               (coe v3)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_concat'8596'_1256
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.>>=-cong
d_'62''62''61''45'cong_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'62''62''61''45'cong_494 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'62''62''61''45'cong_494 v1 v4 v5 v6 v7 v8 v9 v10
du_'62''62''61''45'cong_494 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'62''62''61''45'cong_494 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v8 v9 v10 -> v10) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v8 v9 v10 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe v0)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v8 v9 v10 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe v0))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe v0)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v8 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2080
                  (coe v4) (coe v2)))
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_Any'45'cong_140
               (coe v1) (coe v2) (coe v0) (coe (\ v8 -> coe v6 v8 v7)) (coe v5)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2080
               (coe v3) (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.⊛-cong
d_'8859''45'cong_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8859''45'cong_532 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8859''45'cong_532 v1 v4 v5 v6 v7 v8 v9 v10
du_'8859''45'cong_532 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8859''45'cong_532 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v8 v9 v10 -> v10) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v8 v9 v10 v11 v12 -> v12) erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v8 v9 v10 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v8 v9 v10 v11 v12 -> v12) erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v8 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               erased)
            (coe
               du_'62''62''61''45'cong_494 (coe v0) (coe v1) (coe v2)
               (coe
                  (\ v8 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du_foldr_216
                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22
                          (coe
                             (\ v9 ->
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v8 v9)))
                          (coe v3))))
               (coe
                  (\ v8 ->
                     let v9
                           = \ v9 ->
                               coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v8 v9) in
                     coe
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v9) (coe v4))))
               (coe v5)
               (coe
                  (\ v8 ->
                     coe
                       du_'62''62''61''45'cong_494 (coe v0) (coe v3) (coe v4)
                       (coe
                          (\ v9 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v8 v9)))
                       (coe
                          (\ v9 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v8 v9)))
                       (coe v6)
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0)))))
               (coe v7)))
         erased)
-- Data.List.Relation.Binary.BagAndSetEquality._.⊗-cong
d_'8855''45'cong_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8855''45'cong_580 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8855''45'cong_580 v1 v4 v5 v6 v7 v8 v9 v10
du_'8855''45'cong_580 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8855''45'cong_580 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_'8859''45'cong_532 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v8 v9 ->
               coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v9)))
         (coe v1))
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v8 v9 ->
               coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v9)))
         (coe v2))
      (coe v3) (coe v4)
      (\ v8 ->
         coe du_map'45'cong_386 (coe v0) (coe v1) (coe v2) (coe v5))
      (coe v6) (coe v7)
-- Data.List.Relation.Binary.BagAndSetEquality.commutativeMonoid
d_commutativeMonoid_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_commutativeMonoid_588 ~v0 v1 ~v2 = du_commutativeMonoid_588 v1
du_commutativeMonoid_588 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_commutativeMonoid_588 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2788
         (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (coe
            MAlonzo.Code.Algebra.Structures.Biased.C_constructor_2820
            (coe
               MAlonzo.Code.Algebra.Structures.C_constructor_522
               (coe
                  MAlonzo.Code.Algebra.Structures.C_constructor_210
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe du_'91'_'93''45'Equality_36 (coe v0)))
                  (\ v1 v2 v3 v4 v5 v6 v7 ->
                     coe
                       du_'43''43''45'cong_432
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                          (coe v0))
                       v1 v2 v5 v6 v7))
               (coe
                  (\ v1 v2 v3 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                          (coe du_'91'_'93''45'Equality_36 (coe v0)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))
                          (coe v3)))))
            (coe
               (\ v1 v2 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe v0))))
            (coe
               (\ v1 v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe v0))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                       (coe v1) (coe v2))))))
-- Data.List.Relation.Binary.BagAndSetEquality.empty-unique
d_empty'45'unique_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_empty'45'unique_618 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.++-idempotent
d_'43''43''45'idempotent_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'43''43''45'idempotent_630 ~v0 ~v1 v2 ~v3
  = du_'43''43''45'idempotent_630 v2
du_'43''43''45'idempotent_630 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'43''43''45'idempotent_630 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (\ v1 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased)
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v2 -> v2)
                 (\ v2 -> v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_2136
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                       (coe v0))
                    v1)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Bundles.d_to_2134
                 (coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                    (coe v0))
                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v1)))))
-- Data.List.Relation.Binary.BagAndSetEquality.>>=-left-distributive
d_'62''62''61''45'left'45'distributive_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'62''62''61''45'left'45'distributive_648 ~v0 ~v1 ~v2 v3 v4 v5 ~v6
  = du_'62''62''61''45'left'45'distributive_648 v3 v4 v5
du_'62''62''61''45'left'45'distributive_648 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'62''62''61''45'left'45'distributive_648 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Base.du__'8728''8242'__216
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
            (\ v3 v4 v5 ->
               coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v3 v4 v5 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                  (\ v3 v4 v5 ->
                     coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                          (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                          (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                  erased erased erased
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                          (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                     erased)
                  (coe
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                     (coe
                        MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v1) (coe v0))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                  (coe
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2080
                     (coe v1) (coe v0))
                  (coe
                     MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  (coe
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2080
                     (coe v2) (coe v0))))
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8846''8596'_424
                  (coe v0))))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_Any'45'cong_140
               (coe v0) (coe v0)
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                       (coe v1 v3)))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                       (\ v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                       erased)))))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2080
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v3)
                    (coe v2 v3)))
            (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊛-left-distributive
d_'8859''45'left'45'distributive_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8859''45'left'45'distributive_682 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8859''45'left'45'distributive_682 v3 v4 v5 v6
du_'8859''45'left'45'distributive_682 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8859''45'left'45'distributive_682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Effect.Applicative.du__'8859'__70
         (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v4 v5 v6 v7 v8 -> v8)
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Data.List.Base.du_concatMap_246
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du_concatMap_246
                    (coe
                       (\ v5 ->
                          coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))))
            (coe v0))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe
               MAlonzo.Code.Effect.Applicative.du__'8859'__70
               (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
            (coe
               MAlonzo.Code.Effect.Applicative.du__'8859'__70
               (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v4 v5 v6 v7 v8 -> v8)
            (coe
               MAlonzo.Code.Data.List.Base.du_concatMap_246
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du_concatMap_246
                       (coe
                          (\ v5 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))))
               (coe v0))
            (coe
               MAlonzo.Code.Data.List.Base.du_concatMap_246
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_246
                          (coe
                             (\ v5 ->
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                          (coe v1))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_246
                          (coe
                             (\ v5 ->
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                          (coe v2))))
               (coe v0))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Effect.Applicative.du__'8859'__70
                  (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
               (coe
                  MAlonzo.Code.Effect.Applicative.du__'8859'__70
                  (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe
                           du_'91'_'93''45'Equality_36
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))))
               (coe
                  MAlonzo.Code.Data.List.Base.du_concatMap_246
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concatMap_246
                             (coe
                                (\ v5 ->
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                             (coe v1))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concatMap_246
                             (coe
                                (\ v5 ->
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                             (coe v2))))
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du_concatMap_246
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du_concatMap_246
                             (coe
                                (\ v5 ->
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                             (coe v1)))
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.List.Base.du_concatMap_246
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du_concatMap_246
                             (coe
                                (\ v5 ->
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                             (coe v2)))
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_concatMap_246
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du_concatMap_246
                                (coe
                                   (\ v5 ->
                                      coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                                (coe v1)))
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_concatMap_246
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du_concatMap_246
                                (coe
                                   (\ v5 ->
                                      coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v4 v5)))
                                (coe v2)))
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe
                                 du_'91'_'93''45'Equality_36
                                 (coe
                                    MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2)))
                  erased)
               (\ v4 ->
                  coe
                    du_'62''62''61''45'left'45'distributive_648 (coe v0)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Data.List.Base.du_concatMap_246
                            (coe
                               (\ v6 ->
                                  coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v5 v6)))
                            (coe v1)))
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Data.List.Base.du_concatMap_246
                            (coe
                               (\ v6 ->
                                  coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v5 v6)))
                            (coe v2)))))
            erased)
         erased)
      v3
-- Data.List.Relation.Binary.BagAndSetEquality.drop-cons
d_drop'45'cons_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_drop'45'cons_780 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_drop'45'cons_780 v2 v5 v6
du_drop'45'cons_780 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_drop'45'cons_780 v0 v1 v2
  = coe
      du_'8846''45'left'45'cancellative_1038
      (coe
         du_'8764''8594''8846''8596''8846'_1288 (coe v0) (coe v1) (coe v2))
-- Data.List.Relation.Binary.BagAndSetEquality._.∈-index
d_'8712''45'index_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8712''45'index_800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_'8712''45'index_800 v10
du_'8712''45'index_800 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8712''45'index_800 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
             (\ v1 v2 v3 ->
                coe
                  MAlonzo.Code.Function.Base.du__'8728''8242'__216
                  (coe
                     MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  (coe
                     MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
             erased erased erased
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                (\ v1 v2 v3 ->
                   coe
                     MAlonzo.Code.Function.Base.du__'8728''8242'__216
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                erased erased erased
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                   (\ v1 ->
                      coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                   erased)
                (coe
                   MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542 erased
                   erased))
             (coe
                MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8869''8596'Any'91''93'_336))
      (:) v1 v2
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
             (\ v3 v4 v5 ->
                coe
                  MAlonzo.Code.Function.Base.du__'8728''8242'__216
                  (coe
                     MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  (coe
                     MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
             erased erased erased
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                (\ v3 v4 v5 ->
                   coe
                     MAlonzo.Code.Function.Base.du__'8728''8242'__216
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                erased erased erased
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                   (\ v3 v4 v5 ->
                      coe
                        MAlonzo.Code.Function.Base.du__'8728''8242'__216
                        (coe
                           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                        (coe
                           MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                   erased erased erased
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (\ v3 ->
                         coe
                           MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                      erased)
                   (coe
                      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
                      (coe
                         (\ v3 ->
                            case coe v3 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe MAlonzo.Code.Data.Fin.Base.C_zero_12) (coe v4)
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                                -> case coe v4 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v5) (coe v6)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError))
                      (coe du_'46'extendedlambda1_836)))
                (coe
                   MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                      (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                   (coe du_'8712''45'index_800 (coe v2))))
             (coe
                MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2052
                   (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda1
d_'46'extendedlambda1_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'extendedlambda1_836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12
  = du_'46'extendedlambda1_836 v12
du_'46'extendedlambda1_836 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'46'extendedlambda1_836 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda2
d_'46'extendedlambda2_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda2_844 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.index-of
d_index'45'of_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_index'45'of_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
  = du_index'45'of_856 v10 v11
du_index'45'of_856 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_index'45'of_856 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_to_2134
         (coe du_'8712''45'index_800 (coe v0)) v1)
-- Data.List.Relation.Binary.BagAndSetEquality._.Fin-length
d_Fin'45'length_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Fin'45'length_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_Fin'45'length_866 v9
du_Fin'45'length_866 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Fin'45'length_866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Function.Base.du__'8728''8242'__216
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
               (\ v1 v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  erased)
               (coe
                  MAlonzo.Code.Function.Related.TypeIsomorphisms.du_'215''45'identity'691'_58))
            (coe
               MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_382
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
               (coe
                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.Level.C_lift_20
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v0) (coe v1))
                               erased))))))
         (coe
            MAlonzo.Code.Function.Related.TypeIsomorphisms.du_'8707''8707''8596''8707''8707'_444))
      (coe
         MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_382
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
         (coe (\ v1 -> coe du_'8712''45'index_800 (coe v0))))
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda0
d_'46'extendedlambda0_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda0_888 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.Fin-length-cong
d_Fin'45'length'45'cong_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Fin'45'length'45'cong_898 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                            v10 v11
  = du_Fin'45'length'45'cong_898 v9 v10 v11
du_Fin'45'length'45'cong_898 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Fin'45'length'45'cong_898 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Base.du__'8728''8242'__216
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
            (\ v3 v4 v5 ->
               coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (\ v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               erased)
            (coe du_Fin'45'length_866 (coe v1)))
         (coe
            MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_382
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
            (coe v2)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe du_Fin'45'length_866 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality._.index-of-commutes
d_index'45'of'45'commutes_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_index'45'of'45'commutes_928 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._.lemma
d_lemma_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_948 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.index-equality-preserved
d_index'45'equality'45'preserved_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_index'45'equality'45'preserved_976 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.inspect
d_inspect_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inspect_998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inspect_998 v9
du_inspect_998 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inspect_998 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Data.List.Relation.Binary.BagAndSetEquality._.Well-behaved
d_Well'45'behaved_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  ()
d_Well'45'behaved_1014 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.⊎-left-cancellative
d_'8846''45'left'45'cancellative_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'left'45'cancellative_1038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 v13 ~v14 ~v15
  = du_'8846''45'left'45'cancellative_1038 v13
du_'8846''45'left'45'cancellative_1038 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'left'45'cancellative_1038 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         du_g_1066 (coe MAlonzo.Code.Function.Bundles.d_to_2134 (coe v0)))
      (coe
         du_g_1066 (coe MAlonzo.Code.Function.Bundles.d_from_2136 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g
d_g_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_g_1066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
         ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 v19 ~v20 v21
  = du_g_1066 v19 v21
du_g_1066 ::
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
du_g_1066 v0 v1
  = coe
      du_g'8242'_1072 (coe v0)
      (coe
         du_inspect_998
         (coe v0 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g′
d_g'8242'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_g'8242'_1072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 v19 ~v20 ~v21 v22
  = du_g'8242'_1072 v19 v22
du_g'8242'_1072 ::
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_g'8242'_1072 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
               -> coe du_g'8243'_1080 (coe du_inspect_998 (coe v0 v2))
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g″
d_g'8243'_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_g'8243'_1080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 v24
  = du_g'8243'_1080 v24
du_g'8243'_1080 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_g'8243'_1080 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                    erased
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._.g∘g
d_g'8728'g_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_g'8728'g_1112 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g∘g′
d_g'8728'g'8242'_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_g'8728'g'8242'_1126 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.∼→⊎↔⊎
d_'8764''8594''8846''8596''8846'_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8764''8594''8846''8596''8846'_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9 ~v10 ~v11 v12 v13
  = du_'8764''8594''8846''8596''8846'_1288 v9 v12 v13
du_'8764''8594''8846''8596''8846'_1288 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8764''8594''8846''8596''8846'_1288 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Base.du__'8728''8242'__216
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
            (\ v3 v4 v5 ->
               coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (\ v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               erased)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2052
                  (coe v0))))
         (coe v1 v2))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2052
         (coe v0))
-- Data.List.Relation.Binary.BagAndSetEquality._.lemma
d_lemma_1312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_lemma_1312 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._.contra
d_contra_1332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_contra_1332 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.↭⇒∼bag
d_'8621''8658''8764'bag_1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8621''8658''8764'bag_1342 ~v0 ~v1 v2 v3 v4 ~v5
  = du_'8621''8658''8764'bag_1342 v2 v3 v4
du_'8621''8658''8764'bag_1342 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8621''8658''8764'bag_1342 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'8712''45'resp'45''8621'_254
         v0 v1 v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'8712''45'resp'45''8621'_254
         v1 v0
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_68
            (coe v0) (coe v1) (coe v2)))
-- Data.List.Relation.Binary.BagAndSetEquality.∼bag⇒↭
d_'8764'bag'8658''8621'_1352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_'8764'bag'8658''8621'_1352 ~v0 ~v1 v2 v3 v4
  = du_'8764'bag'8658''8621'_1352 v2 v3 v4
du_'8764'bag'8658''8621'_1352 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
du_'8764'bag'8658''8621'_1352 v0 v1 v2
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''8707''43''43'_926
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe v1)
                     (coe
                        MAlonzo.Code.Function.Bundles.d_to_2134 (coe v2 v3)
                        (coe
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)) in
           coe
             (case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                         -> case coe v9 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                -> let v12
                                         = seq
                                             (coe v11)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v8) erased)) in
                                   coe
                                     (case coe v12 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                          -> case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                      (\ v17 v18 v19 ->
                                                         coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                                           v19)
                                                      v0
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe v3) (coe v15)))
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_418
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                            (\ v17 v18 v19 v20 v21 ->
                                                               coe
                                                                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_84
                                                                 v17 v18 v20 v21))
                                                         v0
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe v15) (coe v13)))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v3) (coe v15)))
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_418
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                               (\ v17 v18 v19 v20 v21 ->
                                                                  coe
                                                                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_84
                                                                    v17 v18 v20 v21))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v15) (coe v13)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v13) (coe v15)))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe v13)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe v3) (coe v15)))
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_420
                                                               (coe
                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                                  (\ v17 v18 v19 v20 v21 ->
                                                                     coe
                                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_84
                                                                       v17 v18 v20 v21))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_68)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe v3)
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                     (coe v13) (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v13)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe v3) (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v13)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe v3) (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                     (\ v17 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50))
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                     (coe v13)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v3) (coe v15))))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_shift_466
                                                                  (coe v3) (coe v13) (coe v15)))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_40
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'43''43''45'comm_738
                                                                  (coe v15) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_40
                                                            (coe
                                                               du_'8764'bag'8658''8621'_1352
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                  (coe v15) (coe v13))
                                                               (coe
                                                                  du_drop'45'cons_780 (coe v3)
                                                                  (coe
                                                                     (\ v17 ->
                                                                        coe
                                                                          MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'trans_40
                                                                          (coe v2 v17)
                                                                          (coe
                                                                             MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                                                             (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                                                                (coe
                                                                                   MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                                                                                (coe v13)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v3)
                                                                                   (coe
                                                                                      v15))))))))))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_4563 ::
  T_GeneralizeTel_4567 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_4563 v0
  = case coe v0 of
      C_mkGeneralizeTel_4569 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_4565 :: T_GeneralizeTel_4567 -> ()
d_'46'generalizedField'45'A_4565 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_4567 = ()
newtype T_GeneralizeTel_4567
  = C_mkGeneralizeTel_4569 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_11647 ::
  T_GeneralizeTel_11655 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_11647 v0
  = case coe v0 of
      C_mkGeneralizeTel_11657 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_11649 :: T_GeneralizeTel_11655 -> ()
d_'46'generalizedField'45'A_11649 = erased
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-B.a
d_'46'generalizedField'45'B'46'a_11651 ::
  T_GeneralizeTel_11655 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'B'46'a_11651 v0
  = case coe v0 of
      C_mkGeneralizeTel_11657 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-B
d_'46'generalizedField'45'B_11653 :: T_GeneralizeTel_11655 -> ()
d_'46'generalizedField'45'B_11653 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_11655 = ()
data T_GeneralizeTel_11655
  = C_mkGeneralizeTel_11657 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_32015 ::
  T_GeneralizeTel_32019 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_32015 v0
  = case coe v0 of
      C_mkGeneralizeTel_32021 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_32017 :: T_GeneralizeTel_32019 -> ()
d_'46'generalizedField'45'A_32017 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_32019 = ()
newtype T_GeneralizeTel_32019
  = C_mkGeneralizeTel_32021 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_39481 ::
  T_GeneralizeTel_39485 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_39481 v0
  = case coe v0 of
      C_mkGeneralizeTel_39487 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_39483 :: T_GeneralizeTel_39485 -> ()
d_'46'generalizedField'45'A_39483 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_39485 = ()
newtype T_GeneralizeTel_39485
  = C_mkGeneralizeTel_39487 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-a
d_'46'generalizedField'45'a_44809 ::
  T_GeneralizeTel_44811 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_44809 v0
  = case coe v0 of
      C_mkGeneralizeTel_44813 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_44811 = ()
newtype T_GeneralizeTel_44811
  = C_mkGeneralizeTel_44813 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-a
d_'46'generalizedField'45'a_53801 ::
  T_GeneralizeTel_53803 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_53801 v0
  = case coe v0 of
      C_mkGeneralizeTel_53805 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_53803 = ()
newtype T_GeneralizeTel_53803
  = C_mkGeneralizeTel_53805 MAlonzo.Code.Agda.Primitive.T_Level_18
