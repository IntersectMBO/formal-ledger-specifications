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

module MAlonzo.Code.Data.Nat.Divisibility where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.Divisibility.m%n≡0⇒n∣m
d_m'37'n'8801'0'8658'n'8739'm_12 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'37'n'8801'0'8658'n'8739'm_12 v0 v1 ~v2 ~v3
  = du_m'37'n'8801'0'8658'n'8739'm_12 v0 v1
du_m'37'n'8801'0'8658'n'8739'm_12 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'37'n'8801'0'8658'n'8739'm_12 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
-- Data.Nat.Divisibility.n∣m⇒m%n≡0
d_n'8739'm'8658'm'37'n'8801'0_30 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8739'm'8658'm'37'n'8801'0_30 = erased
-- Data.Nat.Divisibility.m%n≡0⇔n∣m
d_m'37'n'8801'0'8660'n'8739'm_42 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_m'37'n'8801'0'8660'n'8739'm_42 v0 v1 ~v2
  = du_m'37'n'8801'0'8660'n'8739'm_42 v0 v1
du_m'37'n'8801'0'8660'n'8739'm_42 ::
  Integer ->
  Integer -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_m'37'n'8801'0'8660'n'8739'm_42 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (\ v2 -> coe du_m'37'n'8801'0'8658'n'8739'm_12 (coe v0) (coe v1))
      erased
-- Data.Nat.Divisibility.∣⇒≤
d_'8739''8658''8804'_54 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739''8658''8804'_54 v0 v1 ~v2 v3
  = du_'8739''8658''8804'_54 v0 v1 v3
du_'8739''8658''8804'_54 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8739''8658''8804'_54 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v3
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
                (\ v5 v6 v7 ->
                   coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v7))
             v0 v1
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
                   (\ v5 v6 v7 v8 v9 ->
                      coe
                        MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v8
                        v9))
                v0 (mulInt (coe v3) (coe v0)) v1
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v5 v6 v7 v8 v9 -> v9) (mulInt (coe v3) (coe v0)) v1 v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                      (coe v1))
                   erased)
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344 (coe v0)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.>⇒∤
d_'62''8658''8740'_74 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8740'_74 = erased
-- Data.Nat.Divisibility.∣-reflexive
d_'8739''45'reflexive_80 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739''45'reflexive_80 ~v0 ~v1 ~v2 = du_'8739''45'reflexive_80
du_'8739''45'reflexive_80 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739''45'reflexive_80
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 (1 :: Integer)
-- Data.Nat.Divisibility.∣-refl
d_'8739''45'refl_84 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739''45'refl_84 ~v0 = du_'8739''45'refl_84
du_'8739''45'refl_84 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739''45'refl_84 = coe du_'8739''45'reflexive_80
-- Data.Nat.Divisibility.∣-trans
d_'8739''45'trans_86 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739''45'trans_86 ~v0 ~v1 ~v2 v3 v4
  = du_'8739''45'trans_86 v3 v4
du_'8739''45'trans_86 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739''45'trans_86 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (mulInt (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.∣-antisym
d_'8739''45'antisym_92 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'antisym_92 = erased
-- Data.Nat.Divisibility._∣?_
d__'8739''63'__112 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8739''63'__112 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe
                          MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                          (0 :: Integer)))
             _ -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
             (coe du_m'37'n'8801'0'8660'n'8739'm_42 (coe v1) (coe v0))
             (MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1) (coe v0))
                (coe (0 :: Integer)))
-- Data.Nat.Divisibility.∣-isPreorder
d_'8739''45'isPreorder_120 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8739''45'isPreorder_120
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8739''45'reflexive_80)
      (\ v0 v1 v2 v3 v4 -> coe du_'8739''45'trans_86 v3 v4)
