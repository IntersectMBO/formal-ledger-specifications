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
import qualified MAlonzo.Code.Data.Empty
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

-- Data.List.Relation.Binary.BagAndSetEquality.[_]-Order
d_'91'_'93''45'Order_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'91'_'93''45'Order_30 ~v0 v1 ~v2 = du_'91'_'93''45'Order_30 v1
du_'91'_'93''45'Order_30 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'91'_'93''45'Order_30 v0
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_InducedPreorder'8322'_384
      (coe v0)
-- Data.List.Relation.Binary.BagAndSetEquality.[_]-Equality
d_'91'_'93''45'Equality_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'91'_'93''45'Equality_36 ~v0 v1 ~v2
  = du_'91'_'93''45'Equality_36 v1
du_'91'_'93''45'Equality_36 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'91'_'93''45'Equality_36 v0
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_InducedEquivalence'8322'_466
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
d__'62''62''61'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__178 ~v0 ~v1 ~v2 v3 v4
  = du__'62''62''61'__178 v3 v4
du__'62''62''61'__178 ::
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du__'62''62''61'__178 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v1) (coe v0)
-- Data.List.Relation.Binary.BagAndSetEquality.ListMonad._⊗_
d__'8855'__180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8855'__180 ~v0 = du__'8855'__180
du__'8855'__180 ::
  () ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8855'__180
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8855'__76
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.ListMonad._⊛_
d__'8859'__182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__182 ~v0 = du__'8859'__182
du__'8859'__182 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8859'__182
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.bag-=⇒
d_bag'45''61''8658'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> AgdaAny
d_bag'45''61''8658'_224 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_bag'45''61''8658'_224 v4 v5 v6
du_bag'45''61''8658'_224 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> AgdaAny
du_bag'45''61''8658'_224 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82 v0
      (coe v1 v2)
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base._IsRelatedTo_
d__IsRelatedTo__236 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base._∎
d__'8718'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_238 ~v0 ~v1 = du__'8718'_238
du__'8718'_238 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_238
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.IsEquality
d_IsEquality_240 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.IsEquality?
d_IsEquality'63'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_242 ~v0 ~v1 = du_IsEquality'63'_242
du_IsEquality'63'_242 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_242 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.begin_
d_begin__244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_begin__244 ~v0 ~v1 = du_begin__244
du_begin__244 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_begin__244
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.begin_
d_begin__246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__246 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.equalitySubRelation
d_equalitySubRelation_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_248 ~v0 ~v1 = du_equalitySubRelation_248
du_equalitySubRelation_248 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_248
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.extractEquality
d_extractEquality_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_252 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.start
d_start_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_start_258 ~v0 ~v1 = du_start_258
du_start_258 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_start_258
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡
d_step'45''8801'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_270 ~v0 ~v1 = du_step'45''8801'_270
du_step'45''8801'_270 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_270
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_272 ~v0 ~v1 ~v2 ~v3 v4
  = du_step'45''8801''45''8739'_272 v4
du_step'45''8801''45''8739'_272 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_272 v0 = coe v0
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_274 ~v0 ~v1
  = du_step'45''8801''45''10216'_274
du_step'45''8801''45''10216'_274 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_274
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_276 ~v0 ~v1
  = du_step'45''8801''45''10217'_276
du_step'45''8801''45''10217'_276 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_276
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.step-≡˘
d_step'45''8801''728'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_278 ~v0 ~v1 = du_step'45''8801''728'_278
du_step'45''8801''728'_278 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_278
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.stop
d_stop_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_282 ~v0 ~v1 = du_stop_282
du_stop_282 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_282
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≈-go
d_'8776''45'go_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_284 ~v0 ~v1 = du_'8776''45'go_284
du_'8776''45'go_284 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_284
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≡-go
d_'8801''45'go_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'go_286 v6
du_'8801''45'go_286 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_286 v0 = coe v0
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning.Base.≲-go
d_'8818''45'go_288 ::
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
d_'8818''45'go_288 ~v0 ~v1 = du_'8818''45'go_288
du_'8818''45'go_288 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_288
  = let v0
          = coe
              MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'preorder_110 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.step-∈