-- Data.Nat.Divisibility.∣-isPartialOrder
d_'8739''45'isPartialOrder_122 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8739''45'isPartialOrder_122
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8739''45'isPreorder_120) erased
-- Data.Nat.Divisibility.∣-preorder
d_'8739''45'preorder_124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8739''45'preorder_124
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8739''45'isPreorder_120
-- Data.Nat.Divisibility.∣-poset
d_'8739''45'poset_126 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8739''45'poset_126
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      d_'8739''45'isPartialOrder_122
-- Data.Nat.Divisibility.∣-Reasoning.Base._IsRelatedTo_
d__IsRelatedTo__132 a0 a1 = ()
-- Data.Nat.Divisibility.∣-Reasoning.Base._∎
d__'8718'_134 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_134
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe v1))))
-- Data.Nat.Divisibility.∣-Reasoning.Base.IsEquality
d_IsEquality_136 a0 a1 a2 = ()
-- Data.Nat.Divisibility.∣-Reasoning.Base.IsEquality?
d_IsEquality'63'_138 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_138 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.Nat.Divisibility.∣-Reasoning.Base.begin_
d_begin__140 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_begin__140
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe v1))))
-- Data.Nat.Divisibility.∣-Reasoning.Base.begin_
d_begin__142 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__142 = erased
-- Data.Nat.Divisibility.∣-Reasoning.Base.equalitySubRelation
d_equalitySubRelation_144 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_144
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.Nat.Divisibility.∣-Reasoning.Base.extractEquality
d_extractEquality_148 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_148 = erased
-- Data.Nat.Divisibility.∣-Reasoning.Base.start
d_start_154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_start_154
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.Nat.Divisibility.∣-Reasoning.Base.step-≡
d_step'45''8801'_166 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_166
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Divisibility.∣-Reasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_168 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_168 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_168 v2
du_step'45''8801''45''8739'_168 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_168 v0 = coe v0
-- Data.Nat.Divisibility.∣-Reasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_170 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_170
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Divisibility.∣-Reasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_172 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_172
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Divisibility.∣-Reasoning.Base.step-≡˘
d_step'45''8801''728'_174 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_174
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Divisibility.∣-Reasoning.Base.stop
d_stop_178 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_178
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.Nat.Divisibility.∣-Reasoning.Base.≈-go
d_'8776''45'go_180 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_180
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.Nat.Divisibility.∣-Reasoning.Base.≡-go
d_'8801''45'go_182 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_182 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_182 v4
du_'8801''45'go_182 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_182 v0 = coe v0
-- Data.Nat.Divisibility.∣-Reasoning.Base.≲-go
d_'8818''45'go_184 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_184
  = let v0 = d_'8739''45'preorder_124 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Data.Nat.Divisibility.∣-Reasoning._.step-∣
d_step'45''8739'_198 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8739'_198
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
            (coe d_'8739''45'preorder_124)))
-- Data.Nat.Divisibility.1∣_
d_1'8739'__202 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_1'8739'__202 v0
  = coe MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v0
-- Data.Nat.Divisibility._∣0
d__'8739'0_208 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d__'8739'0_208 ~v0 = du__'8739'0_208
du__'8739'0_208 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du__'8739'0_208
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 (0 :: Integer)
-- Data.Nat.Divisibility.0∣⇒≡0
d_0'8739''8658''8801'0_214 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8739''8658''8801'0_214 = erased
-- Data.Nat.Divisibility.∣1⇒≡1
d_'8739'1'8658''8801'1_222 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'1'8658''8801'1_222 = erased
-- Data.Nat.Divisibility.n∣n
d_n'8739'n_230 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_n'8739'n_230 ~v0 = du_n'8739'n_230
du_n'8739'n_230 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_n'8739'n_230 = coe du_'8739''45'refl_84
-- Data.Nat.Divisibility.∣m∣n⇒∣m+n
d_'8739'm'8739'n'8658''8739'm'43'n_240 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'm'8739'n'8658''8739'm'43'n_240 ~v0 ~v1 ~v2 v3 v4
  = du_'8739'm'8739'n'8658''8739'm'43'n_240 v3 v4
du_'8739'm'8739'n'8658''8739'm'43'n_240 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'm'8739'n'8658''8739'm'43'n_240 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (addInt (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.∣m+n∣m⇒∣n
d_'8739'm'43'n'8739'm'8658''8739'n_252 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'm'43'n'8739'm'8658''8739'n_252 ~v0 ~v1 ~v2 v3 v4
  = du_'8739'm'43'n'8739'm'8658''8739'n_252 v3 v4
du_'8739'm'43'n'8739'm'8658''8739'n_252 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'm'43'n'8739'm'8658''8739'n_252 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.n∣m*n
d_n'8739'm'42'n_278 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_n'8739'm'42'n_278 v0 ~v1 = du_n'8739'm'42'n_278 v0
du_n'8739'm'42'n_278 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_n'8739'm'42'n_278 v0
  = coe MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v0
-- Data.Nat.Divisibility.m∣m*n
d_m'8739'm'42'n_286 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'8739'm'42'n_286 ~v0 v1 = du_m'8739'm'42'n_286 v1
du_m'8739'm'42'n_286 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'8739'm'42'n_286 v0
  = coe MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v0
-- Data.Nat.Divisibility.n∣m*n*o
d_n'8739'm'42'n'42'o_296 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_n'8739'm'42'n'42'o_296 v0 ~v1 v2
  = du_n'8739'm'42'n'42'o_296 v0 v2
du_n'8739'm'42'n'42'o_296 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_n'8739'm'42'n'42'o_296 v0 v1
  = coe
      du_'8739''45'trans_86 (coe du_n'8739'm'42'n_278 (coe v0))
      (coe du_m'8739'm'42'n_286 (coe v1))
-- Data.Nat.Divisibility.∣m⇒∣m*n
d_'8739'm'8658''8739'm'42'n_308 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'm'8658''8739'm'42'n_308 ~v0 ~v1 v2 v3
  = du_'8739'm'8658''8739'm'42'n_308 v2 v3