d_step'45''8712'_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_step'45''8712'_304 ~v0 ~v1 = du_step'45''8712'_304
du_step'45''8712'_304 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_step'45''8712'_304
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8712'_208
      (coe
         (\ v0 v1 v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_108 in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                    (coe v4))
                 v1 v2 v3 v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.step-⊆
d_step'45''8838'_308 ::
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
d_step'45''8838'_308 ~v0 ~v1 = du_step'45''8838'_308
du_step'45''8838'_308 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_308
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_316
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_108))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._.∼-go
d_'8764''45'go_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8764''45'go_320 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8764''45'go_320 v2 v3 v4 v5 v6
du_'8764''45'go_320 ::
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8764''45'go_320 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Subset.Propositional.Properties.du_'8838''45'isPreorder_108)
      (coe v1) (coe v2) (coe v3)
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8658''8594'_112 v0
              (coe v4 v5)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊆-Reasoning._._.step-∼
d_step'45''8764'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8764'_326 ~v0 ~v1 v2 = du_step'45''8764'_326 v2
du_step'45''8764'_326 ::
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8764'_326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (coe du_'8764''45'go_320 (coe v0))
-- Data.List.Relation.Binary.BagAndSetEquality._.∷-cong
d_'8759''45'cong_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8759''45'cong_344 ~v0 ~v1 v2 v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8759''45'cong_344 v2 v3 v8 v9
du_'8759''45'cong_344 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8759''45'cong_344 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2034
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
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2034
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.map-cong
d_map'45'cong_376 ::
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
d_map'45'cong_376 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 ~v9 v10 ~v11
  = du_map'45'cong_376 v4 v7 v8 v10
du_map'45'cong_376 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_map'45'cong_376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
                       (coe du_helper_390)))
               (coe v3)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8596'_780
               (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._._.helper
d_helper_390 ::
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
  AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_helper_390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_helper_390
du_helper_390 :: MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_helper_390
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366 erased
      erased
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda0
d_'46'extendedlambda0_398 ::
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
d_'46'extendedlambda0_398 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda1
d_'46'extendedlambda1_400 ::
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
d_'46'extendedlambda1_400 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.++-cong
d_'43''43''45'cong_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'43''43''45'cong_422 ~v0 ~v1 v2 v3 v4 ~v5 ~v6 v7 v8 v9
  = du_'43''43''45'cong_422 v2 v3 v4 v7 v8 v9
du_'43''43''45'cong_422 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'43''43''45'cong_422 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 -> v8) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
d_concat'45'cong_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [[AgdaAny]] ->
  [[AgdaAny]] -> ([AgdaAny] -> AgdaAny) -> AgdaAny -> AgdaAny
d_concat'45'cong_446 ~v0 ~v1 v2 v3 v4 v5 ~v6
  = du_concat'45'cong_446 v2 v3 v4 v5
du_concat'45'cong_446 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [[AgdaAny]] -> [[AgdaAny]] -> ([AgdaAny] -> AgdaAny) -> AgdaAny
du_concat'45'cong_446 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 -> v6) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
d_'62''62''61''45'cong_484 ::
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
d_'62''62''61''45'cong_484 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'62''62''61''45'cong_484 v1 v4 v5 v6 v7 v8 v9 v10
du_'62''62''61''45'cong_484 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'62''62''61''45'cong_484 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v8 v9 v10 -> v10) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v8 v9 v10 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (\ v8 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2062
                  (coe v4) (coe v2)))
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_Any'45'cong_140
               (coe v1) (coe v2) (coe v0) (coe (\ v8 -> coe v6 v8 v7)) (coe v5)))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2062
               (coe v3) (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._.⊛-cong
d_'8859''45'cong_522 ::
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
d_'8859''45'cong_522 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8859''45'cong_522 v1 v4 v5 v6 v7 v8 v9 v10
du_'8859''45'cong_522 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8859''45'cong_522 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v8 v9 v10 -> v10) erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v8 v9 v10 v11 v12 -> v12) erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v8 v9 v10 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe v0))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
               (\ v8 v9 v10 v11 v12 -> v12) erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (\ v8 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe v0))
                  erased)
               erased)
            (coe
               du_'62''62''61''45'cong_484 (coe v0) (coe v1) (coe v2)
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
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v8 v9)))
                          (coe v3))))
               (coe
                  (\ v8 ->
                     let v9
                           = \ v9 ->
                               coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v8 v9) in
                     coe
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v9) (coe v4))))
               (coe v5)
               (coe
                  (\ v8 ->
                     coe
                       du_'62''62''61''45'cong_484 (coe v0) (coe v3) (coe v4)
                       (coe
                          (\ v9 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v8 v9)))
                       (coe
                          (\ v9 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v8 v9)))
                       (coe v6)
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0)))))
               (coe v7)))
         erased)