du_'8739'm'8658''8739'm'42'n_308 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'm'8658''8739'm'42'n_308 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> coe
             du_'8739''45'trans_86 (coe du_n'8739'm'42'n_278 (coe v2))
             (coe du_m'8739'm'42'n_286 (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.∣n⇒∣m*n
d_'8739'n'8658''8739'm'42'n_324 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'n'8658''8739'm'42'n_324 ~v0 v1 ~v2
  = du_'8739'n'8658''8739'm'42'n_324 v1
du_'8739'n'8658''8739'm'42'n_324 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'n'8658''8739'm'42'n_324 v0
  = coe du_'8739'm'8658''8739'm'42'n_308 (coe v0)
-- Data.Nat.Divisibility.m*n∣⇒m∣
d_m'42'n'8739''8658'm'8739'_340 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'42'n'8739''8658'm'8739'_340 ~v0 ~v1 v2 v3
  = du_m'42'n'8739''8658'm'8739'_340 v2 v3
du_m'42'n'8739''8658'm'8739'_340 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'42'n'8739''8658'm'8739'_340 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> coe
             du_'8739'n'8658''8739'm'42'n_324 v2
             (coe du_m'8739'm'42'n_286 (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m*n∣⇒n∣
d_m'42'n'8739''8658'n'8739'_354 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'42'n'8739''8658'n'8739'_354 ~v0 v1 ~v2
  = du_m'42'n'8739''8658'n'8739'_354 v1
du_m'42'n'8739''8658'n'8739'_354 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'42'n'8739''8658'n'8739'_354 v0
  = coe du_m'42'n'8739''8658'm'8739'_340 (coe v0)
-- Data.Nat.Divisibility.*-monoʳ-∣
d_'42''45'mono'691''45''8739'_370 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'42''45'mono'691''45''8739'_370 ~v0 ~v1 ~v2 v3
  = du_'42''45'mono'691''45''8739'_370 v3
du_'42''45'mono'691''45''8739'_370 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'42''45'mono'691''45''8739'_370 v0 = coe v0
-- Data.Nat.Divisibility.*-monoˡ-∣
d_'42''45'mono'737''45''8739'_392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'42''45'mono'737''45''8739'_392 ~v0 ~v1 ~v2 v3
  = du_'42''45'mono'737''45''8739'_392 v3
du_'42''45'mono'737''45''8739'_392 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'42''45'mono'737''45''8739'_392 v0 = coe v0
-- Data.Nat.Divisibility.*-cancelˡ-∣
d_'42''45'cancel'737''45''8739'_416 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'42''45'cancel'737''45''8739'_416 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'cancel'737''45''8739'_416 v4
du_'42''45'cancel'737''45''8739'_416 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'42''45'cancel'737''45''8739'_416 v0 = coe v0
-- Data.Nat.Divisibility.*-cancelʳ-∣
d_'42''45'cancel'691''45''8739'_442 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'42''45'cancel'691''45''8739'_442 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'cancel'691''45''8739'_442 v4
du_'42''45'cancel'691''45''8739'_442 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'42''45'cancel'691''45''8739'_442 v0 = coe v0
-- Data.Nat.Divisibility.∣m∸n∣n⇒∣m
d_'8739'm'8760'n'8739'n'8658''8739'm_464 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'm'8760'n'8739'n'8658''8739'm_464 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'8739'm'8760'n'8739'n'8658''8739'm_464 v4 v5
du_'8739'm'8760'n'8739'n'8658''8739'm_464 ::
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'm'8760'n'8739'n'8658''8739'm_464 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (addInt (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m/n∣m
d_m'47'n'8739'm_492 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'47'n'8739'm_492 ~v0 v1 ~v2 v3 = du_m'47'n'8739'm_492 v1 v3
du_m'47'n'8739'm_492 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'47'n'8739'm_492 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v2
        -> let v4
                 = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe d_'8739''45'preorder_124) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                   (coe v4))
                (coe
                   MAlonzo.Code.Data.Nat.Base.du__'47'__276
                   (coe mulInt (coe v2) (coe v0)) (coe v0))
                (mulInt (coe v2) (coe v0))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v5 v6 v7 v8 v9 -> v9)
                   (coe
                      MAlonzo.Code.Data.Nat.Base.du__'47'__276
                      (coe mulInt (coe v2) (coe v0)) (coe v0))
                   v2 (mulInt (coe v2) (coe v0))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                            (coe d_'8739''45'preorder_124)))
                      v2 (mulInt (coe v2) (coe v0)) (mulInt (coe v2) (coe v0))
                      (let v5
                             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                 (coe d_'8739''45'preorder_124) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                               (coe v5))
                            (coe mulInt (coe v2) (coe v0))))
                      (coe du_m'8739'm'42'n_286 (coe v0)))
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m*n∣o⇒m∣o/n
d_m'42'n'8739'o'8658'm'8739'o'47'n_512 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'42'n'8739'o'8658'm'8739'o'47'n_512 v0 v1 ~v2 ~v3 v4
  = du_m'42'n'8739'o'8658'm'8739'o'47'n_512 v0 v1 v4