-- Data.List.Relation.Binary.BagAndSetEquality._.⊗-cong
d_'8855''45'cong_570 ::
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
d_'8855''45'cong_570 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8855''45'cong_570 v1 v4 v5 v6 v7 v8 v9 v10
du_'8855''45'cong_570 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8855''45'cong_570 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_'8859''45'cong_522 (coe v0)
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
         coe du_map'45'cong_376 (coe v0) (coe v1) (coe v2) (coe v5))
      (coe v6) (coe v7)
-- Data.List.Relation.Binary.BagAndSetEquality.commutativeMonoid
d_commutativeMonoid_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_commutativeMonoid_578 ~v0 v1 ~v2 = du_commutativeMonoid_578 v1
du_commutativeMonoid_578 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du_commutativeMonoid_578 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2680
         (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (coe
            MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeMonoid'737''46'constructor_34899
            (coe
               MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
               (coe
                  MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe du_'91'_'93''45'Equality_36 (coe v0)))
                  (\ v1 v2 v3 v4 v5 v6 v7 ->
                     coe
                       du_'43''43''45'cong_422
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                          (coe v0))
                       v1 v2 v5 v6 v7))
               (coe
                  (\ v1 v2 v3 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
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
d_empty'45'unique_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Function.Related.Propositional.T_ForwardKind_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_empty'45'unique_608 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.++-idempotent
d_'43''43''45'idempotent_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'43''43''45'idempotent_620 ~v0 ~v1 v2 ~v3
  = du_'43''43''45'idempotent_620 v2
du_'43''43''45'idempotent_620 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'43''43''45'idempotent_620 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (\ v1 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased)
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v2 -> v2)
                 (\ v2 -> v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1974
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                       (coe v0))
                    v1)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Bundles.d_to_1972
                 (coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                    (coe v0))
                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v1)))))
-- Data.List.Relation.Binary.BagAndSetEquality.>>=-left-distributive
d_'62''62''61''45'left'45'distributive_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'62''62''61''45'left'45'distributive_638 ~v0 ~v1 ~v2 v3 v4 v5 ~v6
  = du_'62''62''61''45'left'45'distributive_638 v3 v4 v5
du_'62''62''61''45'left'45'distributive_638 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'62''62''61''45'left'45'distributive_638 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2062
                     (coe v1) (coe v0))
                  (coe
                     MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  (coe
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2062
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
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                       (\ v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                       erased)))))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'62''62''61''8596'_2062
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v3)
                    (coe v2 v3)))
            (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality.⊛-left-distributive
d_'8859''45'left'45'distributive_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8859''45'left'45'distributive_672 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8859''45'left'45'distributive_672 v3 v4 v5 v6
du_'8859''45'left'45'distributive_672 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8859''45'left'45'distributive_672 v0 v1 v2 v3
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
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
                          coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v4 v5 v6 v7 v8 -> v8)
            (coe
               MAlonzo.Code.Data.List.Base.du_concatMap_246
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du_concatMap_246
                       (coe
                          (\ v5 ->
                             coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
                          (coe v1))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concatMap_246
                          (coe
                             (\ v5 ->
                                coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
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
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
                             (coe v1))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concatMap_246
                             (coe
                                (\ v5 ->
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                                   coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
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
                                      coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                                      coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v4 v5)))
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
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe
                                   du_'91'_'93''45'Equality_36
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_bijection_90))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe
                              MAlonzo.Code.Effect.Applicative.du__'8859'__70
                              (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v1)
                           (coe
                              MAlonzo.Code.Effect.Applicative.du__'8859'__70
                              (coe MAlonzo.Code.Data.List.Effectful.du_applicative_12) v0 v2))))
                  erased)
               (\ v4 ->
                  coe
                    du_'62''62''61''45'left'45'distributive_638 (coe v0)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Data.List.Base.du_concatMap_246
                            (coe
                               (\ v6 ->
                                  coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v5 v6)))
                            (coe v1)))
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Data.List.Base.du_concatMap_246
                            (coe
                               (\ v6 ->
                                  coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v5 v6)))
                            (coe v2)))))
            erased)
         erased)
      v3