du_m'42'n'8739'o'8658'm'8739'o'47'n_512 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'42'n'8739'o'8658'm'8739'o'47'n_512 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v3
        -> let v5
                 = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe d_'8739''45'preorder_124) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                   (coe v5))
                v0
                (coe
                   MAlonzo.Code.Data.Nat.Base.du__'47'__276
                   (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                         (coe d_'8739''45'preorder_124)))
                   v0 (mulInt (coe v3) (coe v0))
                   (coe
                      MAlonzo.Code.Data.Nat.Base.du__'47'__276
                      (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                      (\ v6 v7 v8 v9 v10 -> v10) (mulInt (coe v3) (coe v0))
                      (mulInt (coe mulInt (coe v3) (coe v0)) (coe (1 :: Integer)))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.du__'47'__276
                         (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                         (\ v6 v7 v8 v9 v10 -> v10)
                         (mulInt (coe mulInt (coe v3) (coe v0)) (coe (1 :: Integer)))
                         (mulInt
                            (coe mulInt (coe v3) (coe v0))
                            (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1) (coe v1)))
                         (coe
                            MAlonzo.Code.Data.Nat.Base.du__'47'__276
                            (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v6 v7 v8 v9 v10 -> v10)
                            (mulInt
                               (coe mulInt (coe v3) (coe v0))
                               (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1) (coe v1)))
                            (coe
                               MAlonzo.Code.Data.Nat.Base.du__'47'__276
                               (coe mulInt (coe mulInt (coe v3) (coe v0)) (coe v1)) (coe v1))
                            (coe
                               MAlonzo.Code.Data.Nat.Base.du__'47'__276
                               (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                               (\ v6 v7 v8 v9 v10 -> v10)
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                  (coe mulInt (coe mulInt (coe v3) (coe v0)) (coe v1)) (coe v1))
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                  (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                  (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1))) (coe v1))
                               (let v6
                                      = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                          (coe d_'8739''45'preorder_124) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v6))
                                     (coe
                                        MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                        (coe mulInt (coe v3) (coe mulInt (coe v0) (coe v1)))
                                        (coe v1))))
                               erased)
                            erased)
                         erased)
                      erased)
                   (coe du_n'8739'm'42'n_278 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m*n∣o⇒n∣o/m
d_m'42'n'8739'o'8658'n'8739'o'47'm_538 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'42'n'8739'o'8658'n'8739'o'47'm_538 v0 v1 ~v2 ~v3
  = du_m'42'n'8739'o'8658'n'8739'o'47'm_538 v0 v1
du_m'42'n'8739'o'8658'n'8739'o'47'm_538 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'42'n'8739'o'8658'n'8739'o'47'm_538 v0 v1
  = coe du_m'42'n'8739'o'8658'm'8739'o'47'n_512 (coe v1) (coe v0)
-- Data.Nat.Divisibility.m∣n/o⇒m*o∣n
d_m'8739'n'47'o'8658'm'42'o'8739'n_556 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'8739'n'47'o'8658'm'42'o'8739'n_556 v0 ~v1 v2 ~v3 v4 v5
  = du_m'8739'n'47'o'8658'm'42'o'8739'n_556 v0 v2 v4 v5
du_m'8739'n'47'o'8658'm'42'o'8739'n_556 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'8739'n'47'o'8658'm'42'o'8739'n_556 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
        -> let v6
                 = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe d_'8739''45'preorder_124) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                   (coe v6))
                (mulInt (coe v0) (coe v1)) (mulInt (coe v4) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                         (coe d_'8739''45'preorder_124)))
                   (mulInt (coe v0) (coe v1)) (mulInt (coe v4) (coe v1))
                   (mulInt (coe v4) (coe v1))
                   (let v7
                          = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                              (coe d_'8739''45'preorder_124) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe v7))
                         (coe mulInt (coe v4) (coe v1))))
                   v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m∣n/o⇒o*m∣n
d_m'8739'n'47'o'8658'o'42'm'8739'n_582 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'8739'n'47'o'8658'o'42'm'8739'n_582 v0 ~v1 v2 ~v3
  = du_m'8739'n'47'o'8658'o'42'm'8739'n_582 v0 v2
du_m'8739'n'47'o'8658'o'42'm'8739'n_582 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'8739'n'47'o'8658'o'42'm'8739'n_582 v0 v1
  = coe du_m'8739'n'47'o'8658'm'42'o'8739'n_556 (coe v0) (coe v1)
-- Data.Nat.Divisibility.m/n∣o⇒m∣o*n
d_m'47'n'8739'o'8658'm'8739'o'42'n_600 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'47'n'8739'o'8658'm'8739'o'42'n_600 ~v0 v1 v2 ~v3 v4 v5
  = du_m'47'n'8739'o'8658'm'8739'o'42'n_600 v1 v2 v4 v5