-- Data.List.Relation.Binary.BagAndSetEquality.drop-cons
d_drop'45'cons_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_drop'45'cons_770 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_drop'45'cons_770 v2 v5 v6
du_drop'45'cons_770 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_drop'45'cons_770 v0 v1 v2
  = coe
      du_'8846''45'left'45'cancellative_1028
      (coe
         du_'8764''8594''8846''8596''8846'_1278 (coe v0) (coe v1) (coe v2))
-- Data.List.Relation.Binary.BagAndSetEquality._.∈-index
d_'8712''45'index_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8712''45'index_790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_'8712''45'index_790 v10
du_'8712''45'index_790 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8712''45'index_790 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                   (\ v1 ->
                      coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                   erased)
                (coe
                   MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366 erased
                   erased))
             (coe
                MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8869''8596'Any'91''93'_336))
      (:) v1 v2
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (\ v3 ->
                         coe
                           MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                      erased)
                   (coe
                      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
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
                      (coe du_'46'extendedlambda1_826)))
                (coe
                   MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                      (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                   (coe du_'8712''45'index_790 (coe v2))))
             (coe
                MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2034
                   (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda1
d_'46'extendedlambda1_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'extendedlambda1_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12
  = du_'46'extendedlambda1_826 v12
du_'46'extendedlambda1_826 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'46'extendedlambda1_826 v0
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
d_'46'extendedlambda2_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda2_834 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.index-of
d_index'45'of_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_index'45'of_846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
  = du_index'45'of_846 v10 v11
du_index'45'of_846 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_index'45'of_846 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1972
         (coe du_'8712''45'index_790 (coe v0)) v1)
-- Data.List.Relation.Binary.BagAndSetEquality._.Fin-length
d_Fin'45'length_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_Fin'45'length_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_Fin'45'length_856 v9
du_Fin'45'length_856 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_Fin'45'length_856 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                  erased)
               (coe
                  MAlonzo.Code.Function.Related.TypeIsomorphisms.du_'215''45'identity'691'_58))
            (coe
               MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_368
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
               (coe
                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.Level.C_lift_20
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Data.List.Base.du_lookup_406 (coe v0) (coe v1))
                               erased))))))
         (coe
            MAlonzo.Code.Function.Related.TypeIsomorphisms.du_'8707''8707''8596''8707''8707'_428))
      (coe
         MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_368
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
         (coe (\ v1 -> coe du_'8712''45'index_790 (coe v0))))
-- Data.List.Relation.Binary.BagAndSetEquality._._..extendedlambda0
d_'46'extendedlambda0_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda0_878 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.Fin-length-cong
d_Fin'45'length'45'cong_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_Fin'45'length'45'cong_888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                            v10 v11
  = du_Fin'45'length'45'cong_888 v9 v10 v11
du_Fin'45'length'45'cong_888 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_Fin'45'length'45'cong_888 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (\ v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               erased)
            (coe du_Fin'45'length_856 (coe v1)))
         (coe
            MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_368
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
            (coe v2)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe du_Fin'45'length_856 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality._.index-of-commutes
d_index'45'of'45'commutes_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_index'45'of'45'commutes_918 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._.lemma
d_lemma_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_938 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.index-equality-preserved
d_index'45'equality'45'preserved_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_index'45'equality'45'preserved_966 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.inspect
d_inspect_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inspect_988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inspect_988 v9
du_inspect_988 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inspect_988 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Data.List.Relation.Binary.BagAndSetEquality._.Well-behaved
d_Well'45'behaved_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
d_Well'45'behaved_1004 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.⊎-left-cancellative
d_'8846''45'left'45'cancellative_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
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
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8846''45'left'45'cancellative_1028 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 v13 ~v14 ~v15
  = du_'8846''45'left'45'cancellative_1028 v13
du_'8846''45'left'45'cancellative_1028 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8846''45'left'45'cancellative_1028 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
      (coe
         du_g_1056 (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v0)))
      (coe
         du_g_1056 (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v0)))
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g
d_g_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
d_g_1056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
         ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 v19 ~v20 v21
  = du_g_1056 v19 v21
du_g_1056 ::
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
du_g_1056 v0 v1
  = coe
      du_g'8242'_1062 (coe v0)
      (coe
         du_inspect_988
         (coe v0 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v1))))
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g′
d_g'8242'_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
d_g'8242'_1062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 v19 ~v20 ~v21 v22
  = du_g'8242'_1062 v19 v22
du_g'8242'_1062 ::
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_g'8242'_1062 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
               -> coe du_g'8243'_1070 (coe du_inspect_988 (coe v0 v2))
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g″
d_g'8243'_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
d_g'8243'_1070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 v24
  = du_g'8243'_1070 v24
du_g'8243'_1070 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_g'8243'_1070 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
               -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality._._.g∘g
d_g'8728'g_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
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
d_g'8728'g_1102 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._._.g∘g′
d_g'8728'g'8242'_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
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
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
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
d_g'8728'g'8242'_1116 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.∼→⊎↔⊎
d_'8764''8594''8846''8596''8846'_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8764''8594''8846''8596''8846'_1278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9 ~v10 ~v11 v12 v13
  = du_'8764''8594''8846''8596''8846'_1278 v9 v12 v13
du_'8764''8594''8846''8596''8846'_1278 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8764''8594''8846''8596''8846'_1278 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (\ v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
               erased)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2034
                  (coe v0))))
         (coe v1 v2))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'8759''8596'_2034
         (coe v0))
-- Data.List.Relation.Binary.BagAndSetEquality._.lemma
d_lemma_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_lemma_1302 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._._.contra
d_contra_1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_contra_1322 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.↭⇒∼bag
d_'8621''8658''8764'bag_1332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8621''8658''8764'bag_1332 ~v0 ~v1 v2 v3 v4 ~v5
  = du_'8621''8658''8764'bag_1332 v2 v3 v4
du_'8621''8658''8764'bag_1332 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8621''8658''8764'bag_1332 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
      (coe du_to_1346 (coe v0) (coe v1) (coe v2))
      (coe du_from_1354 (coe v0) (coe v1) (coe v2))
-- Data.List.Relation.Binary.BagAndSetEquality._.to
d_to_1346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_to_1346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_to_1346 v6 v7 v8
du_to_1346 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_to_1346 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'8712''45'resp'45''8621'_184
      v0 v1 v2
-- Data.List.Relation.Binary.BagAndSetEquality._.from
d_from_1354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_from_1354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_from_1354 v6 v7 v8
du_from_1354 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_from_1354 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'8712''45'resp'45''8621'_184
      v1 v0
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
         (coe v0) (coe v1) (coe v2))
-- Data.List.Relation.Binary.BagAndSetEquality._.from∘to
d_from'8728'to_1366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8728'to_1366 = erased
-- Data.List.Relation.Binary.BagAndSetEquality._.to∘from
d_to'8728'from_1376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8728'from_1376 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.∼bag⇒↭
d_'8764'bag'8658''8621'_1394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_'8764'bag'8658''8621'_1394 ~v0 ~v1 v2 v3 v4
  = du_'8764'bag'8658''8621'_1394 v2 v3 v4