du_m'47'n'8739'o'8658'm'8739'o'42'n_600 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'47'n'8739'o'8658'm'8739'o'42'n_600 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
        -> let v6
                 = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe d_'8739''45'preorder_124) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                   (coe v6))
                (mulInt (coe v4) (coe v0)) (mulInt (coe v1) (coe v0))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                         (coe d_'8739''45'preorder_124)))
                   (mulInt (coe v4) (coe v0)) (mulInt (coe v1) (coe v0))
                   (mulInt (coe v1) (coe v0))
                   (let v7
                          = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                              (coe d_'8739''45'preorder_124) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe v7))
                         (coe mulInt (coe v1) (coe v0))))
                   v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m∣n*o⇒m/n∣o
d_m'8739'n'42'o'8658'm'47'n'8739'o_624 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'8739'n'42'o'8658'm'47'n'8739'o_624 ~v0 v1 v2 ~v3 v4 v5
  = du_m'8739'n'42'o'8658'm'47'n'8739'o_624 v1 v2 v4 v5
du_m'8739'n'42'o'8658'm'47'n'8739'o_624 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'8739'n'42'o'8658'm'47'n'8739'o_624 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
        -> let v6
                 = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                     (coe d_'8739''45'preorder_124) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                   (coe v6))
                (coe
                   MAlonzo.Code.Data.Nat.Base.du__'47'__276
                   (coe mulInt (coe v4) (coe v0)) (coe v0))
                v1
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v7 v8 v9 v10 v11 -> v11)
                   (coe
                      MAlonzo.Code.Data.Nat.Base.du__'47'__276
                      (coe mulInt (coe v4) (coe v0)) (coe v0))
                   v4 v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_332
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                            (coe d_'8739''45'preorder_124)))
                      v4 v1 v1
                      (let v7
                             = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                 (coe d_'8739''45'preorder_124) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                               (coe v7))
                            (coe v1)))
                      v3)
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.∣n∣m%n⇒∣m
d_'8739'n'8739'm'37'n'8658''8739'm_648 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'8739'n'8739'm'37'n'8658''8739'm_648 v0 ~v1 v2 ~v3 v4 v5
  = du_'8739'n'8739'm'37'n'8658''8739'm_648 v0 v2 v4 v5
du_'8739'n'8739'm'37'n'8658''8739'm_648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'8739'n'8739'm'37'n'8658''8739'm_648 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (addInt
                       (coe
                          mulInt
                          (coe
                             MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0)
                             (coe mulInt (coe v4) (coe v1)))
                          (coe v4))
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.%-presˡ-∣
d_'37''45'pres'737''45''8739'_678 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_'37''45'pres'737''45''8739'_678 ~v0 v1 v2 ~v3 v4 v5
  = du_'37''45'pres'737''45''8739'_678 v1 v2 v4 v5
du_'37''45'pres'737''45''8739'_678 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_'37''45'pres'737''45''8739'_678 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
                    (coe
                       MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4
                       (mulInt
                          (coe
                             MAlonzo.Code.Data.Nat.Base.du__'47'__276
                             (coe mulInt (coe v4) (coe v1)) (coe v0))
                          (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Divisibility.m≤n⇒m!∣n!
d_m'8804'n'8658'm'33''8739'n'33'_704 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_m'8804'n'8658'm'33''8739'n'33'_704 ~v0 v1 v2
  = du_m'8804'n'8658'm'33''8739'n'33'_704 v1 v2
du_m'8804'n'8658'm'33''8739'n'33'_704 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_m'8804'n'8658'm'33''8739'n'33'_704 v0 v1
  = coe
      du_help_716 (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''8242'_5892
         (coe v0) (coe v1))
-- Data.Nat.Divisibility._.help
d_help_716 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_help_716 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_help_716 v4 v5
du_help_716 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_help_716 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_304
        -> coe du_'8739''45'refl_84
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_310 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8739'n'8658''8739'm'42'n_324 v0
                (coe du_help_716 (coe v4) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