du_'8764'bag'8658''8621'_1394 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_'8764'bag'8658''8621'_1394 v0 v1 v2
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.Properties.du_'8712''45''8707''43''43'_860
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe v1)
                     (coe
                        MAlonzo.Code.Function.Bundles.d_to_1972 (coe v2 v3)
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
                                                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                         (coe v3)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v15) (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v3) (coe v15)))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_step'45'prep_146
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe v13) (coe v15))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe v13)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe v3) (coe v15)))
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
                                                               (coe
                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                                  (\ v17 v18 v19 v20 v21 ->
                                                                     coe
                                                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                                                                       v17 v18 v20 v21))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56)
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
                                                               (let v17
                                                                      = \ v17 ->
                                                                          coe
                                                                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                        (coe v17))
                                                                     (coe
                                                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                        (coe v13)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe v3) (coe v15)))))
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_shift_428
                                                                  (coe v3) (coe v13) (coe v15)))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'43''43''45'comm_748
                                                               (coe v15) (coe v13)))
                                                         (coe
                                                            du_'8764'bag'8658''8621'_1394 (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                               (coe v15) (coe v13))
                                                            (coe
                                                               du_drop'45'cons_770 (coe v3)
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
                                                                                (coe v15)))))))))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_4267 ::
  T_GeneralizeTel_4271 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_4267 v0
  = case coe v0 of
      C_mkGeneralizeTel_4273 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_4269 :: T_GeneralizeTel_4271 -> ()
d_'46'generalizedField'45'A_4269 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_4271 = ()
newtype T_GeneralizeTel_4271
  = C_mkGeneralizeTel_4273 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_11313 ::
  T_GeneralizeTel_11321 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_11313 v0
  = case coe v0 of
      C_mkGeneralizeTel_11323 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_11315 :: T_GeneralizeTel_11321 -> ()
d_'46'generalizedField'45'A_11315 = erased
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-B.a
d_'46'generalizedField'45'B'46'a_11317 ::
  T_GeneralizeTel_11321 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'B'46'a_11317 v0
  = case coe v0 of
      C_mkGeneralizeTel_11323 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-B
d_'46'generalizedField'45'B_11319 :: T_GeneralizeTel_11321 -> ()
d_'46'generalizedField'45'B_11319 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_11321 = ()
data T_GeneralizeTel_11321
  = C_mkGeneralizeTel_11323 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_31475 ::
  T_GeneralizeTel_31479 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_31475 v0
  = case coe v0 of
      C_mkGeneralizeTel_31481 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_31477 :: T_GeneralizeTel_31479 -> ()
d_'46'generalizedField'45'A_31477 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_31479 = ()
newtype T_GeneralizeTel_31479
  = C_mkGeneralizeTel_31481 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A.a
d_'46'generalizedField'45'A'46'a_38899 ::
  T_GeneralizeTel_38903 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'a_38899 v0
  = case coe v0 of
      C_mkGeneralizeTel_38905 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-A
d_'46'generalizedField'45'A_38901 :: T_GeneralizeTel_38903 -> ()
d_'46'generalizedField'45'A_38901 = erased
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_38903 = ()
newtype T_GeneralizeTel_38903
  = C_mkGeneralizeTel_38905 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-a
d_'46'generalizedField'45'a_44197 ::
  T_GeneralizeTel_44199 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_44197 v0
  = case coe v0 of
      C_mkGeneralizeTel_44201 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_44199 = ()
newtype T_GeneralizeTel_44199
  = C_mkGeneralizeTel_44201 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Data.List.Relation.Binary.BagAndSetEquality..generalizedField-a
d_'46'generalizedField'45'a_53143 ::
  T_GeneralizeTel_53145 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_53143 v0
  = case coe v0 of
      C_mkGeneralizeTel_53147 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.BagAndSetEquality.GeneralizeTel
d_GeneralizeTel_53145 = ()
newtype T_GeneralizeTel_53145
  = C_mkGeneralizeTel_53147 MAlonzo.Code.Agda.Primitive.T_Level_18
