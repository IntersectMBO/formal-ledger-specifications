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

module MAlonzo.Code.Data.Rational.Unnormalised.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Apartness.Bundles
import qualified MAlonzo.Code.Algebra.Apartness.Structures
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Rational.Unnormalised.Properties._.xy∙z≈xz∙y
d_xy'8729'z'8776'xz'8729'y_30 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'xz'8729'y_30 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈y∙xz
d_xy'8729'z'8776'y'8729'xz_38 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'y'8729'xz_38 = erased
-- Data.Rational.Unnormalised.Properties.↥↧≡⇒≡
d_'8613''8615''8801''8658''8801'_82 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''8615''8801''8658''8801'_82 = erased
-- Data.Rational.Unnormalised.Properties./-cong
d_'47''45'cong_96 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong_96 = erased
-- Data.Rational.Unnormalised.Properties.↥[n/d]≡n
d_'8613''91'n'47'd'93''8801'n_104 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''91'n'47'd'93''8801'n_104 = erased
-- Data.Rational.Unnormalised.Properties.↧[n/d]≡d
d_'8615''91'n'47'd'93''8801'd_116 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''91'n'47'd'93''8801'd_116 = erased
-- Data.Rational.Unnormalised.Properties.drop-*≡*
d_drop'45''42''8801''42'_126 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''42''8801''42'_126 = erased
-- Data.Rational.Unnormalised.Properties.≃-refl
d_'8771''45'refl_130 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'refl_130 ~v0 = du_'8771''45'refl_130
du_'8771''45'refl_130 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'refl_130
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.≃-reflexive
d_'8771''45'reflexive_132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'reflexive_132 ~v0 ~v1 ~v2 = du_'8771''45'reflexive_132
du_'8771''45'reflexive_132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'reflexive_132
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.≃-sym
d_'8771''45'sym_134 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'sym_134 ~v0 ~v1 v2 = du_'8771''45'sym_134 v2
du_'8771''45'sym_134 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'sym_134 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.≃-trans
d_'8771''45'trans_138 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'trans_138 ~v0 ~v1 ~v2 v3 v4
  = du_'8771''45'trans_138 v3 v4
du_'8771''45'trans_138 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'trans_138 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties._≃?_
d__'8771''63'__158 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8771''63'__158 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8799'__2558
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.0≄1
d_0'8772'1_164 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8772'1_164 = erased
-- Data.Rational.Unnormalised.Properties.≃-≄-irreflexive
d_'8771''45''8772''45'irreflexive_166 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8771''45''8772''45'irreflexive_166 = erased
-- Data.Rational.Unnormalised.Properties.≄-symmetric
d_'8772''45'symmetric_172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8772''45'symmetric_172 = erased
-- Data.Rational.Unnormalised.Properties.≄-cotransitive
d_'8772''45'cotransitive_178 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8772''45'cotransitive_178 v0 v1 ~v2 v3
  = du_'8772''45'cotransitive_178 v0 v1 v3
du_'8772''45'cotransitive_178 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8772''45'cotransitive_178 v0 v1 v2
  = let v3 = d__'8771''63'__158 (coe v0) (coe v2) in
    coe
      (let v4 = d__'8771''63'__158 (coe v2) (coe v1) in
       coe
         (case coe v3 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then coe
                          seq (coe v6)
                          (case coe v4 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                               -> if coe v7
                                    then coe
                                           seq (coe v8)
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
                                    else coe
                                           seq (coe v8)
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   else coe
                          seq (coe v6) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Unnormalised.Properties.≃-isEquivalence
d_'8771''45'isEquivalence_224 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8771''45'isEquivalence_224
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_743
      (\ v0 -> coe du_'8771''45'refl_130)
      (\ v0 v1 v2 -> coe du_'8771''45'sym_134 v2)
      (\ v0 v1 v2 v3 v4 -> coe du_'8771''45'trans_138 v3 v4)
-- Data.Rational.Unnormalised.Properties.≃-isDecEquivalence
d_'8771''45'isDecEquivalence_226 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8771''45'isDecEquivalence_226
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_3075
      (coe d_'8771''45'isEquivalence_224) (coe d__'8771''63'__158)
-- Data.Rational.Unnormalised.Properties.≄-isApartnessRelation
d_'8772''45'isApartnessRelation_228 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
d_'8772''45'isApartnessRelation_228
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsApartnessRelation'46'constructor_30149
      erased
      (\ v0 v1 v2 v3 -> coe du_'8772''45'cotransitive_178 v0 v1 v3)
-- Data.Rational.Unnormalised.Properties.≄-tight
d_'8772''45'tight_230 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8772''45'tight_230 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_decidable'45'stable_164
              (coe d__'8771''63'__158 (coe v0) (coe v1))))
      (coe (\ v2 v3 -> coe v3 v2))
-- Data.Rational.Unnormalised.Properties.≃-setoid
d_'8771''45'setoid_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8771''45'setoid_246
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      d_'8771''45'isEquivalence_224
-- Data.Rational.Unnormalised.Properties.≃-decSetoid
d_'8771''45'decSetoid_248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8771''45'decSetoid_248
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1377
      d_'8771''45'isDecEquivalence_226
-- Data.Rational.Unnormalised.Properties.≃-Reasoning._IsRelatedTo_
d__IsRelatedTo__252 a0 a1 = ()
-- Data.Rational.Unnormalised.Properties.≃-Reasoning._∎
d__'8718'_254 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_254
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                    (coe v0)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.begin_
d_begin__256 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_begin__256
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.start
d_start_260 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_start_260 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈
d_step'45''8776'_262 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_262
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_264 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_264
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_266 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_266
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈˘
d_step'45''8776''728'_268 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_268
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡
d_step'45''8801'_270 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_270
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_272 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_272 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_272 v2
du_step'45''8801''45''8739'_272 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_272 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_274 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_274
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_276 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_276
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡˘
d_step'45''8801''728'_278 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_278
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.stop
d_stop_280 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_280
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.∼-go
d_'8764''45'go_282 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_282
  = let v0 = d_'8771''45'setoid_246 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.≡-go
d_'8801''45'go_284 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_284 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_284 v4
du_'8801''45'go_284 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_284 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.↥p≡0⇒p≃0
d_'8613'p'8801'0'8658'p'8771'0_292 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8613'p'8801'0'8658'p'8771'0_292 ~v0 ~v1
  = du_'8613'p'8801'0'8658'p'8771'0_292
du_'8613'p'8801'0'8658'p'8771'0_292 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8613'p'8801'0'8658'p'8771'0_292
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.p≃0⇒↥p≡0
d_p'8771'0'8658''8613'p'8801'0_302 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8771'0'8658''8613'p'8801'0_302 = erased
-- Data.Rational.Unnormalised.Properties.↥p≡↥q≡0⇒p≃q
d_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_316 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_316 ~v0 ~v1 ~v2 ~v3
  = du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_316
du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_316 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_316
  = coe
      du_'8771''45'trans_138 (coe du_'8613'p'8801'0'8658'p'8771'0_292)
      (coe
         du_'8771''45'sym_134 (coe du_'8613'p'8801'0'8658'p'8771'0_292))
-- Data.Rational.Unnormalised.Properties.neg-involutive-≡
d_neg'45'involutive'45''8801'_326 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'involutive'45''8801'_326 = erased
-- Data.Rational.Unnormalised.Properties.neg-involutive
d_neg'45'involutive_334 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'involutive_334 ~v0 = du_neg'45'involutive_334
du_neg'45'involutive_334 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_neg'45'involutive_334 = coe du_'8771''45'refl_130
-- Data.Rational.Unnormalised.Properties.-‿cong
d_'45''8255'cong_342 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'45''8255'cong_342 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
-- Data.Rational.Unnormalised.Properties.neg-mono-<
d_neg'45'mono'45''60'_364 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'mono'45''60'_364 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                           (let v10
                                  = coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                 (coe v10)
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                    (\ v11 v12 v13 v14 v15 -> v15)
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v0)))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                               v14 v15)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                               v14 v15))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0))))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                (coe v1))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                          (\ v11 v12 v13 v14 v15 -> v15)
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v1))))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v1)))))
                                          erased)
                                       (MAlonzo.Code.Data.Integer.Properties.d_neg'45'mono'45''60'_3168
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0)))
                                          (coe v9)))
                                    erased)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-cancel-<
d_neg'45'cancel'45''60'_380 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'cancel'45''60'_380 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                           (let v10
                                  = coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                 (coe v10)
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                    (\ v11 v12 v13 v14 v15 -> v15)
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v0)))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0)))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe v3)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                       (\ v11 v12 v13 v14 v15 -> v15)
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v0)))))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                             (\ v11 v12 v13 v14 v15 ->
                                                coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                  v14 v15)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                             (\ v11 v12 v13 v14 v15 ->
                                                coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                  v14 v15))
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe v5))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v0))))
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v11 v12 v13 v14 v15 -> v15)
                                             (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                      (coe v3))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1))))
                                             (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1)))))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                (\ v11 v12 v13 v14 v15 -> v15)
                                                (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                         (coe v3)
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                            (coe v1)))))
                                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1)))
                                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1))))
                                                erased)
                                             erased)
                                          (MAlonzo.Code.Data.Integer.Properties.d_neg'45'mono'45''60'_3168
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v1))))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                      (coe v0))))
                                             (coe v9)))
                                       erased)
                                    erased)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.drop-*≤*
d_drop'45''42''8804''42'_392 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_drop'45''42''8804''42'_392 ~v0 ~v1 v2
  = du_drop'45''42''8804''42'_392 v2
du_drop'45''42''8804''42'_392 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_drop'45''42''8804''42'_392 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-reflexive
d_'8804''45'reflexive_396 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'reflexive_396 v0 v1 v2
  = coe
      seq (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
         (coe
            MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2588
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v1)))))
-- Data.Rational.Unnormalised.Properties.≤-refl
d_'8804''45'refl_400 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'refl_400 v0
  = coe
      d_'8804''45'reflexive_396 (coe v0) (coe v0)
      (coe du_'8771''45'refl_130)
-- Data.Rational.Unnormalised.Properties.≤-reflexive-≡
d_'8804''45'reflexive'45''8801'_402 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'reflexive'45''8801'_402 v0 ~v1 ~v2
  = du_'8804''45'reflexive'45''8801'_402 v0
du_'8804''45'reflexive'45''8801'_402 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8804''45'reflexive'45''8801'_402 v0
  = coe d_'8804''45'refl_400 (coe v0)
-- Data.Rational.Unnormalised.Properties.≤-trans
d_'8804''45'trans_404 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'trans_404 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''8804''45'pos_5862
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                             (coe
                                MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                             (\ v11 v12 v13 ->
                                coe
                                  MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                  v13))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v2)))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v1)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v2))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v1)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                             (\ v11 v12 v13 v14 v15 -> v15)
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v2)))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v1)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v1))))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v0)))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v11 v12 v13 v14 v15 -> v15)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                   (\ v11 v12 v13 v14 v15 -> v15)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                         (\ v11 v12 v13 v14 v15 ->
                                            coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                              v14 v15))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                         (\ v11 v12 v13 v14 v15 -> v15)
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                            (\ v11 v12 v13 v14 v15 -> v15)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v2))))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                                  (\ v11 v12 v13 v14 v15 ->
                                                     coe
                                                       MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                       v14 v15))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                  (\ v11 v12 v13 v14 v15 -> v15)
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                     (\ v11 v12 v13 v14 v15 -> v15)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v1))))
                                                     erased)
                                                  erased)
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5960
                                                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  v10))
                                            erased)
                                         erased)
                                      (coe
                                         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5918
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe v7)))
                                   erased)
                                erased)
                             erased)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-antisym
d_'8804''45'antisym_438 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8804''45'antisym_438 ~v0 ~v1 v2 v3
  = du_'8804''45'antisym_438 v2 v3
du_'8804''45'antisym_438 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8804''45'antisym_438 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.≤-total
d_'8804''45'total_444 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_444 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
           (coe
              MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
              v2))
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
           (coe
              MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
              v2))
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_2620
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≤-respˡ-≃
d_'8804''45'resp'737''45''8771'_450 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'resp'737''45''8771'_450 v0 v1 v2 v3
  = coe
      d_'8804''45'trans_404 (coe v2) (coe v1) (coe v0)
      (coe
         d_'8804''45'reflexive_396 (coe v2) (coe v1)
         (coe du_'8771''45'sym_134 (coe v3)))
-- Data.Rational.Unnormalised.Properties.≤-respʳ-≃
d_'8804''45'resp'691''45''8771'_454 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'resp'691''45''8771'_454 v0 v1 v2 v3 v4
  = coe
      d_'8804''45'trans_404 (coe v0) (coe v1) (coe v2) (coe v4)
      (coe d_'8804''45'reflexive_396 (coe v1) (coe v2) (coe v3))
-- Data.Rational.Unnormalised.Properties.≤-resp₂-≃
d_'8804''45'resp'8322''45''8771'_460 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''45'resp'8322''45''8771'_460
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'8804''45'resp'691''45''8771'_454)
      (coe d_'8804''45'resp'737''45''8771'_450)
-- Data.Rational.Unnormalised.Properties._≤?_
d__'8804''63'__462 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__462 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2638
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties._≥?_
d__'8805''63'__468 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__468 v0 v1 = coe d__'8804''63'__462 (coe v1) (coe v0)
-- Data.Rational.Unnormalised.Properties.≤-irrelevant
d_'8804''45'irrelevant_470 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_470 = erased
-- Data.Rational.Unnormalised.Properties.≤-isPreorder
d_'8804''45'isPreorder_476 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_476
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe d_'8771''45'isEquivalence_224) (coe d_'8804''45'reflexive_396)
      (coe d_'8804''45'trans_404)
-- Data.Rational.Unnormalised.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_478 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_478
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder_476) (coe d_'8804''45'total_444)
-- Data.Rational.Unnormalised.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_480 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_480
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_476)
      (\ v0 v1 v2 v3 -> coe du_'8804''45'antisym_438 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_482 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_482
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_480) (coe d_'8804''45'total_444)
-- Data.Rational.Unnormalised.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_484 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_484
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_482) (coe d__'8771''63'__158)
      (coe d__'8804''63'__462)
-- Data.Rational.Unnormalised.Properties.≤-preorder
d_'8804''45'preorder_486 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_486
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8804''45'isPreorder_476
-- Data.Rational.Unnormalised.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_488 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_488
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder_478
-- Data.Rational.Unnormalised.Properties.≤-poset
d_'8804''45'poset_490 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8804''45'poset_490
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      d_'8804''45'isPartialOrder_480
-- Data.Rational.Unnormalised.Properties.≤-totalOrder
d_'8804''45'totalOrder_492 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_'8804''45'totalOrder_492
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15657
      d_'8804''45'isTotalOrder_482
-- Data.Rational.Unnormalised.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_494 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_494
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_484
-- Data.Rational.Unnormalised.Properties.≤-isPreorder-≡
d_'8804''45'isPreorder'45''8801'_496 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder'45''8801'_496
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive'45''8801'_402 v0)
      (coe d_'8804''45'trans_404)
-- Data.Rational.Unnormalised.Properties.≤-isTotalPreorder-≡
d_'8804''45'isTotalPreorder'45''8801'_498 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder'45''8801'_498
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder'45''8801'_496)
      (coe d_'8804''45'total_444)
-- Data.Rational.Unnormalised.Properties.≤-preorder-≡
d_'8804''45'preorder'45''8801'_500 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder'45''8801'_500
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8804''45'isPreorder'45''8801'_496
-- Data.Rational.Unnormalised.Properties.≤-totalPreorder-≡
d_'8804''45'totalPreorder'45''8801'_502 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder'45''8801'_502
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder'45''8801'_498
-- Data.Rational.Unnormalised.Properties.mono⇒cong
d_mono'8658'cong_506 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'8658'cong_506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8658'cong_276
      (\ v1 v2 v3 -> coe du_'8771''45'sym_134 v3)
      (coe d_'8804''45'reflexive_396)
      (\ v1 v2 v3 v4 -> coe du_'8804''45'antisym_438 v3 v4) (coe v0)
-- Data.Rational.Unnormalised.Properties.antimono⇒cong
d_antimono'8658'cong_510 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'8658'cong_510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_antimono'8658'cong_290
      (\ v1 v2 v3 -> coe du_'8771''45'sym_134 v3)
      (coe d_'8804''45'reflexive_396)
      (\ v1 v2 v3 v4 -> coe du_'8804''45'antisym_438 v3 v4) (coe v0)
-- Data.Rational.Unnormalised.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_512 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  AgdaAny ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''7495''8658''8804'_512 v0 v1 ~v2
  = du_'8804''7495''8658''8804'_512 v0 v1
du_'8804''7495''8658''8804'_512 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8804''7495''8658''8804'_512 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''7495''8658''8804'_2686
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__230
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1)))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__230
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))))
-- Data.Rational.Unnormalised.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  AgdaAny
d_'8804''8658''8804''7495'_514 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_514 v2
du_'8804''8658''8804''7495'_514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  AgdaAny
du_'8804''8658''8804''7495'_514 v0
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'8804''8658''8804''7495'_2694
      (coe du_drop'45''42''8804''42'_392 (coe v0))
-- Data.Rational.Unnormalised.Properties.drop-*<*
d_drop'45''42''60''42'_516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_drop'45''42''60''42'_516 ~v0 ~v1 v2
  = du_drop'45''42''60''42'_516 v2
du_drop'45''42''60''42'_516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_drop'45''42''60''42'_516 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.<⇒≤
d_'60''8658''8804'_520 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'60''8658''8804'_520 ~v0 ~v1 v2 = du_'60''8658''8804'_520 v2
du_'60''8658''8804'_520 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'60''8658''8804'_520 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3
        -> coe
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
             (coe
                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.<⇒≢
d_'60''8658''8802'_524 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_524 = erased
-- Data.Rational.Unnormalised.Properties.<⇒≱
d_'60''8658''8817'_528 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_528 = erased
-- Data.Rational.Unnormalised.Properties.≰⇒>
d_'8816''8658''62'_532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8816''8658''62'_532 v0 v1 ~v2 = du_'8816''8658''62'_532 v0 v1
du_'8816''8658''62'_532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'8816''8658''62'_532 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8816''8658''62'_2740
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≮⇒≥
d_'8814''8658''8805'_536 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8814''8658''8805'_536 v0 v1 ~v2
  = du_'8814''8658''8805'_536 v0 v1
du_'8814''8658''8805'_536 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8814''8658''8805'_536 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8814''8658''8805'_2766
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≰⇒≥
d_'8816''8658''8805'_540 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8816''8658''8805'_540 v0 v1 ~v2
  = du_'8816''8658''8805'_540 v0 v1
du_'8816''8658''8805'_540 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8816''8658''8805'_540 v0 v1
  = coe
      du_'60''8658''8804'_520
      (coe du_'8816''8658''62'_532 (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties.<-irrefl-≡
d_'60''45'irrefl'45''8801'_542 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl'45''8801'_542 = erased
-- Data.Rational.Unnormalised.Properties.<-irrefl
d_'60''45'irrefl_546 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_546 = erased
-- Data.Rational.Unnormalised.Properties.<-asym
d_'60''45'asym_552 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_552 = erased
-- Data.Rational.Unnormalised.Properties.<-dense
d_'60''45'dense_556 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'dense_556 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe du_m_568 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe d_p'60'm_570 (coe v0) (coe v1) (coe v5))
                (coe d_m'60'q_572 (coe v0) (coe v1) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.m
d_m_568 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_m_568 v0 v1 ~v2 = du_m_568 v0 v1
du_m_568 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_m_568 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'43'__276
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_154
         (coe
            addInt
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
               (coe v1))))
-- Data.Rational.Unnormalised.Properties._.p<m
d_p'60'm_570 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_p'60'm_570 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v3)
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe du_m_568 (coe v0) (coe v1))))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe du_m_568 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe du_m_568 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852 v7 v8)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                          v7 v8))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1))))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0))))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe du_m_568 (coe v0) (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                     (\ v4 v5 v6 v7 v8 -> v8)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v0))))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'43'__276
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe du_m_568 (coe v0) (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe du_m_568 (coe v0) (coe v1)))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v0))))
                     erased)
                  (MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'691''45''60'_4474
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe v2)))
               erased)))
-- Data.Rational.Unnormalised.Properties._.m<q
d_m'60'q_572 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_m'60'q_572 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v3)
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe du_m_568 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v1)))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v1))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe du_m_568 (coe v0) (coe v1))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe du_m_568 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe du_m_568 (coe v0) (coe v1))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852 v7 v8)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                          v7 v8))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1))))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1))))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe du_m_568 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                     (\ v4 v5 v6 v7 v8 -> v8)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v1))))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'43'__276
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe v1))))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe du_m_568 (coe v0) (coe v1))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                              (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                              (coe du_m_568 (coe v0) (coe v1)))))
                     erased)
                  (coe
                     MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'737''45''60'_4502
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     v2))
               erased)))
-- Data.Rational.Unnormalised.Properties.≤-<-trans
d_'8804''45''60''45'trans_574 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8804''45''60''45'trans_574 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                             (coe v1)))
                       (let v11
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v11)
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8321'_590 (coe v0)) (coe du_d'8323'_600 (coe v2)))
                                (coe du_d'8322'_598 (coe v1)))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8323'_594 (coe v2)) (coe du_d'8321'_596 (coe v0)))
                                (coe du_d'8322'_598 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v12 v13 v14 v15 v16 -> v16)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_590 (coe v0)) (coe du_d'8323'_600 (coe v2)))
                                   (coe du_d'8322'_598 (coe v1)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8321'_590 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_d'8323'_600 (coe v2)) (coe du_d'8322'_598 (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8323'_594 (coe v2)) (coe du_d'8321'_596 (coe v0)))
                                   (coe du_d'8322'_598 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v12 v13 v14 v15 v16 -> v16)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_590 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_d'8323'_600 (coe v2))
                                         (coe du_d'8322'_598 (coe v1))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_590 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_d'8322'_598 (coe v1))
                                         (coe du_d'8323'_600 (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_n'8323'_594 (coe v2))
                                         (coe du_d'8321'_596 (coe v0)))
                                      (coe du_d'8322'_598 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                      (\ v12 v13 v14 v15 v16 -> v16)
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_n'8321'_590 (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_d'8322'_598 (coe v1))
                                            (coe du_d'8323'_600 (coe v2))))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_n'8321'_590 (coe v0))
                                            (coe du_d'8322'_598 (coe v1)))
                                         (coe du_d'8323'_600 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_n'8323'_594 (coe v2))
                                            (coe du_d'8321'_596 (coe v0)))
                                         (coe du_d'8322'_598 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                            (coe
                                               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                 v15 v16))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8321'_590 (coe v0))
                                               (coe du_d'8322'_598 (coe v1)))
                                            (coe du_d'8323'_600 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8322'_592 (coe v1))
                                               (coe du_d'8321'_596 (coe v0)))
                                            (coe du_d'8323'_600 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8323'_594 (coe v2))
                                               (coe du_d'8321'_596 (coe v0)))
                                            (coe du_d'8322'_598 (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                            (\ v12 v13 v14 v15 v16 -> v16)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_n'8322'_592 (coe v1))
                                                  (coe du_d'8321'_596 (coe v0)))
                                               (coe du_d'8323'_600 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_d'8321'_596 (coe v0))
                                                  (coe du_n'8322'_592 (coe v1)))
                                               (coe du_d'8323'_600 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_n'8323'_594 (coe v2))
                                                  (coe du_d'8321'_596 (coe v0)))
                                               (coe du_d'8322'_598 (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                               (\ v12 v13 v14 v15 v16 -> v16)
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_596 (coe v0))
                                                     (coe du_n'8322'_592 (coe v1)))
                                                  (coe du_d'8323'_600 (coe v2)))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_d'8321'_596 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_n'8322'_592 (coe v1))
                                                     (coe du_d'8323'_600 (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_n'8323'_594 (coe v2))
                                                     (coe du_d'8321'_596 (coe v0)))
                                                  (coe du_d'8322'_598 (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                          v15 v16)
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                          v15 v16))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_596 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8322'_592 (coe v1))
                                                        (coe du_d'8323'_600 (coe v2))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_596 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8323'_594 (coe v2))
                                                        (coe du_d'8322'_598 (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8323'_594 (coe v2))
                                                        (coe du_d'8321'_596 (coe v0)))
                                                     (coe du_d'8322'_598 (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                     (\ v12 v13 v14 v15 v16 -> v16)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_d'8321'_596 (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_n'8323'_594 (coe v2))
                                                           (coe du_d'8322'_598 (coe v1))))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_d'8321'_596 (coe v0))
                                                           (coe du_n'8323'_594 (coe v2)))
                                                        (coe du_d'8322'_598 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_n'8323'_594 (coe v2))
                                                           (coe du_d'8321'_596 (coe v0)))
                                                        (coe du_d'8322'_598 (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                        (\ v12 v13 v14 v15 v16 -> v16)
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_d'8321'_596 (coe v0))
                                                              (coe du_n'8323'_594 (coe v2)))
                                                           (coe du_d'8322'_598 (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_n'8323'_594 (coe v2))
                                                              (coe du_d'8321'_596 (coe v0)))
                                                           (coe du_d'8322'_598 (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_n'8323'_594 (coe v2))
                                                              (coe du_d'8321'_596 (coe v0)))
                                                           (coe du_d'8322'_598 (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                 (coe du_n'8323'_594 (coe v2))
                                                                 (coe du_d'8321'_596 (coe v0)))
                                                              (coe du_d'8322'_598 (coe v1))))
                                                        erased)
                                                     erased)
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6078
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (coe v10)))
                                               erased)
                                            erased)
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5918
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            (coe v7)))
                                      erased)
                                   erased)
                                erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8321'_590 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_590 v0
du_n'8321'_590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_590 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_592 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8322'_592 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_592 v1
du_n'8322'_592 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_592 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8323'_594 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_594 v2
du_n'8323'_594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_594 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_596 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8321'_596 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_596 v0
du_d'8321'_596 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_596 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_598 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8322'_598 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_598 v1
du_d'8322'_598 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_598 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8323'_600 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_600 v2
du_d'8323'_600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_600 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-≤-trans
d_'60''45''8804''45'trans_608 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45''8804''45'trans_608 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                             (coe v1)))
                       (let v11
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v11)
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8321'_624 (coe v0)) (coe du_d'8323'_634 (coe v2)))
                                (coe du_d'8322'_632 (coe v1)))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8323'_628 (coe v2)) (coe du_d'8321'_630 (coe v0)))
                                (coe du_d'8322'_632 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v12 v13 v14 v15 v16 -> v16)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_624 (coe v0)) (coe du_d'8323'_634 (coe v2)))
                                   (coe du_d'8322'_632 (coe v1)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe du_n'8321'_624 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_d'8323'_634 (coe v2)) (coe du_d'8322'_632 (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8323'_628 (coe v2)) (coe du_d'8321'_630 (coe v0)))
                                   (coe du_d'8322'_632 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v12 v13 v14 v15 v16 -> v16)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_624 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_d'8323'_634 (coe v2))
                                         (coe du_d'8322'_632 (coe v1))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe du_n'8321'_624 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_d'8322'_632 (coe v1))
                                         (coe du_d'8323'_634 (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_n'8323'_628 (coe v2))
                                         (coe du_d'8321'_630 (coe v0)))
                                      (coe du_d'8322'_632 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                      (\ v12 v13 v14 v15 v16 -> v16)
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe du_n'8321'_624 (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_d'8322'_632 (coe v1))
                                            (coe du_d'8323'_634 (coe v2))))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_n'8321'_624 (coe v0))
                                            (coe du_d'8322'_632 (coe v1)))
                                         (coe du_d'8323'_634 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe du_n'8323'_628 (coe v2))
                                            (coe du_d'8321'_630 (coe v0)))
                                         (coe du_d'8322'_632 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                 v15 v16)
                                            (coe
                                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                 v15 v16))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8321'_624 (coe v0))
                                               (coe du_d'8322'_632 (coe v1)))
                                            (coe du_d'8323'_634 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8322'_626 (coe v1))
                                               (coe du_d'8321'_630 (coe v0)))
                                            (coe du_d'8323'_634 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe du_n'8323'_628 (coe v2))
                                               (coe du_d'8321'_630 (coe v0)))
                                            (coe du_d'8322'_632 (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                            (\ v12 v13 v14 v15 v16 -> v16)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_n'8322'_626 (coe v1))
                                                  (coe du_d'8321'_630 (coe v0)))
                                               (coe du_d'8323'_634 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_d'8321'_630 (coe v0))
                                                  (coe du_n'8322'_626 (coe v1)))
                                               (coe du_d'8323'_634 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_n'8323'_628 (coe v2))
                                                  (coe du_d'8321'_630 (coe v0)))
                                               (coe du_d'8322'_632 (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                               (\ v12 v13 v14 v15 v16 -> v16)
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_630 (coe v0))
                                                     (coe du_n'8322'_626 (coe v1)))
                                                  (coe du_d'8323'_634 (coe v2)))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe du_d'8321'_630 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_n'8322'_626 (coe v1))
                                                     (coe du_d'8323'_634 (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_n'8323'_628 (coe v2))
                                                     (coe du_d'8321'_630 (coe v0)))
                                                  (coe du_d'8322'_632 (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                          v15 v16))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_630 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8322'_626 (coe v1))
                                                        (coe du_d'8323'_634 (coe v2))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe du_d'8321'_630 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8323'_628 (coe v2))
                                                        (coe du_d'8322'_632 (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_n'8323'_628 (coe v2))
                                                        (coe du_d'8321'_630 (coe v0)))
                                                     (coe du_d'8322'_632 (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                     (\ v12 v13 v14 v15 v16 -> v16)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe du_d'8321'_630 (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_n'8323'_628 (coe v2))
                                                           (coe du_d'8322'_632 (coe v1))))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_d'8321'_630 (coe v0))
                                                           (coe du_n'8323'_628 (coe v2)))
                                                        (coe du_d'8322'_632 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe du_n'8323'_628 (coe v2))
                                                           (coe du_d'8321'_630 (coe v0)))
                                                        (coe du_d'8322'_632 (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                        (\ v12 v13 v14 v15 v16 -> v16)
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_d'8321'_630 (coe v0))
                                                              (coe du_n'8323'_628 (coe v2)))
                                                           (coe du_d'8322'_632 (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_n'8323'_628 (coe v2))
                                                              (coe du_d'8321'_630 (coe v0)))
                                                           (coe du_d'8322'_632 (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe du_n'8323'_628 (coe v2))
                                                              (coe du_d'8321'_630 (coe v0)))
                                                           (coe du_d'8322'_632 (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                 (coe du_n'8323'_628 (coe v2))
                                                                 (coe du_d'8321'_630 (coe v0)))
                                                              (coe du_d'8322'_632 (coe v1))))
                                                        erased)
                                                     erased)
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5960
                                                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v2)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     v10))
                                               erased)
                                            erased)
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6110
                                            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v1)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            v7))
                                      erased)
                                   erased)
                                erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_624 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_n'8321'_624 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_624 v0
du_n'8321'_624 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_624 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_626 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_n'8322'_626 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_626 v1
du_n'8322'_626 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_626 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_628 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_n'8323'_628 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_628 v2
du_n'8323'_628 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_628 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_630 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_d'8321'_630 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_630 v0
du_d'8321'_630 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_630 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_632 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_d'8322'_632 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_632 v1
du_d'8322'_632 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_632 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_634 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_d'8323'_634 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_634 v2
du_d'8323'_634 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_634 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-trans
d_'60''45'trans_642 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'trans_642 v0 v1 v2 v3
  = coe
      d_'8804''45''60''45'trans_574 (coe v0) (coe v1) (coe v2)
      (coe du_'60''8658''8804'_520 (coe v3))
-- Data.Rational.Unnormalised.Properties.<-cmp
d_'60''45'cmp_644 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_644 v0 v1
  = let v2
          = MAlonzo.Code.Data.Integer.Properties.d_'60''45'cmp_2858
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                    (coe v0))
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                    (coe v1)))
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                    (coe v1))
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                    (coe v0))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties._<?_
d__'60''63'__684 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__684 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2948
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties._>?_
d__'62''63'__690 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__690 v0 v1 = coe d__'60''63'__684 (coe v1) (coe v0)
-- Data.Rational.Unnormalised.Properties.<-irrelevant
d_'60''45'irrelevant_692 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_692 = erased
-- Data.Rational.Unnormalised.Properties.<-respʳ-≃
d_'60''45'resp'691''45''8771'_698 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'resp'691''45''8771'_698 v0 v1 v2 v3 v4
  = coe
      seq (coe v3)
      (case coe v4 of
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7
           -> coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                (coe
                   MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                         (coe v0))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe v2)))
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                         (coe v2))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe v0)))
                   (addInt
                      (coe (1 :: Integer))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                         (coe v1)))
                   (let v8
                          = coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                         (coe v8)
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe du_n'8321'_714 (coe v0)) (coe du_d'8323'_724 (coe v2)))
                            (coe du_d'8322'_722 (coe v1)))
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe du_n'8323'_718 (coe v2)) (coe du_d'8321'_720 (coe v0)))
                            (coe du_d'8322'_722 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v9 v10 v11 v12 v13 -> v13)
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe du_n'8321'_714 (coe v0)) (coe du_d'8323'_724 (coe v2)))
                               (coe du_d'8322'_722 (coe v1)))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe du_n'8321'_714 (coe v0))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe du_d'8323'_724 (coe v2)) (coe du_d'8322'_722 (coe v1))))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe du_n'8323'_718 (coe v2)) (coe du_d'8321'_720 (coe v0)))
                               (coe du_d'8322'_722 (coe v1)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                               (\ v9 v10 v11 v12 v13 -> v13)
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe du_n'8321'_714 (coe v0))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe du_d'8323'_724 (coe v2)) (coe du_d'8322'_722 (coe v1))))
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe du_n'8321'_714 (coe v0))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe du_d'8322'_722 (coe v1)) (coe du_d'8323'_724 (coe v2))))
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe du_n'8323'_718 (coe v2)) (coe du_d'8321'_720 (coe v0)))
                                  (coe du_d'8322'_722 (coe v1)))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                  (\ v9 v10 v11 v12 v13 -> v13)
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe du_n'8321'_714 (coe v0))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe du_d'8322'_722 (coe v1))
                                        (coe du_d'8323'_724 (coe v2))))
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe du_n'8321'_714 (coe v0)) (coe du_d'8322'_722 (coe v1)))
                                     (coe du_d'8323'_724 (coe v2)))
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe du_n'8323'_718 (coe v2)) (coe du_d'8321'_720 (coe v0)))
                                     (coe du_d'8322'_722 (coe v1)))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                        (\ v9 v10 v11 v12 v13 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                             v12 v13)
                                        (coe
                                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                        (\ v9 v10 v11 v12 v13 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                             v12 v13))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe du_n'8321'_714 (coe v0))
                                           (coe du_d'8322'_722 (coe v1)))
                                        (coe du_d'8323'_724 (coe v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe du_n'8322'_716 (coe v1))
                                           (coe du_d'8321'_720 (coe v0)))
                                        (coe du_d'8323'_724 (coe v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe du_n'8323'_718 (coe v2))
                                           (coe du_d'8321'_720 (coe v0)))
                                        (coe du_d'8322'_722 (coe v1)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                        (\ v9 v10 v11 v12 v13 -> v13)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_n'8322'_716 (coe v1))
                                              (coe du_d'8321'_720 (coe v0)))
                                           (coe du_d'8323'_724 (coe v2)))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe du_n'8322'_716 (coe v1))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_d'8321'_720 (coe v0))
                                              (coe du_d'8323'_724 (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_n'8323'_718 (coe v2))
                                              (coe du_d'8321'_720 (coe v0)))
                                           (coe du_d'8322'_722 (coe v1)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                           (\ v9 v10 v11 v12 v13 -> v13)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_n'8322'_716 (coe v1))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_d'8321'_720 (coe v0))
                                                 (coe du_d'8323'_724 (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_n'8322'_716 (coe v1))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_d'8323'_724 (coe v2))
                                                 (coe du_d'8321'_720 (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_n'8323'_718 (coe v2))
                                                 (coe du_d'8321'_720 (coe v0)))
                                              (coe du_d'8322'_722 (coe v1)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                              (\ v9 v10 v11 v12 v13 -> v13)
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_n'8322'_716 (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_d'8323'_724 (coe v2))
                                                    (coe du_d'8321'_720 (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_n'8322'_716 (coe v1))
                                                    (coe du_d'8323'_724 (coe v2)))
                                                 (coe du_d'8321'_720 (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_n'8323'_718 (coe v2))
                                                    (coe du_d'8321'_720 (coe v0)))
                                                 (coe du_d'8322'_722 (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                 (\ v9 v10 v11 v12 v13 -> v13)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe du_n'8322'_716 (coe v1))
                                                       (coe du_d'8323'_724 (coe v2)))
                                                    (coe du_d'8321'_720 (coe v0)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe du_n'8323'_718 (coe v2))
                                                       (coe du_d'8322'_722 (coe v1)))
                                                    (coe du_d'8321'_720 (coe v0)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe du_n'8323'_718 (coe v2))
                                                       (coe du_d'8321'_720 (coe v0)))
                                                    (coe du_d'8322'_722 (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                    (\ v9 v10 v11 v12 v13 -> v13)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe du_n'8323'_718 (coe v2))
                                                          (coe du_d'8322'_722 (coe v1)))
                                                       (coe du_d'8321'_720 (coe v0)))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe du_n'8323'_718 (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe du_d'8322'_722 (coe v1))
                                                          (coe du_d'8321'_720 (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe du_n'8323'_718 (coe v2))
                                                          (coe du_d'8321'_720 (coe v0)))
                                                       (coe du_d'8322'_722 (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                       (\ v9 v10 v11 v12 v13 -> v13)
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe du_n'8323'_718 (coe v2))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe du_d'8322'_722 (coe v1))
                                                             (coe du_d'8321'_720 (coe v0))))
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe du_n'8323'_718 (coe v2))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe du_d'8321'_720 (coe v0))
                                                             (coe du_d'8322'_722 (coe v1))))
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe du_n'8323'_718 (coe v2))
                                                             (coe du_d'8321'_720 (coe v0)))
                                                          (coe du_d'8322'_722 (coe v1)))
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                          (\ v9 v10 v11 v12 v13 -> v13)
                                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe du_n'8323'_718 (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe du_d'8321'_720 (coe v0))
                                                                (coe du_d'8322'_722 (coe v1))))
                                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe du_n'8323'_718 (coe v2))
                                                                (coe du_d'8321'_720 (coe v0)))
                                                             (coe du_d'8322'_722 (coe v1)))
                                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe du_n'8323'_718 (coe v2))
                                                                (coe du_d'8321'_720 (coe v0)))
                                                             (coe du_d'8322'_722 (coe v1)))
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                             (coe
                                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                   (coe du_n'8323'_718 (coe v2))
                                                                   (coe du_d'8321'_720 (coe v0)))
                                                                (coe du_d'8322'_722 (coe v1))))
                                                          erased)
                                                       erased)
                                                    erased)
                                                 erased)
                                              erased)
                                           erased)
                                        erased)
                                     (coe
                                        MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6110
                                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v2))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v1)))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe v1))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v0)))
                                        v7))
                                  erased)
                               erased)
                            erased))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_714 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8321'_714 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_714 v0
du_n'8321'_714 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_714 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_716 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8322'_716 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_716 v1
du_n'8322'_716 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_716 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_718 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_n'8323'_718 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_718 v2
du_n'8323'_718 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_718 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_720 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8321'_720 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_720 v0
du_d'8321'_720 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_720 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_722 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8322'_722 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_722 v1
du_d'8322'_722 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_722 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_724 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_d'8323'_724 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_724 v2
du_d'8323'_724 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_724 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-respˡ-≃
d_'60''45'resp'737''45''8771'_734 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'resp'737''45''8771'_734 v0 v1 v2 v3 v4
  = coe
      d_neg'45'mono'45''60'_364
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v5 v6 -> v6)
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v1 v0)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v5 v6 -> v6)
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v1 v2)
      (coe
         d_'60''45'resp'691''45''8771'_698
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v5 v6 -> v6)
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v1 v0)
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
            (\ v5 v6 -> v5) v1 v2)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v5 v6 -> v6)
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v1 v2)
         (coe d_'45''8255'cong_342 (coe v1) (coe v2) (coe v3))
         (coe d_neg'45'mono'45''60'_364 (coe v1) (coe v0) (coe v4)))
-- Data.Rational.Unnormalised.Properties.<-resp-≃
d_'60''45'resp'45''8771'_744 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8771'_744
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'60''45'resp'691''45''8771'_698)
      (coe d_'60''45'resp'737''45''8771'_734)
-- Data.Rational.Unnormalised.Properties.<-isStrictPartialOrder-≡
d_'60''45'isStrictPartialOrder'45''8801'_746 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder'45''8801'_746
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_642
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
-- Data.Rational.Unnormalised.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_752 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_752
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      d_'8771''45'isEquivalence_224 d_'60''45'trans_642
      d_'60''45'resp'45''8771'_744
-- Data.Rational.Unnormalised.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_754 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_754
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe d_'60''45'isStrictPartialOrder_752) (coe d_'60''45'cmp_644)
-- Data.Rational.Unnormalised.Properties.<-isDenseLinearOrder
d_'60''45'isDenseLinearOrder_756 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_594
d_'60''45'isDenseLinearOrder_756
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDenseLinearOrder'46'constructor_28059
      (coe d_'60''45'isStrictTotalOrder_754) (coe d_'60''45'dense_556)
-- Data.Rational.Unnormalised.Properties.<-strictPartialOrder-≡
d_'60''45'strictPartialOrder'45''8801'_758 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder'45''8801'_758
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder'45''8801'_746
-- Data.Rational.Unnormalised.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_760 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_760
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_752
-- Data.Rational.Unnormalised.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_762 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_762
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_754
-- Data.Rational.Unnormalised.Properties.<-denseLinearOrder
d_'60''45'denseLinearOrder_764 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DenseLinearOrder_1140
d_'60''45'denseLinearOrder_764
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DenseLinearOrder'46'constructor_23199
      d_'60''45'isDenseLinearOrder_756
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple._IsRelatedTo_
d__IsRelatedTo__770 a0 a1 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple._∎
d__'8718'_772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_772
  = let v0 = d_'8804''45'isPreorder_476 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.<-go
d_'60''45'go_774 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_774
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_642) (coe d_'60''45'resp'45''8771'_744)
      (coe d_'60''45''8804''45'trans_608)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsEquality
d_IsEquality_776 a0 a1 a2 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsEquality?
d_IsEquality'63'_778 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_778 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsStrict
d_IsStrict_780 a0 a1 a2 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsStrict?
d_IsStrict'63'_782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_782 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__784 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_begin__784
  = let v0 = d_'8804''45'isPreorder_476 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_520 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin-contradiction_
d_begin'45'contradiction__786 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__786 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__788 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_begin__788
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__790 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_begin__790
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.eqRelation
d_eqRelation_792 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_792
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.extractEquality
d_extractEquality_796 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_extractEquality_796 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractEquality_234
      v2 v3
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.extractStrict
d_extractStrict_798 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_extractStrict_798 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.start
d_start_806 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_start_806
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_476)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_520 v2)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-<
d_step'45''60'_808 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_808
  = let v0 = d_'60''45'trans_642 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_744 in
       coe
         (let v2 = d_'60''45''8804''45'trans_608 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈-⟨
d_step'45''8776''45''10216'_812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10216'_812
  = let v0 = d_'8804''45'isPreorder_476 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_744 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈-⟩
d_step'45''8776''45''10217'_814 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10217'_814
  = let v0 = d_'8804''45'isPreorder_476 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_744 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡
d_step'45''8801'_818 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_818
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-∣
d_step'45''8801''45''8739'_820 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_820 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_820 v2
du_step'45''8801''45''8739'_820 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_820 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-⟨
d_step'45''8801''45''10216'_822 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_822
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-⟩
d_step'45''8801''45''10217'_824 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_824
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡˘
d_step'45''8801''728'_826 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_826
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≤
d_step'45''8804'_828 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_828
  = let v0 = d_'8804''45'isPreorder_476 in
    coe
      (let v1 = d_'8804''45''60''45'trans_574 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.stop
d_stop_830 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_830
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_476)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.strictRelation
d_strictRelation_834 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_834
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≈-go
d_'8776''45'go_836 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_836
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_476) (coe d_'60''45'resp'45''8771'_744)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≡-go
d_'8801''45'go_838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_838 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_838 v4
du_'8801''45'go_838 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_838 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≤-go
d_'8804''45'go_840 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_840
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_476)
      (coe d_'8804''45''60''45'trans_574)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning._.step-≃-⟨
d_step'45''8771''45''10216'_860 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10216'_860
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_476)
         (coe d_'60''45'resp'45''8771'_744))
      (\ v0 v1 v2 -> coe du_'8771''45'sym_134 v2)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning._.step-≃-⟩
d_step'45''8771''45''10217'_862 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10217'_862
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_476)
         (coe d_'60''45'resp'45''8771'_744))
-- Data.Rational.Unnormalised.Properties.≥0⇒↥≥0
d_'8805'0'8658''8613''8805'0_868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8805'0'8658''8613''8805'0_868 v0 ~v1 v2
  = du_'8805'0'8658''8613''8805'0_868 v0 v2
du_'8805'0'8658''8613''8805'0_868 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8805'0'8658''8613''8805'0_868 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'8804''45'trans_2596
      (coe du_drop'45''42''8804''42'_392 (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2588
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
-- Data.Rational.Unnormalised.Properties.>0⇒↥>0
d_'62'0'8658''8613''62'0_880 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'62'0'8658''8613''62'0_880 v0 ~v1 v2
  = du_'62'0'8658''8613''62'0_880 v0 v2
du_'62'0'8658''8613''62'0_880 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'62'0'8658''8613''62'0_880 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
      (coe du_drop'45''42''60''42'_516 (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2588
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
-- Data.Rational.Unnormalised.Properties.positive⁻¹
d_positive'8315''185'_890 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_positive'8315''185'_890 v0 ~v1 = du_positive'8315''185'_890 v0
du_positive'8315''185'_890 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_positive'8315''185'_890 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
         (coe
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
            (coe
               MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))))
-- Data.Rational.Unnormalised.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_896 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_nonNegative'8315''185'_896 v0 ~v1
  = du_nonNegative'8315''185'_896 v0
du_nonNegative'8315''185'_896 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_nonNegative'8315''185'_896 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                   (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.negative⁻¹
d_negative'8315''185'_902 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_negative'8315''185'_902 v0 ~v1 = du_negative'8315''185'_902 v0
du_negative'8315''185'_902 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_negative'8315''185'_902 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
         (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64))
-- Data.Rational.Unnormalised.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_908 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_nonPositive'8315''185'_908 v0 ~v1
  = du_nonPositive'8315''185'_908 v0
du_nonPositive'8315''185'_908 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_nonPositive'8315''185'_908 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
             _ -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.pos⇒nonNeg
d_pos'8658'nonNeg_914 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_pos'8658'nonNeg_914 v0 ~v1 = du_pos'8658'nonNeg_914 v0
du_pos'8658'nonNeg_914 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_pos'8658'nonNeg_914 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg⇒nonPos
d_neg'8658'nonPos_920 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
d_neg'8658'nonPos_920 v0 ~v1 = du_neg'8658'nonPos_920 v0
du_neg'8658'nonPos_920 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
du_neg'8658'nonPos_920 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonPositive'46'constructor_1555
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg<pos
d_neg'60'pos_928 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'60'pos_928 v0 v1 ~v2 ~v3 = du_neg'60'pos_928 v0 v1
du_neg'60'pos_928 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_neg'60'pos_928 v0 v1
  = coe
      d_'60''45'trans_642 v0
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108 v1
      (coe du_negative'8315''185'_902 (coe v0))
      (coe du_positive'8315''185'_890 (coe v1))
-- Data.Rational.Unnormalised.Properties.pos⇒nonZero
d_pos'8658'nonZero_936 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_pos'8658'nonZero_936 v0 ~v1 = du_pos'8658'nonZero_936 v0
du_pos'8658'nonZero_936 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_pos'8658'nonZero_936 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.nonNeg∧nonPos⇒0
d_nonNeg'8743'nonPos'8658'0_940 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_nonNeg'8743'nonPos'8658'0_940 v0 ~v1 ~v2
  = du_nonNeg'8743'nonPos'8658'0_940 v0
du_nonNeg'8743'nonPos'8658'0_940 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_nonNeg'8743'nonPos'8658'0_940 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.nonNeg<⇒pos
d_nonNeg'60''8658'pos_948 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_nonNeg'60''8658'pos_948 v0 v1 ~v2 v3
  = du_nonNeg'60''8658'pos_948 v0 v1 v3
du_nonNeg'60''8658'pos_948 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_nonNeg'60''8658'pos_948 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe v1)
      (coe
         d_'8804''45''60''45'trans_574
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0) (coe v1) (coe du_nonNegative'8315''185'_896 (coe v0))
         (coe v2))
-- Data.Rational.Unnormalised.Properties.nonNeg≤⇒nonNeg
d_nonNeg'8804''8658'nonNeg_960 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_nonNeg'8804''8658'nonNeg_960 v0 v1 ~v2 v3
  = du_nonNeg'8804''8658'nonNeg_960 v0 v1 v3
du_nonNeg'8804''8658'nonNeg_960 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_nonNeg'8804''8658'nonNeg_960 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_186
      (coe v1)
      (coe
         d_'8804''45'trans_404
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0) (coe v1) (coe du_nonNegative'8315''185'_896 (coe v0))
         (coe v2))
-- Data.Rational.Unnormalised.Properties.neg⇒nonZero
d_neg'8658'nonZero_968 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_neg'8658'nonZero_968 v0 ~v1 = du_neg'8658'nonZero_968 v0
du_neg'8658'nonZero_968 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_neg'8658'nonZero_968 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.+-cong
d_'43''45'cong_970 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong_970 v0 v1 v2 v3 v4 v5
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               seq (coe v3)
               (coe
                  seq (coe v4)
                  (coe
                     seq (coe v5)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))))))
-- Data.Rational.Unnormalised.Properties._.↥x
d_'8613'x_988 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'x_988 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'x_988 v0
du_'8613'x_988 :: Integer -> Integer
du_'8613'x_988 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧x
d_'8615'x_990 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'x_990 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'x_990 v0 v1
du_'8615'x_990 :: Integer -> Integer -> Integer
du_'8615'x_990 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥y
d_'8613'y_992 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'y_992 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'y_992 v2
du_'8613'y_992 :: Integer -> Integer
du_'8613'y_992 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧y
d_'8615'y_994 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'y_994 ~v0 ~v1 v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'y_994 v2 v3
du_'8615'y_994 :: Integer -> Integer -> Integer
du_'8615'y_994 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥u
d_'8613'u_996 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'u_996 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'u_996 v4
du_'8613'u_996 :: Integer -> Integer
du_'8613'u_996 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧u
d_'8615'u_998 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'u_998 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'u_998 v4 v5
du_'8615'u_998 :: Integer -> Integer -> Integer
du_'8615'u_998 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥v
d_'8613'v_1000 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'v_1000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9
  = du_'8613'v_1000 v6
du_'8613'v_1000 :: Integer -> Integer
du_'8613'v_1000 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧v
d_'8615'v_1002 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'v_1002 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9
  = du_'8615'v_1002 v6 v7
du_'8615'v_1002 :: Integer -> Integer -> Integer
du_'8615'v_1002 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties.+-congʳ
d_'43''45'cong'691'_1034 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong'691'_1034 v0 v1 v2 v3
  = coe
      d_'43''45'cong_970 (coe v2) (coe v2) (coe v0) (coe v1)
      (coe du_'8771''45'refl_130) (coe v3)
-- Data.Rational.Unnormalised.Properties.+-congˡ
d_'43''45'cong'737'_1042 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong'737'_1042 v0 v1 v2 v3
  = coe
      d_'43''45'cong_970 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe du_'8771''45'refl_130)
-- Data.Rational.Unnormalised.Properties.+-assoc-↥
d_'43''45'assoc'45''8613'_1048 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8613'_1048 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc-↧
d_'43''45'assoc'45''8615'_1072 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8615'_1072 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc-≡
d_'43''45'assoc'45''8801'_1080 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8801'_1080 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc
d_'43''45'assoc_1088 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'assoc_1088 ~v0 ~v1 ~v2 = du_'43''45'assoc_1088
du_'43''45'assoc_1088 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'assoc_1088 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.+-comm-↥
d_'43''45'comm'45''8613'_1096 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8613'_1096 = erased
-- Data.Rational.Unnormalised.Properties.+-comm-↧
d_'43''45'comm'45''8615'_1102 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8615'_1102 = erased
-- Data.Rational.Unnormalised.Properties.+-comm-≡
d_'43''45'comm'45''8801'_1108 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8801'_1108 = erased
-- Data.Rational.Unnormalised.Properties.+-comm
d_'43''45'comm_1114 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'comm_1114 ~v0 ~v1 = du_'43''45'comm_1114
du_'43''45'comm_1114 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'comm_1114 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.+-identityˡ-↥
d_'43''45'identity'737''45''8613'_1120 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8613'_1120 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ-↧
d_'43''45'identity'737''45''8615'_1128 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8615'_1128 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ-≡
d_'43''45'identity'737''45''8801'_1132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8801'_1132 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ
d_'43''45'identity'737'_1136 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'identity'737'_1136 ~v0 = du_'43''45'identity'737'_1136
du_'43''45'identity'737'_1136 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'identity'737'_1136 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.+-identityʳ-≡
d_'43''45'identity'691''45''8801'_1140 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691''45''8801'_1140 = erased
-- Data.Rational.Unnormalised.Properties.+-identityʳ
d_'43''45'identity'691'_1142 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'identity'691'_1142 ~v0 = du_'43''45'identity'691'_1142
du_'43''45'identity'691'_1142 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'identity'691'_1142 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.+-identity-≡
d_'43''45'identity'45''8801'_1146 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity'45''8801'_1146
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Unnormalised.Properties.+-identity
d_'43''45'identity_1148 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_1148
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'43''45'identity'737'_1136)
      (\ v0 -> coe du_'43''45'identity'691'_1142)
-- Data.Rational.Unnormalised.Properties.+-inverseˡ
d_'43''45'inverse'737'_1150 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'inverse'737'_1150 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.+-inverseʳ
d_'43''45'inverse'691'_1164 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'inverse'691'_1164 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.+-inverse
d_'43''45'inverse_1178 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1178
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'43''45'inverse'737'_1150) (coe d_'43''45'inverse'691'_1164)
-- Data.Rational.Unnormalised.Properties.+-cancelˡ
d_'43''45'cancel'737'_1186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cancel'737'_1186 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7) v1
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe v1)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v1)
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v1)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                     (coe v0)))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                        (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
                        (coe v0))
                     (coe v0))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
                           (coe v0))
                        (coe v0))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                           (coe v1))
                        (coe v0))
                     v2
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_476)
                           (coe d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                              (coe v1))
                           (coe v0))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                              (coe v2))
                           (coe v0))
                        v2
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                              (coe d_'8804''45'isPreorder_476)
                              (coe d_'60''45'resp'45''8771'_744))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                                 (coe v2))
                              (coe v0))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v2)
                                 (coe v0))
                              (coe v0))
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                 (coe d_'8804''45'isPreorder_476)
                                 (coe d_'60''45'resp'45''8771'_744))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                    (coe v2) (coe v0))
                                 (coe v0))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                                    (coe v0) (coe v0)))
                              v2
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                    (coe d_'8804''45'isPreorder_476)
                                    (coe d_'60''45'resp'45''8771'_744))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                                       (coe v0) (coe v0)))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                                 v2
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                       (coe d_'8804''45'isPreorder_476)
                                       (coe d_'60''45'resp'45''8771'_744))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                       (coe v2)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                                    v2 v2
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                          (coe d_'8804''45'isPreorder_476))
                                       (coe v2))
                                    (coe du_'43''45'identity'691'_1142))
                                 (d_'43''45'cong'691'_1034
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                                       (coe v0) (coe v0))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                                    (coe v2) (coe d_'43''45'inverse'691'_1164 (coe v0))))
                              (coe du_'43''45'assoc_1088))
                           (d_'43''45'cong'737'_1042
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                                 (coe v2))
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v2)
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                              (coe du_'43''45'comm_1114)))
                        (d_'43''45'cong'737'_1042
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                              (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                              (coe v2))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                           (coe v3)))
                     (d_'43''45'cong'737'_1042
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                        (coe du_'43''45'comm_1114)))
                  (coe du_'43''45'assoc_1088))
               (d_'43''45'cong'691'_1034
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                     (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                  (coe v1) (coe d_'43''45'inverse'691'_1164 (coe v0))))
            (coe du_'43''45'identity'691'_1142)))
-- Data.Rational.Unnormalised.Properties.+-cancelʳ
d_'43''45'cancel'691'_1206 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cancel'691'_1206 v0 v1 v2 v3
  = coe
      d_'43''45'cancel'737'_1186 (coe v0) (coe v1) (coe v2)
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
               (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0) (coe v1))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v1) (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0) (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v1) (coe v0))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v2) (coe v0))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe v2) (coe v0))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe v0) (coe v2))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                           (coe v2)))
                     (coe du_'43''45'comm_1114))
                  v3)
               (coe du_'43''45'comm_1114))))
-- Data.Rational.Unnormalised.Properties.p+p≃0⇒p≃0
d_p'43'p'8771'0'8658'p'8771'0_1222 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'43'p'8771'0'8658'p'8771'0_1222 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_1228 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_1228 = erased
-- Data.Rational.Unnormalised.Properties.p≃-p⇒p≃0
d_p'8771''45'p'8658'p'8771'0_1240 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8771''45'p'8658'p'8771'0_1240 v0 v1
  = coe
      d_p'43'p'8771'0'8658'p'8771'0_1222 (coe v0)
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
               (coe v0))
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0) (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe v0) (coe v0))
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                     (coe v0) (coe v0))
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_476))
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                  (d_'43''45'inverse'691'_1164 (coe v0)))
               (d_'43''45'cong'691'_1034
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                  (coe v0) (coe v1)))))
-- Data.Rational.Unnormalised.Properties.lemma
d_lemma_1256 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_1256 = erased
-- Data.Rational.Unnormalised.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_1282 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'691''45''8804'_1282 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                        (coe
                                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                             v15))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0))
                                              (\ v13 v14 -> v13) v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v13 v14 -> v14)
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0))
                                              v1 v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v13 v14 -> v14)
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0))
                                              v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0))
                                              (\ v13 v14 -> v13) v1 v2)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_r'8322'_1296 (coe v4) (coe v5))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2)))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                 (\ v13 v14 -> v14)
                                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0))
                                                 v1 v2))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0))
                                                 (\ v13 v14 -> v13) v1 v2)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                   v16 v17))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_r'8322'_1296 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_r'8322'_1296 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                    (\ v13 v14 -> v14)
                                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0))
                                                    v1 v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0))
                                                    (\ v13 v14 -> v13) v1 v2)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                              (\ v13 v14 v15 v16 v17 -> v17)
                                              (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_r'8322'_1296 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0) (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0) (coe v1))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                       (\ v13 v14 -> v14)
                                                       (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0))
                                                       v1 v2))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                       (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0))
                                                       (\ v13 v14 -> v13) v1 v2)))
                                              (let v13
                                                     = MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666 in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                       (coe v13))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                             (coe v0) (coe v2)))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                             (coe v0) (coe v1))))))
                                              erased)
                                           (d_leq_1298
                                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                                              (coe v12)))
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.r₂
d_r'8322'_1296 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_r'8322'_1296 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_r'8322'_1296 v0 v1
du_r'8322'_1296 :: Integer -> Integer -> Integer
du_r'8322'_1296 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.leq
d_leq_1298 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_leq_1298 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4414
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe du_r'8322'_1296 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe du_r'8322'_1296 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))))
         (\ v7 v8 -> v7)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2588
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe du_r'8322'_1296 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v2) (coe v3)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v4) (coe v5))))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5960
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v0) (coe v1)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v0) (coe v1))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3))))
         v6)
-- Data.Rational.Unnormalised.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_1306 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'737''45''8804'_1306 v0 v1 v2
  = coe d_'43''45'mono'691''45''8804'_1282 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.+-mono-≤
d_'43''45'mono'45''8804'_1322 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'45''8804'_1322 v0 v1 v2 v3 v4 v5
  = coe
      d_'8804''45'trans_404
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
              (coe v6) (coe v2))
         v0 v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
         (coe v3))
      (coe d_'43''45'mono'737''45''8804'_1306 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_1282 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Rational.Unnormalised.Properties.p≤q⇒p≤r+q
d_p'8804'q'8658'p'8804'r'43'q_1340 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'p'8804'r'43'q_1340 v0 v1 v2 ~v3 v4
  = du_p'8804'q'8658'p'8804'r'43'q_1340 v0 v1 v2 v4
du_p'8804'q'8658'p'8804'r'43'q_1340 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'q'8658'p'8804'r'43'q_1340 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_1322
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
      (coe v2) (coe v0) (coe v1)
      (coe du_nonNegative'8315''185'_896 (coe v2)) (coe v3)
-- Data.Rational.Unnormalised.Properties.p≤q+p
d_p'8804'q'43'p_1358 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'43'p_1358 v0 v1 ~v2 = du_p'8804'q'43'p_1358 v0 v1
du_p'8804'q'43'p_1358 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'q'43'p_1358 v0 v1
  = coe
      du_p'8804'q'8658'p'8804'r'43'q_1340 (coe v0) (coe v0) (coe v1)
      (coe d_'8804''45'refl_400 (coe v0))
-- Data.Rational.Unnormalised.Properties.p≤p+q
d_p'8804'p'43'q_1370 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'p'43'q_1370 v0 v1 ~v2 = du_p'8804'p'43'q_1370 v0 v1
du_p'8804'p'43'q_1370 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'p'43'q_1370 v0 v1
  = coe du_p'8804'q'43'p_1358 (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_1384 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'691''45''60'_1384 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (let v13
                                         = coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                        (coe v13)
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v2))))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v2)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                 (coe v0) (coe v1))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                           (\ v14 v15 v16 v17 v18 -> v18)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0) (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0) (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_'8613'r'8615'r_1398 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_'8615'r'8615'r_1400 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0) (coe v2)))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                    (coe v0) (coe v1))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                 (\ v14 v15 v16 v17 v18 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                      v17 v18)
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                 (\ v14 v15 v16 v17 v18 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                      v17 v18))
                                              (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_'8613'r'8615'r_1398 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_'8615'r'8615'r_1400 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2)))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_'8613'r'8615'r_1398 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_'8615'r'8615'r_1400 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0) (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                       (coe v0) (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                 (\ v14 v15 v16 v17 v18 -> v18)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          du_'8613'r'8615'r_1398 (coe v4) (coe v5))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2))
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1))))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          du_'8615'r'8615'r_1400 (coe v4) (coe v5))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1)))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0) (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0) (coe v1))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0) (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                          (coe v0) (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                             (coe v0) (coe v2)))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                             (coe v0) (coe v1)))))
                                                 erased)
                                              (d_leq_1402
                                                 (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                 (coe v9) (coe v12)))
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.↥r↧r
d_'8613'r'8615'r_1398 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_'8613'r'8615'r_1398 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8613'r'8615'r_1398 v0 v1
du_'8613'r'8615'r_1398 :: Integer -> Integer -> Integer
du_'8613'r'8615'r_1398 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↧r↧r
d_'8615'r'8615'r_1400 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50 -> Integer
d_'8615'r'8615'r_1400 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8615'r'8615'r_1400 v0 v1
du_'8615'r'8615'r_1400 :: Integer -> Integer -> Integer
du_'8615'r'8615'r_1400 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.leq
d_leq_1402 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_leq_1402 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804''45''60'_4536
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe du_'8613'r'8615'r_1398 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe du_'8613'r'8615'r_1398 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe du_'8615'r'8615'r_1400 (coe v0) (coe v1)))
         (\ v7 v8 -> v7)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe du_'8615'r'8615'r_1400 (coe v0) (coe v1)))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2588
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe du_'8613'r'8615'r_1398 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v2) (coe v3)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v4) (coe v5))))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6078
         (coe du_'8615'r'8615'r_1400 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3))))
         (coe v6))
-- Data.Rational.Unnormalised.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_1410 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'737''45''60'_1410 v0 v1 v2
  = coe d_'43''45'mono'691''45''60'_1384 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.+-mono-<
d_'43''45'mono'45''60'_1426 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''60'_1426 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45'trans_642
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
         (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
              (coe v6) (coe v2))
         v0 v1)
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
         (coe v1) (coe v3))
      (coe d_'43''45'mono'737''45''60'_1410 v2 v0 v1 v4)
      (d_'43''45'mono'691''45''60'_1384
         (coe v1) (coe v2) (coe v3) (coe v5))
-- Data.Rational.Unnormalised.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_1440 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''8804''45''60'_1440 v0 v1 v2 v3 v4 v5
  = coe
      d_'8804''45''60''45'trans_574
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
              (coe v6) (coe v2))
         v0 v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
         (coe v3))
      (coe d_'43''45'mono'737''45''8804'_1306 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''60'_1384 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Rational.Unnormalised.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_1452 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''60''45''8804'_1452 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45''8804''45'trans_608
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
              (coe v6) (coe v2))
         v0 v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v1)
         (coe v3))
      (coe d_'43''45'mono'737''45''60'_1410 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_1282 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Rational.Unnormalised.Properties.pos+pos⇒pos
d_pos'43'pos'8658'pos_1472 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'43'pos'8658'pos_1472 v0 ~v1 v2 ~v3
  = du_pos'43'pos'8658'pos_1472 v0 v2
du_pos'43'pos'8658'pos_1472 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'43'pos'8658'pos_1472 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
         (coe v1))
      (coe
         d_'43''45'mono'45''60'_1426
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_positive'8315''185'_890 (coe v0))
         (coe du_positive'8315''185'_890 (coe v1)))
-- Data.Rational.Unnormalised.Properties.nonNeg+nonNeg⇒nonNeg
d_nonNeg'43'nonNeg'8658'nonNeg_1486 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_nonNeg'43'nonNeg'8658'nonNeg_1486 v0 ~v1 v2 ~v3
  = du_nonNeg'43'nonNeg'8658'nonNeg_1486 v0 v2
du_nonNeg'43'nonNeg'8658'nonNeg_1486 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_nonNeg'43'nonNeg'8658'nonNeg_1486 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_186
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
         (coe v1))
      (coe
         d_'43''45'mono'45''8804'_1322
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_nonNegative'8315''185'_896 (coe v0))
         (coe du_nonNegative'8315''185'_896 (coe v1)))
-- Data.Rational.Unnormalised.Properties.+-minus-telescope
d_'43''45'minus'45'telescope_1498 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'minus'45'telescope_1498 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v1)
               (coe v2)))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
            (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                  (coe v1))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v1)
                  (coe v2)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                     (coe v1))
                  (coe v1))
               (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v0) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                        (coe v1))
                     (coe v1))
                  (coe v2))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                        (coe v1)))
                  (coe v2))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe v0) (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                           (coe v1)))
                     (coe v2))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                     (coe v2))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                     (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                           (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                        (coe v2))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe v0) (coe v2))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                           (coe v2)))
                     (d_'43''45'cong'737'_1042
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                           (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                        (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                        (coe du_'43''45'identity'691'_1142)))
                  (d_'43''45'cong'737'_1042
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                     (coe
                        d_'43''45'cong'691'_1034
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                           (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                        (coe v0) (coe d_'43''45'inverse'737'_1150 (coe v1)))))
               (d_'43''45'cong'737'_1042
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1)))
                     (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196 (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                  (coe du_'43''45'assoc_1088)))
            (coe du_'8771''45'sym_134 (coe du_'43''45'assoc_1088))))
-- Data.Rational.Unnormalised.Properties.p≃q⇒p-q≃0
d_p'8771'q'8658'p'45'q'8771'0_1514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8771'q'8658'p'45'q'8771'0_1514 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
            (coe v1))
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v0) (coe v1))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v1) (coe v1))
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe v1) (coe v1))
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_476))
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
               (d_'43''45'inverse'691'_1164 (coe v1)))
            (d_'43''45'cong'737'_1042
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
               (coe v2))))
-- Data.Rational.Unnormalised.Properties.p-q≃0⇒p≃q
d_p'45'q'8771'0'8658'p'8771'q_1530 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'45'q'8771'0'8658'p'8771'q_1530 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3) (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
            (\ v4 v5 v6 v7 v8 -> v8) v0
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe v0)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0)
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                     (coe v1)))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                        (coe v1)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                        (coe v1))
                     (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                           (coe v1))
                        (coe v1))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                        (coe v1))
                     v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                        (\ v4 v5 v6 v7 v8 -> v8)
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                           (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                           (coe v1))
                        v1 v1
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_476))
                           (coe v1))
                        erased)
                     (d_'43''45'cong'737'_1042
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                           (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                        (coe v1) (coe v2)))
                  erased)
               (d_'43''45'cong'691'_1034
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                     (coe v1))
                  (coe v0)
                  (coe
                     du_'8771''45'sym_134 (coe d_'43''45'inverse'737'_1150 (coe v1)))))
            erased))
-- Data.Rational.Unnormalised.Properties.neg-mono-≤
d_neg'45'mono'45''8804'_1542 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_neg'45'mono'45''8804'_1542 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                 (coe
                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                 (\ v10 v11 v12 ->
                                    coe
                                      MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                      v12))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v10 v11 -> v11)
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v0
                                       v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (\ v10 v11 -> v10) v0 v1)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (\ v10 v11 -> v10) v0 v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v10 v11 -> v11)
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 v0
                                       v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v0))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (\ v10 v11 -> v10) v0 v1))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v10 v11 -> v11)
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          v0 v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                       (coe
                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                       (\ v10 v11 v12 v13 v14 ->
                                          coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                            v13 v14))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (\ v10 v11 -> v10) v0 v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                             (\ v10 v11 -> v11)
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             v0 v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v3))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                (\ v10 v11 -> v10) v0 v1))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                (\ v10 v11 -> v11)
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                v0 v1)))
                                       (let v10
                                              = MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666 in
                                        coe
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe v10))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))))
                                       erased)
                                    (coe
                                       MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3138
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))
                                       (coe v9)))
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-cancel-≤
d_neg'45'cancel'45''8804'_1558 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_neg'45'cancel'45''8804'_1558 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                 (coe
                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                 (\ v10 v11 v12 ->
                                    coe
                                      MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                      v12))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v0)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe v3)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                    (\ v10 v11 v12 v13 v14 -> v14)
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0)))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                       (coe v3)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe
                                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                               v13 v14))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v5))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0))))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v3))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                          (\ v10 v11 v12 v13 v14 -> v14)
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1)))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1)))))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (let v10
                                                    = MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                      (coe v10))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1)))))
                                             erased)
                                          erased)
                                       (coe
                                          MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3138
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                                   (coe v0))))
                                          (coe v9)))
                                    erased)
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p≤q⇒p-q≤0
d_p'8804'q'8658'p'45'q'8804'0_1574 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'p'45'q'8804'0_1574 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_520 v5))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
         (coe v0) (coe v1))
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_476)
            (coe d_'8804''45''60''45'trans_574))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
            (coe v0) (coe v1))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
            (coe v1) (coe v1))
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v1) (coe v1))
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_476))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
            (d_'43''45'inverse'691'_1164 (coe v1)))
         (coe
            d_'43''45'mono'737''45''8804'_1306
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
            v0 v1 v2))
-- Data.Rational.Unnormalised.Properties.p-q≤0⇒p≤q
d_p'45'q'8804'0'8658'p'8804'q_1590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'45'q'8804'0'8658'p'8804'q_1590 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_520 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
            (coe v0)
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe v0)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                  (coe v1)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                     (coe v1)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                     (coe v1))
                  (coe v1))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'8804''45''60''45'trans_574))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
                        (coe v1))
                     (coe v1))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                     (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                        (coe v1))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe v1))
                     erased)
                  (coe
                     d_'43''45'mono'737''45''8804'_1306 v1
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                        (coe v0) (coe v1))
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108 v2))
               erased)
            (d_'43''45'cong'691'_1034
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                  (coe v1))
               (coe v0)
               (coe
                  du_'8771''45'sym_134 (coe d_'43''45'inverse'737'_1150 (coe v1)))))
         erased)
-- Data.Rational.Unnormalised.Properties.p≤q⇒0≤q-p
d_p'8804'q'8658'0'8804'q'45'p_1606 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'0'8804'q'45'p_1606 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_520 v5))
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
         (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_476)
            (coe d_'60''45'resp'45''8771'_744))
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
            (coe v0) (coe v0))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_476)
               (coe d_'8804''45''60''45'trans_574))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v0) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v1) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
               (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_476))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v1)
                  (coe v0)))
            (coe
               d_'43''45'mono'737''45''8804'_1306
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
               v0 v1 v2))
         (coe
            du_'8771''45'sym_134 (coe d_'43''45'inverse'691'_1164 (coe v0))))
-- Data.Rational.Unnormalised.Properties.0≤q-p⇒p≤q
d_0'8804'q'45'p'8658'p'8804'q_1622 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_0'8804'q'45'p'8658'p'8804'q_1622 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_520 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
            (coe v0))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_476)
               (coe d_'8804''45''60''45'trans_574))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
               (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v1)
                  (coe v0))
               (coe v0))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v1)
                     (coe v0))
                  (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe v1)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                     (coe v0)))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                        (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe v1)
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe v1)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe v1))
                     erased)
                  (d_'43''45'cong'691'_1034
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                        (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
                     (coe v1) (coe d_'43''45'inverse'737'_1150 (coe v0))))
               erased)
            (coe
               d_'43''45'mono'737''45''8804'_1306 v0
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208
                  (coe v1) (coe v0))
               v2))
         erased)
-- Data.Rational.Unnormalised.Properties.+-isMagma
d_'43''45'isMagma_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''45'isMagma_1634
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe d_'8771''45'isEquivalence_224) (coe d_'43''45'cong_970)
-- Data.Rational.Unnormalised.Properties.+-isSemigroup
d_'43''45'isSemigroup_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''45'isSemigroup_1636
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'43''45'isMagma_1634)
      (\ v0 v1 v2 -> coe du_'43''45'assoc_1088)
-- Data.Rational.Unnormalised.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_1638 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'0'45'isMonoid_1638
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'43''45'isSemigroup_1636) (coe d_'43''45'identity_1148)
-- Data.Rational.Unnormalised.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'0'45'isCommutativeMonoid_1640
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'43''45'0'45'isMonoid_1638)
      (\ v0 v1 -> coe du_'43''45'comm_1114)
-- Data.Rational.Unnormalised.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'43''45'0'45'isGroup_1642
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_22921
      (coe d_'43''45'0'45'isMonoid_1638) (coe d_'43''45'inverse_1178)
      (coe d_'45''8255'cong_342)
-- Data.Rational.Unnormalised.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'0'45'isAbelianGroup_1644
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_27921
      (coe d_'43''45'0'45'isGroup_1642)
      (\ v0 v1 -> coe du_'43''45'comm_1114)
-- Data.Rational.Unnormalised.Properties.+-magma
d_'43''45'magma_1646 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'43''45'magma_1646
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      d_'43''45'isMagma_1634
-- Data.Rational.Unnormalised.Properties.+-semigroup
d_'43''45'semigroup_1648 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''45'semigroup_1648
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      d_'43''45'isSemigroup_1636
-- Data.Rational.Unnormalised.Properties.+-0-monoid
d_'43''45'0'45'monoid_1650 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''45'0'45'monoid_1650
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      d_'43''45'0'45'isMonoid_1638
-- Data.Rational.Unnormalised.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_1652 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'43''45'0'45'commutativeMonoid_1652
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      d_'43''45'0'45'isCommutativeMonoid_1640
-- Data.Rational.Unnormalised.Properties.+-0-group
d_'43''45'0'45'group_1654 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266
d_'43''45'0'45'group_1654
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_22093
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      d_'43''45'0'45'isGroup_1642
-- Data.Rational.Unnormalised.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_1656 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378
d_'43''45'0'45'abelianGroup_1656
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_24563
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      d_'43''45'0'45'isAbelianGroup_1644
-- Data.Rational.Unnormalised.Properties.*-cong
d_'42''45'cong_1658 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong_1658 v0 v1 v2 v3 v4 v5
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               seq (coe v3)
               (coe
                  seq (coe v4)
                  (coe
                     seq (coe v5)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))))))
-- Data.Rational.Unnormalised.Properties.*-congˡ
d_'42''45'cong'737'_1692 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong'737'_1692 v0 v1 v2 v3
  = coe
      d_'42''45'cong_1658 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe du_'8771''45'refl_130) (coe v3)
-- Data.Rational.Unnormalised.Properties.*-congʳ
d_'42''45'cong'691'_1698 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong'691'_1698 v0 v1 v2 v3
  = coe
      d_'42''45'cong_1658 (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
      (coe du_'8771''45'refl_130)
-- Data.Rational.Unnormalised.Properties.*-assoc-↥
d_'42''45'assoc'45''8613'_1704 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8613'_1704 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc-↧
d_'42''45'assoc'45''8615'_1712 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8615'_1712 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc-≡
d_'42''45'assoc'45''8801'_1720 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8801'_1720 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc
d_'42''45'assoc_1728 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'assoc_1728 ~v0 ~v1 ~v2 = du_'42''45'assoc_1728
du_'42''45'assoc_1728 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'assoc_1728 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.*-comm-↥
d_'42''45'comm'45''8613'_1736 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8613'_1736 = erased
-- Data.Rational.Unnormalised.Properties.*-comm-↧
d_'42''45'comm'45''8615'_1742 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8615'_1742 = erased
-- Data.Rational.Unnormalised.Properties.*-comm-≡
d_'42''45'comm'45''8801'_1748 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8801'_1748 = erased
-- Data.Rational.Unnormalised.Properties.*-comm
d_'42''45'comm_1754 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'comm_1754 ~v0 ~v1 = du_'42''45'comm_1754
du_'42''45'comm_1754 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'comm_1754 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.*-identityˡ-≡
d_'42''45'identity'737''45''8801'_1760 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737''45''8801'_1760 = erased
-- Data.Rational.Unnormalised.Properties.*-identityʳ-≡
d_'42''45'identity'691''45''8801'_1764 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691''45''8801'_1764 = erased
-- Data.Rational.Unnormalised.Properties.*-identity-≡
d_'42''45'identity'45''8801'_1766 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity'45''8801'_1766
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Unnormalised.Properties.*-identityˡ
d_'42''45'identity'737'_1768 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'identity'737'_1768 ~v0 = du_'42''45'identity'737'_1768
du_'42''45'identity'737'_1768 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'identity'737'_1768 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.*-identityʳ
d_'42''45'identity'691'_1772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'identity'691'_1772 ~v0 = du_'42''45'identity'691'_1772
du_'42''45'identity'691'_1772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'identity'691'_1772 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.*-identity
d_'42''45'identity_1776 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1776
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'42''45'identity'737'_1768)
      (\ v0 -> coe du_'42''45'identity'691'_1772)
-- Data.Rational.Unnormalised.Properties.*-inverseˡ
d_'42''45'inverse'737'_1782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'inverse'737'_1782 v0 ~v1
  = du_'42''45'inverse'737'_1782 v0
du_'42''45'inverse'737'_1782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'inverse'737'_1782 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
             _ -> coe
                    du_'42''45'inverse'737'_1782
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                       (coe subInt (coe (0 :: Integer)) (coe v1)) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-inverseʳ
d_'42''45'inverse'691'_1812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'inverse'691'_1812 v0 ~v1
  = du_'42''45'inverse'691'_1812 v0
du_'42''45'inverse'691'_1812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'inverse'691'_1812 v0
  = coe
      du_'8771''45'trans_138 (coe du_'42''45'comm_1754)
      (coe du_'42''45'inverse'737'_1782 (coe v0))
-- Data.Rational.Unnormalised.Properties.≄⇒invertible
d_'8772''8658'invertible_1816 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8772''8658'invertible_1816 v0 v1 ~v2
  = du_'8772''8658'invertible_1816 v0 v1
du_'8772''8658'invertible_1816 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8772''8658'invertible_1816 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
            (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'42''45'inverse'737'_1782
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
               (coe v1)))
         (coe
            du_'42''45'inverse'691'_1812
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.*-zeroˡ
d_'42''45'zero'737'_1830 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'zero'737'_1830 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.*-zeroʳ
d_'42''45'zero'691'_1834 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'zero'691'_1834
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'737''8658'ze'691'_360
      (coe d_'8771''45'setoid_246)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202)
      (\ v0 v1 -> coe du_'42''45'comm_1754)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
      (coe d_'42''45'zero'737'_1830)
-- Data.Rational.Unnormalised.Properties.*-zero
d_'42''45'zero_1836 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_1836
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'zero'737'_1830) (coe d_'42''45'zero'691'_1834)
-- Data.Rational.Unnormalised.Properties.invertible⇒≄
d_invertible'8658''8772'_1838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_invertible'8658''8772'_1838 = erased
-- Data.Rational.Unnormalised.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_1856 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''43'_1856 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_1894 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''43'_1894
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_504
      (coe d_'8771''45'setoid_246)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196)
      (coe d_'43''45'cong_970) (\ v0 v1 -> coe du_'42''45'comm_1754)
      (coe d_'42''45'distrib'737''45''43'_1856)
-- Data.Rational.Unnormalised.Properties.*-distrib-+
d_'42''45'distrib'45''43'_1896 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_1896
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'distrib'737''45''43'_1856)
      (coe d_'42''45'distrib'691''45''43'_1894)
-- Data.Rational.Unnormalised.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_1902 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'737''45''42'_1902 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_1914 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'691''45''42'_1914 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-/
d_'42''45'cancel'737''45''47'_1932 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cancel'737''45''47'_1932 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'737''45''47'_1932
du_'42''45'cancel'737''45''47'_1932 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'cancel'737''45''47'_1932
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-/
d_'42''45'cancel'691''45''47'_1964 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cancel'691''45''47'_1964 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'691''45''47'_1964
du_'42''45'cancel'691''45''47'_1964 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'cancel'691''45''47'_1964
  = coe du_'42''45'cancel'737''45''47'_1932
-- Data.Rational.Unnormalised.Properties.reorder₁
d_reorder'8321'_1988 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reorder'8321'_1988 = erased
-- Data.Rational.Unnormalised.Properties.reorder₂
d_reorder'8322'_2010 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reorder'8322'_2010 = erased
-- Data.Rational.Unnormalised.Properties.+▹-nonNeg
d_'43''9657''45'nonNeg_2026 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'43''9657''45'nonNeg_2026 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_2032 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'691''45''8804''45'pos_2032 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_2032 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'pos_2032 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'691''45''8804''45'pos_2032 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''8804''45'pos_5862
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v4)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v1)))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v6)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v0)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                           (coe
                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                           (\ v13 v14 v15 ->
                                              coe
                                                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                                v15))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v4)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v6)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                           (\ v13 v14 v15 v16 v17 -> v17)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v4) (coe v8))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                      v16 v17))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v4) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                 (\ v13 v14 v15 v16 v17 -> v17)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (let v13
                                                        = MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666 in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                          (coe v13))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe v8)
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v2))))))
                                                 erased)
                                              v12)
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_2050 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'737''45''8804''45'pos_2050 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_2050 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'pos_2050 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'737''45''8804''45'pos_2050 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_2032 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_2070 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'691''45''8804''45'neg_2070 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'neg_2070 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'neg_2070 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'691''45''8804''45'neg_2070 v0 v1 v2 v3
  = coe
      seq (coe v2)
      (coe
         d_neg'45'cancel'45''8804'_1558 (coe v0) (coe v1)
         (coe
            du_'42''45'cancel'691''45''8804''45'pos_2032
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                  (coe d_'8804''45'isPreorder_476)
                  (\ v4 v5 v6 -> coe du_'60''8658''8804'_520 v6))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (\ v4 v5 v6 -> coe du_'8771''45'sym_134 v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe v2))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (\ v4 v5 v6 -> coe du_'8771''45'sym_134 v6)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                              (coe v2))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                              (coe v2))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_476)
                           (coe d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                                 (coe v2))))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe v0) (coe v2))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                              (coe d_'8804''45'isPreorder_476)
                              (coe d_'8804''45''60''45'trans_574))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                              (coe v0) (coe v2))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                              (coe v1) (coe v2))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v1))
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                 (coe d_'8804''45'isPreorder_476)
                                 (coe d_'60''45'resp'45''8771'_744))
                              (\ v4 v5 v6 -> coe du_'8771''45'sym_134 v6)
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                 (coe v1) (coe v2))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                       (coe v1) (coe v2))))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                    (coe d_'8804''45'isPreorder_476)
                                    (coe d_'60''45'resp'45''8771'_744))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                          (coe v1) (coe v2))))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v2))))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (coe v2)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                       (coe d_'8804''45'isPreorder_476)
                                       (coe d_'60''45'resp'45''8771'_744))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                          (coe v1)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (coe v2))))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v2)))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                          (coe d_'8804''45'isPreorder_476))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                             (coe v2))))
                                    (d_neg'45'distrib'737''45''42'_1902
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v2))))
                                 (d_'45''8255'cong_342
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                          (coe v1) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                                          (coe v2)))
                                    (coe d_neg'45'distrib'691''45''42'_1914 (coe v1) (coe v2))))
                              (coe du_neg'45'involutive_334))
                           v3)
                        (coe du_neg'45'involutive_334))
                     (d_'45''8255'cong_342
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2)))
                        (coe d_neg'45'distrib'691''45''42'_1914 (coe v0) (coe v2))))
                  (d_neg'45'distrib'737''45''42'_1902
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe v2)))))))
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_2088 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'737''45''8804''45'neg_2088 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'neg_2088 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'neg_2088 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'737''45''8804''45'neg_2088 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'neg_2070 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_2110 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'nonNeg_2110 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonNeg_2110 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonNeg_2110 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'nonNeg_2110 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                        (coe
                                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                                             v15))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                   (coe v13) (coe v0))
                                              (\ v13 v14 -> v13) v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v13 v14 -> v14)
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                   (coe v13) (coe v0))
                                              v1 v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v13 v14 -> v14)
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                   (coe v13) (coe v0))
                                              v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                   (coe v13) (coe v0))
                                              (\ v13 v14 -> v13) v1 v2)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v6)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe du_l'8321'_2126 (coe v6) (coe v8) (coe v9))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v4)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                 (\ v13 v14 -> v14)
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                      (coe v13) (coe v0))
                                                 v1 v2))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                      (coe v13) (coe v0))
                                                 (\ v13 v14 -> v13) v1 v2)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                           (\ v13 v14 v15 v16 v17 -> v17)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_l'8321'_2126 (coe v6) (coe v8) (coe v9))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe du_l'8321'_2126 (coe v6) (coe v8) (coe v9))
                                              (coe
                                                 mulInt (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                    (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                    (\ v13 v14 -> v14)
                                                    (\ v13 ->
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                         (coe v13) (coe v0))
                                                    v1 v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                    (\ v13 ->
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                         (coe v13) (coe v0))
                                                    (\ v13 v14 -> v13) v1 v2)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                                      v16 v17))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_l'8321'_2126 (coe v6) (coe v8) (coe v9))
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe du_l'8322'_2128 (coe v6) (coe v7) (coe v8))
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                       (\ v13 v14 -> v14)
                                                       (\ v13 ->
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                            (coe v13) (coe v0))
                                                       v1 v2))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                       (\ v13 ->
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                            (coe v13) (coe v0))
                                                       (\ v13 v14 -> v13) v1 v2)))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                 (\ v13 v14 v15 v16 v17 -> v17)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_l'8322'_2128 (coe v6) (coe v7) (coe v8))
                                                    (coe
                                                       mulInt (coe v4)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                          (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe du_l'8322'_2128 (coe v6) (coe v7) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v4)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                          (\ v13 v14 -> v14)
                                                          (\ v13 ->
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                               (coe v13) (coe v0))
                                                          v1 v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                          (\ v13 ->
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                               (coe v13) (coe v0))
                                                          (\ v13 v14 -> v13) v1 v2)))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                    (\ v13 v14 v15 v16 v17 -> v17)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          du_l'8322'_2128 (coe v6) (coe v7)
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v4)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1))
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v13 v14 -> v14)
                                                             (\ v13 ->
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                                  (coe v13) (coe v0))
                                                             v1 v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (\ v13 ->
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                                                                  (coe v13) (coe v0))
                                                             (\ v13 v14 -> v13) v1 v2)))
                                                    (let v13
                                                           = MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                             (coe v13))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe v8) (coe v4))
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                (coe
                                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                   (coe v1))
                                                                (coe
                                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                   (coe v0))))))
                                                    erased)
                                                 erased)
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5918
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))
                                                 (coe v12)))
                                           erased)
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.l₁
d_l'8321'_2126 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_l'8321'_2126 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 ~v7
  = du_l'8321'_2126 v3 v5 v6
du_l'8321'_2126 :: Integer -> Integer -> Integer -> Integer
du_l'8321'_2126 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.l₂
d_l'8322'_2128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> Integer
d_l'8322'_2128 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 ~v7
  = du_l'8322'_2128 v3 v4 v5
du_l'8322'_2128 :: Integer -> Integer -> Integer -> Integer
du_l'8322'_2128 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_2140 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'nonNeg_2140 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonNeg_2140 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonNeg_2140 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'nonNeg_2140 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-mono-≤-nonNeg
d_'42''45'mono'45''8804''45'nonNeg_2168 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'45''8804''45'nonNeg_2168 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'42''45'mono'45''8804''45'nonNeg_2168 v0 v1 v2 v3 v6 v7
du_'42''45'mono'45''8804''45'nonNeg_2168 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'45''8804''45'nonNeg_2168 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v6 v7 v8 -> coe du_'60''8658''8804'_520 v8))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
         (coe v0) (coe v2))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
         (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_476)
            (coe d_'8804''45''60''45'trans_574))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
            (coe v0) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
            (coe v1) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
            (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_476)
               (coe d_'8804''45''60''45'trans_574))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v3))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_476))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                  (coe v3)))
            (coe du_'42''45'mono'691''45''8804''45'nonNeg_2140 v1 v2 v3 v5))
         (coe
            du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v2) (coe v0)
            (coe v1) (coe v4)))
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_2192 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'nonPos_2192 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonPos_2192 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonPos_2192 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'nonPos_2192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v4 v5 v6 -> coe du_'60''8658''8804'_520 v6))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_476)
            (coe d_'60''45'resp'45''8771'_744))
         (\ v4 v5 v6 -> coe du_'8771''45'sym_134 v6)
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
            (coe v2) (coe v0))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                  (coe v0))))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (\ v4 ->
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                 (coe v4) (coe v0))
            (\ v4 v5 -> v4) v1 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe v0))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe v0))))
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                    (coe v4) (coe v0))
               (\ v4 v5 -> v4) v1 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'8804''45''60''45'trans_574))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe v0))))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                       (coe v4) (coe v0))
                  (\ v4 v5 -> v4) v1 v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (\ v4 v5 v6 -> coe du_'8771''45'sym_134 v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                          (coe v4) (coe v0))
                     (\ v4 v5 -> v4) v1 v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                              (coe v0))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe v1) (coe v0))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                             (coe v4) (coe v0))
                        (\ v4 v5 -> v4) v1 v2)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe v0)))
                     (coe du_neg'45'involutive_334))
                  (d_'45''8255'cong_342
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                     (coe d_neg'45'distrib'691''45''42'_1914 (coe v1) (coe v0))))
               (d_neg'45'mono'45''8804'_1542
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                     (\ v4 v5 -> v4) v1 v2)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                     v1 v2)
                  (coe
                     du_'42''45'mono'737''45''8804''45'nonNeg_2110
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                     (coe v1) (coe v2) (coe v3))))
            (d_'45''8255'cong_342
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
               (coe d_neg'45'distrib'691''45''42'_1914 (coe v2) (coe v0))))
         (coe du_neg'45'involutive_334))
-- Data.Rational.Unnormalised.Properties._.-r≥0
d_'45'r'8805'0_2206 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'45'r'8805'0_2206 v0 ~v1 ~v2 ~v3 ~v4 = du_'45'r'8805'0_2206 v0
du_'45'r'8805'0_2206 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_'45'r'8805'0_2206 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_186
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
      (coe
         d_neg'45'mono'45''8804'_1542 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe du_nonPositive'8315''185'_908 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_2214 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'nonPos_2214 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonPos_2214 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonPos_2214 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'nonPos_2214 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_2192 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_2236 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'737''45''60''45'pos_2236 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_2236 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_2236 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'737''45''60''45'pos_2236 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (let v13
                                         = coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                        (coe v13)
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v6)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v8)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v1))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                           (\ v14 v15 v16 v17 v18 -> v18)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v6) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v8) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                 (\ v14 v15 v16 v17 v18 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                      v17 v18)
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                 (\ v14 v15 v16 v17 v18 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                      v17 v18))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2)))
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                 (\ v14 v15 v16 v17 v18 -> v18)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1)))
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8) (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8) (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1))
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0)))))
                                                 erased)
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6110
                                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                    (\ v14 ->
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                         (coe v14) (coe v4))
                                                    (\ v14 v15 -> v14)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2)))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                    (\ v14 v15 -> v15)
                                                    (\ v14 ->
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                         (coe v14) (coe v4))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2)))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6110
                                                    v4
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2)))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))
                                                    v12)))
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_2256 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'691''45''60''45'pos_2256 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_2256 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_2256 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'691''45''60''45'pos_2256 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_2236 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.*-mono-<-nonNeg
d_'42''45'mono'45''60''45'nonNeg_2284 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'45''60''45'nonNeg_2284 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'42''45'mono'45''60''45'nonNeg_2284 v0 v1 v2 v3 v6 v7
du_'42''45'mono'45''60''45'nonNeg_2284 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'45''60''45'nonNeg_2284 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v6)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
            (coe v2))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
            (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_476)
               (coe d_'8804''45''60''45'trans_574))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v0) (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_642) (coe d_'60''45'resp'45''8771'_744)
                  (coe d_'60''45''8804''45'trans_608))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe v1) (coe v2))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe v1) (coe v3))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_476))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                     (coe v3)))
               (coe du_'42''45'mono'691''45''60''45'pos_2256 v1 v2 v3 v5))
            (coe
               du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v2) (coe v0)
               (coe v1) (coe du_'60''8658''8804'_520 (coe v4)))))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_2306 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'nonNeg_2306 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''60''45'nonNeg_2306 v0 v1 v2 v4
du_'42''45'cancel'691''45''60''45'nonNeg_2306 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'nonNeg_2306 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe v4)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v1)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe v6)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v0)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe v8)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v2)))
                                     (let v13
                                            = coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                           (coe v13)
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                              (\ v14 v15 v16 v17 v18 -> v18)
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v4) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                    (\ v14 v15 v16 v17 v18 ->
                                                       coe
                                                         MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                         v17 v18)
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                    (\ v14 v15 v16 v17 v18 ->
                                                       coe
                                                         MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                                         v17 v18))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v4) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                    (\ v14 v15 v16 v17 v18 -> v18)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v6) (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0))
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                             (coe v8)
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v2)))))
                                                    erased)
                                                 v12)
                                              erased))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_2324 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'nonNeg_2324 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''60''45'nonNeg_2324 v0 v1 v2
du_'42''45'cancel'737''45''60''45'nonNeg_2324 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'nonNeg_2324 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''60''45'nonNeg_2306 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_2346 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'737''45''60''45'neg_2346 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_2346 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_2346 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'737''45''60''45'neg_2346 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v2) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe v0))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe v1) (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe d_'60''45'trans_642) (coe d_'60''45'resp'45''8771'_744)
                     (coe d_'60''45''8804''45'trans_608))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe v1) (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                              (coe v0))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                              (coe v0))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe v1) (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_476)
                           (coe d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                                 (coe v0))))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe v1) (coe v0))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe v1) (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_476))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                              (coe v0)))
                        (coe du_neg'45'involutive_334))
                     (d_'45''8255'cong_342
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                        (coe d_neg'45'distrib'691''45''42'_1914 (coe v1) (coe v0))))
                  (d_neg'45'mono'45''60'_364
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (\ v5 ->
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                             (coe v5)
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                        (\ v5 v6 -> v5) v1 v2)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6)
                        (\ v5 ->
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                             (coe v5)
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                        v1 v2)
                     (coe
                        du_'42''45'mono'737''45''60''45'pos_2236
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0))
                        (coe v1) (coe v2) (coe v3))))
               (d_'45''8255'cong_342
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v0)))
                  (coe d_neg'45'distrib'691''45''42'_1914 (coe v2) (coe v0))))
            (coe du_neg'45'involutive_334)))
-- Data.Rational.Unnormalised.Properties._.-r>0
d_'45'r'62'0_2360 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_'45'r'62'0_2360 v0 ~v1 ~v2 ~v3 ~v4 = du_'45'r'62'0_2360 v0
du_'45'r'62'0_2360 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_'45'r'62'0_2360 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
      (coe
         d_neg'45'mono'45''60'_364 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe du_negative'8315''185'_902 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_2368 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'691''45''60''45'neg_2368 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_2368 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_2368 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'691''45''60''45'neg_2368 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_2346 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_2388 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'nonPos_2388 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_2388 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_2388 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'nonPos_2388 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_2324 v1 v0
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
               (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'60''45'resp'45''8771'_744))
               (\ v5 v6 v7 -> coe du_'8771''45'sym_134 v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                  (coe v1))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                     (coe v1)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                  (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe d_'60''45'trans_642) (coe d_'60''45'resp'45''8771'_744)
                     (coe d_'60''45''8804''45'trans_608))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v1)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                     (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                           (coe v0)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                        (coe v0))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                        (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190 (coe v2))
                           (coe v0)))
                     (d_neg'45'distrib'737''45''42'_1902 (coe v2) (coe v0)))
                  (d_neg'45'mono'45''60'_364
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v2)
                        (coe v1))
                     (coe v3)))
               (d_neg'45'distrib'737''45''42'_1902 (coe v2) (coe v1)))))
-- Data.Rational.Unnormalised.Properties._.-r≥0
d_'45'r'8805'0_2402 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'45'r'8805'0_2402 ~v0 ~v1 v2 ~v3 ~v4 = du_'45'r'8805'0_2402 v2
du_'45'r'8805'0_2402 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_'45'r'8805'0_2402 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_186
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
      (coe
         d_neg'45'mono'45''8804'_1542 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe du_nonPositive'8315''185'_908 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_2408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'nonPos_2408 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_2408 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_2408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'nonPos_2408 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_2388 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.pos*pos⇒pos
d_pos'42'pos'8658'pos_2432 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'42'pos'8658'pos_2432 v0 ~v1 v2 ~v3
  = du_pos'42'pos'8658'pos_2432 v0 v2
du_pos'42'pos'8658'pos_2432 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'42'pos'8658'pos_2432 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
         (coe v1))
      (coe
         du_'42''45'mono'45''60''45'nonNeg_2284
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_positive'8315''185'_890 (coe v0))
         (coe du_positive'8315''185'_890 (coe v1)))
-- Data.Rational.Unnormalised.Properties.nonNeg*nonNeg⇒nonNeg
d_nonNeg'42'nonNeg'8658'nonNeg_2446 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_nonNeg'42'nonNeg'8658'nonNeg_2446 v0 ~v1 v2 ~v3
  = du_nonNeg'42'nonNeg'8658'nonNeg_2446 v0 v2
du_nonNeg'42'nonNeg'8658'nonNeg_2446 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_nonNeg'42'nonNeg'8658'nonNeg_2446 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_186
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0)
         (coe v1))
      (coe
         du_'42''45'mono'45''8804''45'nonNeg_2168
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_nonNegative'8315''185'_896 (coe v0))
         (coe du_nonNegative'8315''185'_896 (coe v1)))
-- Data.Rational.Unnormalised.Properties.*-isMagma
d_'42''45'isMagma_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_2452
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe d_'8771''45'isEquivalence_224) (coe d_'42''45'cong_1658)
-- Data.Rational.Unnormalised.Properties.*-isSemigroup
d_'42''45'isSemigroup_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_2454
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'42''45'isMagma_2452)
      (\ v0 v1 v2 -> coe du_'42''45'assoc_1728)
-- Data.Rational.Unnormalised.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'1'45'isMonoid_2456
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'42''45'isSemigroup_2454) (coe d_'42''45'identity_1776)
-- Data.Rational.Unnormalised.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'1'45'isCommutativeMonoid_2458
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'42''45'1'45'isMonoid_2456)
      (\ v0 v1 -> coe du_'42''45'comm_1754)
-- Data.Rational.Unnormalised.Properties.+-*-isRing
d_'43''45''42''45'isRing_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_'43''45''42''45'isRing_2460
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_87335
      (coe d_'43''45'0'45'isAbelianGroup_1644) (coe d_'42''45'cong_1658)
      (\ v0 v1 v2 -> coe du_'42''45'assoc_1728)
      (coe d_'42''45'identity_1776) (coe d_'42''45'distrib'45''43'_1896)
      (coe d_'42''45'zero_1836)
-- Data.Rational.Unnormalised.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_2462 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_'43''45''42''45'isCommutativeRing_2462
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_94301
      (coe d_'43''45''42''45'isRing_2460)
      (\ v0 v1 -> coe du_'42''45'comm_1754)
-- Data.Rational.Unnormalised.Properties.+-*-isHeytingCommutativeRing
d_'43''45''42''45'isHeytingCommutativeRing_2464 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_158
d_'43''45''42''45'isHeytingCommutativeRing_2464
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_IsHeytingCommutativeRing'46'constructor_4785
      (coe d_'43''45''42''45'isCommutativeRing_2462)
      (coe d_'8772''45'isApartnessRelation_228)
      (\ v0 v1 v2 -> coe du_'8772''8658'invertible_1816 v0 v1) erased
-- Data.Rational.Unnormalised.Properties.+-*-isHeytingField
d_'43''45''42''45'isHeytingField_2466 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingField_458
d_'43''45''42''45'isHeytingField_2466
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_IsHeytingField'46'constructor_16705
      (coe d_'43''45''42''45'isHeytingCommutativeRing_2464)
      (coe d_'8772''45'tight_230)
-- Data.Rational.Unnormalised.Properties.*-magma
d_'42''45'magma_2468 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'42''45'magma_2468
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      d_'42''45'isMagma_2452
-- Data.Rational.Unnormalised.Properties.*-semigroup
d_'42''45'semigroup_2470 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'42''45'semigroup_2470
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      d_'42''45'isSemigroup_2454
-- Data.Rational.Unnormalised.Properties.*-1-monoid
d_'42''45'1'45'monoid_2472 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'42''45'1'45'monoid_2472
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'42''45'1'45'isMonoid_2456
-- Data.Rational.Unnormalised.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_2474 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'42''45'1'45'commutativeMonoid_2474
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'42''45'1'45'isCommutativeMonoid_2458
-- Data.Rational.Unnormalised.Properties.+-*-ring
d_'43''45''42''45'ring_2476 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514
d_'43''45''42''45'ring_2476
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_62103
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'43''45''42''45'isRing_2460
-- Data.Rational.Unnormalised.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_2478 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_'43''45''42''45'commutativeRing_2478
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65699
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'43''45''42''45'isCommutativeRing_2462
-- Data.Rational.Unnormalised.Properties.+-*-heytingCommutativeRing
d_'43''45''42''45'heytingCommutativeRing_2480 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingCommutativeRing_12
d_'43''45''42''45'heytingCommutativeRing_2480
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_HeytingCommutativeRing'46'constructor_657
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'43''45''42''45'isHeytingCommutativeRing_2464
-- Data.Rational.Unnormalised.Properties.+-*-heytingField
d_'43''45''42''45'heytingField_2482 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingField_206
d_'43''45''42''45'heytingField_2482
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_HeytingField'46'constructor_4989
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110
      d_'43''45''42''45'isHeytingField_2466
-- Data.Rational.Unnormalised.Properties.p>1⇒p≢0
d_p'62'1'8658'p'8802'0_2484 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_p'62'1'8658'p'8802'0_2484 v0 ~v1
  = du_p'62'1'8658'p'8802'0_2484 v0
du_p'62'1'8658'p'8802'0_2484 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_p'62'1'8658'p'8802'0_2484 v0
  = coe du_pos'8658'nonZero_936 (coe v0)
-- Data.Rational.Unnormalised.Properties.1/nonZero⇒nonZero
d_1'47'nonZero'8658'nonZero_2494 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_1'47'nonZero'8658'nonZero_2494 v0 ~v1
  = du_1'47'nonZero'8658'nonZero_2494 v0
du_1'47'nonZero'8658'nonZero_2494 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_1'47'nonZero'8658'nonZero_2494 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.1/-involutive-≡
d_1'47''45'involutive'45''8801'_2500 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'47''45'involutive'45''8801'_2500 = erased
-- Data.Rational.Unnormalised.Properties.1/-involutive
d_1'47''45'involutive_2514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_1'47''45'involutive_2514 ~v0 ~v1 = du_1'47''45'involutive_2514
du_1'47''45'involutive_2514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_1'47''45'involutive_2514 = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.1/pos⇒pos
d_1'47'pos'8658'pos_2522 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_1'47'pos'8658'pos_2522 v0 ~v1 = du_1'47'pos'8658'pos_2522 v0
du_1'47'pos'8658'pos_2522 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_1'47'pos'8658'pos_2522 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.1/neg⇒neg
d_1'47'neg'8658'neg_2532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_1'47'neg'8658'neg_2532 v0 ~v1 = du_1'47'neg'8658'neg_2532 v0
du_1'47'neg'8658'neg_2532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_1'47'neg'8658'neg_2532 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1613
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.p>1⇒1/p<1
d_p'62'1'8658'1'47'p'60'1_2542 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_p'62'1'8658'1'47'p'60'1_2542 v0 v1
  = coe du_lemma'8242'_2556 (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties._.lemma′
d_lemma'8242'_2556 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_lemma'8242'_2556 ~v0 ~v1 v2 ~v3 v4 = du_lemma'8242'_2556 v2 v4
du_lemma'8242'_2556 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_lemma'8242'_2556 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v6
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (let v7
                           = coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                          (coe v7)
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                   (coe v0)))
                             (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                             (\ v8 v9 v10 v11 v12 -> v12)
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe addInt (coe (1 :: Integer)) (coe v3))
                                (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)
                                (coe addInt (coe (1 :: Integer)) (coe v3)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                   (\ v8 v9 v10 v11 v12 ->
                                      coe
                                        MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                        v11 v12)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                   (\ v8 v9 v10 v11 v12 ->
                                      coe
                                        MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
                                        v11 v12))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)
                                   (coe addInt (coe (1 :: Integer)) (coe v3)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe v2) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v8 v9 v10 v11 v12 -> v12)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe v2) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16) (coe v2))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                                               (coe v0)))))
                                   erased)
                                v6)
                             erased)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.1/-antimono-≤-pos
d_1'47''45'antimono'45''8804''45'pos_2576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_1'47''45'antimono'45''8804''45'pos_2576 v0 v1 ~v2 ~v3 v4
  = du_1'47''45'antimono'45''8804''45'pos_2576 v0 v1 v4
du_1'47''45'antimono'45''8804''45'pos_2576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_1'47''45'antimono'45''8804''45'pos_2576 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_520 v5))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
         (coe v1))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
         (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_476)
            (coe d_'60''45'resp'45''8771'_744))
         (\ v3 v4 v5 -> coe du_'8771''45'sym_134 v5)
         (coe du_1'47'q_2594 v1 erased)
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110)
            (coe du_1'47'q_2594 v1 erased))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_476)
               (coe d_'60''45'resp'45''8771'_744))
            (\ v3 v4 v5 -> coe du_'8771''45'sym_134 v5)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110)
               (coe du_1'47'q_2594 v1 erased))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe du_1'47'p_2592 v0 erased) (coe v0))
               (coe du_1'47'q_2594 v1 erased))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
               (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_476)
                  (coe d_'8804''45''60''45'trans_574))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe du_1'47'p_2592 v0 erased) (coe v0))
                  (coe du_1'47'q_2594 v1 erased))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe du_1'47'p_2592 v0 erased) (coe v1))
                  (coe du_1'47'q_2594 v1 erased))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                  (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_476)
                     (coe d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe du_1'47'p_2592 v0 erased) (coe v1))
                     (coe du_1'47'q_2594 v1 erased))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe du_1'47'p_2592 v0 erased)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                        (coe du_1'47'q_2594 v1 erased)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                     (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_476)
                        (coe d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe du_1'47'p_2592 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe du_1'47'q_2594 v1 erased)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe du_1'47'p_2592 v0 erased)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                        (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_476)
                           (coe d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe du_1'47'p_2592 v0 erased)
                           (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110))
                        (coe du_1'47'p_2592 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                           (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_476))
                           (coe du_1'47'p_2592 v0 erased))
                        (coe du_'42''45'identity'691'_1772))
                     (d_'42''45'cong'737'_1692
                        (coe du_1'47'p_2592 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v1)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                              (coe v1)))
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110)
                        (coe du_'42''45'inverse'691'_1812 (coe v1))))
                  (coe du_'42''45'assoc_1728))
               (coe
                  du_'42''45'mono'737''45''8804''45'nonNeg_2110
                  (coe du_1'47'q_2594 v1 erased)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe du_1'47'p_2592 v0 erased))
                     (\ v3 v4 -> v3) v0 v1)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v3 v4 -> v4)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe du_1'47'p_2592 v0 erased))
                     v0 v1)
                  (coe
                     du_'42''45'mono'691''45''8804''45'nonNeg_2140
                     (coe du_1'47'p_2592 v0 erased) v0 v1 v2)))
            (d_'42''45'cong'691'_1698
               (coe du_1'47'q_2594 v1 erased)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218
                     (coe v0))
                  (coe v0))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_110)
               (coe du_'42''45'inverse'737'_1782 (coe v0))))
         (coe du_'42''45'identity'737'_1768))
-- Data.Rational.Unnormalised.Properties._.1/p
d_1'47'p_2592 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_1'47'p_2592 v0 ~v1 ~v2 ~v3 ~v4 = du_1'47'p_2592 v0
du_1'47'p_2592 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_1'47'p_2592 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218 (coe v0)
-- Data.Rational.Unnormalised.Properties._.1/q
d_1'47'q_2594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_1'47'q_2594 ~v0 v1 ~v2 ~v3 ~v4 = du_1'47'q_2594 v1
du_1'47'q_2594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_1'47'q_2594 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__218 (coe v0)
-- Data.Rational.Unnormalised.Properties.p≤q⇒p⊔q≃q
d_p'8804'q'8658'p'8852'q'8771'q_2600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8804'q'8658'p'8852'q'8771'q_2600 v0 v1 ~v2
  = du_p'8804'q'8658'p'8852'q'8771'q_2600 v0 v1
du_p'8804'q'8658'p'8852'q'8771'q_2600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_p'8804'q'8658'p'8852'q'8771'q_2600 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (let v2
                = MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8804''7495'__90
                    (coe v0) (coe v1) in
          coe
            (if coe v2
               then coe du_'8771''45'refl_130
               else coe
                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)))
-- Data.Rational.Unnormalised.Properties.p≥q⇒p⊔q≃p
d_p'8805'q'8658'p'8852'q'8771'p_2628 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8805'q'8658'p'8852'q'8771'p_2628 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (let v3
                = MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8804''7495'__90
                    (coe v0) (coe v1) in
          coe
            (if coe v3
               then coe
                      du_'8804''45'antisym_438 (coe v2)
                      (coe
                         du_'8804''7495''8658''8804'_512 (coe v0)
                         (coe
                            MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v3) (coe v1)
                            (coe v0)))
               else coe du_'8771''45'refl_130)))
-- Data.Rational.Unnormalised.Properties.p≤q⇒p⊓q≃p
d_p'8804'q'8658'p'8851'q'8771'p_2658 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8804'q'8658'p'8851'q'8771'p_2658 v0 v1 ~v2
  = du_p'8804'q'8658'p'8851'q'8771'p_2658 v0 v1
du_p'8804'q'8658'p'8851'q'8771'p_2658 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_p'8804'q'8658'p'8851'q'8771'p_2658 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (let v2
                = MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8804''7495'__90
                    (coe v0) (coe v1) in
          coe
            (if coe v2
               then coe du_'8771''45'refl_130
               else coe
                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)))
-- Data.Rational.Unnormalised.Properties.p≥q⇒p⊓q≃q
d_p'8805'q'8658'p'8851'q'8771'q_2686 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8805'q'8658'p'8851'q'8771'q_2686 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (let v3
                = MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8804''7495'__90
                    (coe v0) (coe v1) in
          coe
            (if coe v3
               then coe
                      du_'8804''45'antisym_438
                      (coe
                         du_'8804''7495''8658''8804'_512
                         (coe
                            MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v3) (coe v0)
                            (coe v1))
                         (coe v1))
                      (coe v2)
               else coe du_'8771''45'refl_130)))
-- Data.Rational.Unnormalised.Properties.⊓-operator
d_'8851''45'operator_2716 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_2716
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254)
      (\ v0 v1 v2 -> coe du_p'8804'q'8658'p'8851'q'8771'p_2658 v0 v1)
      (coe d_p'8805'q'8658'p'8851'q'8771'q_2686)
-- Data.Rational.Unnormalised.Properties.⊔-operator
d_'8852''45'operator_2718 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_2718
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244)
      (\ v0 v1 v2 -> coe du_p'8804'q'8658'p'8852'q'8771'q_2600 v0 v1)
      (coe d_p'8805'q'8658'p'8852'q'8771'p_2628)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_2722 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8851'_2722
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8851'_3046
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_2724 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8852'_2724
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8852'_3092
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_2726 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8851'_2726
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_2980
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_2728 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8852'_2728
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_182
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_2730 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x_2730
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2732 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'x'8851'z'8804'y_2732
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2734 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'z'8851'x'8804'y_2734
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2736 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'x'8851'z'8804'y_2736
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2738 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'z'8851'x'8804'y_2738
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2740 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'y_2740
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2742 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'z_2742
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_2744 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'y_2744
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2746 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'x'8658'x'8804'y_2746
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2748 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'y'8658'y'8804'x_2748
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_2750 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x_2750
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_2752 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x'8852'y_2752
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3136
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_2754 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'y_2754
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2756 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'x'8658'x'8804'y_2756
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2758 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'y'8658'y'8804'x_2758
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2760 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'y_2760
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2762 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'z_2762
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_2764 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'absorbs'45''8852'_2764
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'absorbs'45''8852'_2990
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_2766 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'assoc_2766
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2810
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_2768 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_2768
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_2770 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'comm_2770
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2772 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_2772
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_2774 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong_2774
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_2776 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'691'_2776
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2786
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_2778 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'737'_2778
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_2780 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_2780
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_2956
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_2782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'distrib'691''45''8852'_2782
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'691''45''8852'_2954
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_2784 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'distrib'737''45''8852'_2784
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'737''45''8852'_2926
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_2786 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'glb_2786
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_2788 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'idem_2788
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_2796
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_2798
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_2800 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_2800
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2804 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_2804
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_2806 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_2806
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_2808 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_2808
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_2810 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'45''8804'_2810
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2814 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'691''45''8804'_2814
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2816 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'737''45''8804'_2816
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_2820 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2820
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2822 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_2822
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_2824 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_2824
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_2826 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'triangulate_2826
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3158
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_2834 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_2834
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3036
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_2836 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'absorbs'45''8851'_2836
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'absorbs'45''8851'_3012
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_2838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'assoc_2838
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2810
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_2840 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_2840
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_2842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'comm_2842
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2844 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_2844
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_2846 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong_2846
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_2848 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'691'_2848
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2786
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_2850 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'737'_2850
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_2852 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_2852
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_2988
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_2854 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'distrib'691''45''8851'_2854
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'691''45''8851'_2986
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_2856 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'distrib'737''45''8851'_2856
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'737''45''8851'_2958
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_2858 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'idem_2858
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_2866 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_2866
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_2868
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_2870 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_2870
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2874 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_2874
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_2876 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_2876
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_2878 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'glb_2878
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_2880 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_2880
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_2882 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'45''8804'_2882
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2886 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'691''45''8804'_2886
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2888 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'737''45''8804'_2888
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_2890 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2890
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2892 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_2892
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_2894 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_2894
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_2896 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'triangulate_2896
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3158
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_2904 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_2904
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3034
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_2908 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8851''45'isSemilattice_2908
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_2910 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_2910
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8851''45'operator_2716 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_2912 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8851''45''8852''45'distributiveLattice_2912
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_2914 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8851''45''8852''45'isDistributiveLattice_2914
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_796
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_2916 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8851''45''8852''45'isLattice_2916
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_794
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_2918 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8851''45''8852''45'lattice_2918
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_802
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_2920 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8851''45'isSemilattice_2920
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_2922 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_2922
  = let v0 = d_'8804''45'totalPreorder_488 in
    coe
      (let v1 = d_'8852''45'operator_2718 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_2924 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8852''45''8851''45'distributiveLattice_2924
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_804
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_2926 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8852''45''8851''45'isDistributiveLattice_2926
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_2928 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8852''45''8851''45'isLattice_2928
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_792
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_2930 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8852''45''8851''45'lattice_2930
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718)
-- Data.Rational.Unnormalised.Properties.⊓-rawMagma
d_'8851''45'rawMagma_2932 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'8851''45'rawMagma_2932
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawMagma_52
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
         (coe d_'8804''45'totalPreorder_488)
         (coe d_'8851''45'operator_2716))
-- Data.Rational.Unnormalised.Properties.⊔-rawMagma
d_'8852''45'rawMagma_2934 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'8852''45'rawMagma_2934
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawMagma_52
      (let v0 = d_'8804''45'totalPreorder_488 in
       coe
         (let v1 = d_'8852''45'operator_2718 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                  (coe v1)))))
-- Data.Rational.Unnormalised.Properties.⊔-⊓-rawLattice
d_'8852''45''8851''45'rawLattice_2936 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12
d_'8852''45''8851''45'rawLattice_2936
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.du_rawLattice_564
      (coe
         MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
         (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
         (coe d_'8852''45'operator_2718))
-- Data.Rational.Unnormalised.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_2944 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8852'_2944 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_182
      (coe d_'8804''45'totalPreorder_488) (coe d_'8852''45'operator_2718)
      (coe v0) (coe d_mono'8658'cong_506 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_2954 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8851'_2954 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_2980
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe v0) (coe d_mono'8658'cong_506 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_2964 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8851'_2964 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8851'_3046
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718) (coe v0)
      (coe d_antimono'8658'cong_510 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_2974 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8852'_2974 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8852'_3092
      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
      (coe d_'8852''45'operator_2718) (coe v0)
      (coe d_antimono'8658'cong_510 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.neg-distrib-⊔-⊓
d_neg'45'distrib'45''8852''45''8851'_2982 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'45''8852''45''8851'_2982
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_2974
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190)
      (coe d_neg'45'mono'45''8804'_1542)
-- Data.Rational.Unnormalised.Properties.neg-distrib-⊓-⊔
d_neg'45'distrib'45''8851''45''8852'_2988 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'45''8851''45''8852'_2988
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_2964
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190)
      (coe d_neg'45'mono'45''8804'_1542)
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_2998 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8851''45'nonNeg_2998 v0 ~v1
  = du_'42''45'distrib'737''45''8851''45'nonNeg_2998 v0
du_'42''45'distrib'737''45''8851''45'nonNeg_2998 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8851''45'nonNeg_2998 v0
  = coe
      d_mono'45''8804''45'distrib'45''8851'_2954
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonNeg_2140 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_3010 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8851''45'nonNeg_3010 v0 ~v1
  = du_'42''45'distrib'691''45''8851''45'nonNeg_3010 v0
du_'42''45'distrib'691''45''8851''45'nonNeg_3010 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8851''45'nonNeg_3010 v0
  = coe
      d_mono'45''8804''45'distrib'45''8851'_2954
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_3022 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8852''45'nonNeg_3022 v0 ~v1
  = du_'42''45'distrib'737''45''8852''45'nonNeg_3022 v0
du_'42''45'distrib'737''45''8852''45'nonNeg_3022 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8852''45'nonNeg_3022 v0
  = coe
      d_mono'45''8804''45'distrib'45''8852'_2944
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonNeg_2140 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_3034 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8852''45'nonNeg_3034 v0 ~v1
  = du_'42''45'distrib'691''45''8852''45'nonNeg_3034 v0
du_'42''45'distrib'691''45''8852''45'nonNeg_3034 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8852''45'nonNeg_3034 v0
  = coe
      d_mono'45''8804''45'distrib'45''8852'_2944
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_3046 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8852''45'nonPos_3046 v0 ~v1
  = du_'42''45'distrib'737''45''8852''45'nonPos_3046 v0
du_'42''45'distrib'737''45''8852''45'nonPos_3046 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8852''45'nonPos_3046 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_2974
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonPos_2214 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_3058 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8852''45'nonPos_3058 v0 ~v1
  = du_'42''45'distrib'691''45''8852''45'nonPos_3058 v0
du_'42''45'distrib'691''45''8852''45'nonPos_3058 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8852''45'nonPos_3058 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_2974
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonPos_2192 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_3070 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8851''45'nonPos_3070 v0 ~v1
  = du_'42''45'distrib'737''45''8851''45'nonPos_3070 v0
du_'42''45'distrib'737''45''8851''45'nonPos_3070 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8851''45'nonPos_3070 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_2964
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonPos_2214 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_3082 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8851''45'nonPos_3082 v0 ~v1
  = du_'42''45'distrib'691''45''8851''45'nonPos_3082 v0
du_'42''45'distrib'691''45''8851''45'nonPos_3082 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8851''45'nonPos_3082 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_2964
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonPos_2192 (coe v0))
-- Data.Rational.Unnormalised.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_3086 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8851''45'mono'45''60'_3086 v0 v1 v2 v3 v4 v5
  = let v6
          = let v6 = d_'8804''45'totalPreorder_488 in
            coe
              (let v7 = d_'8851''45'operator_2716 in
               coe
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
                    (coe v6) (coe v7) (coe v1) (coe v3))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                d_'60''45'resp'691''45''8771'_698
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                   (coe v0) (coe v2))
                (coe v1)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                   (coe v1) (coe v3))
                (coe du_'8771''45'sym_134 (coe v7))
                (coe
                   d_'8804''45''60''45'trans_574
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                      (coe v0) (coe v2))
                   (coe v0) (coe v1)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
                      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
                      (coe v0) (coe v2))
                   (coe v4))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                d_'60''45'resp'691''45''8771'_698
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                   (coe v0) (coe v2))
                (coe v3)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                   (coe v1) (coe v3))
                (coe du_'8771''45'sym_134 (coe v7))
                (coe
                   d_'8804''45''60''45'trans_574
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
                      (coe v0) (coe v2))
                   (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
                      (coe d_'8804''45'totalPreorder_488) (coe d_'8851''45'operator_2716)
                      (coe v0) (coe v2))
                   (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_3132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8852''45'mono'45''60'_3132 v0 v1 v2 v3 v4 v5
  = let v6
          = let v6 = d_'8804''45'totalPreorder_488 in
            coe
              (let v7 = d_'8852''45'operator_2718 in
               coe
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
                    (coe
                       MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                       (coe v6))
                    (coe
                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                       (coe v7))
                    (coe v0) (coe v2))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                d_'60''45'resp'737''45''8771'_734
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                   (coe v1) (coe v3))
                (coe v0)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                   (coe v0) (coe v2))
                (coe du_'8771''45'sym_134 (coe v7))
                (coe
                   d_'60''45''8804''45'trans_608 (coe v0) (coe v1)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                      (coe v1) (coe v3))
                   (coe v4)
                   (let v8 = d_'8804''45'totalPreorder_488 in
                    coe
                      (let v9 = d_'8852''45'operator_2718 in
                       coe
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v9))
                            (coe v1) (coe v3)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                d_'60''45'resp'737''45''8771'_734
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                   (coe v1) (coe v3))
                (coe v2)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                   (coe v0) (coe v2))
                (coe du_'8771''45'sym_134 (coe v7))
                (coe
                   d_'60''45''8804''45'trans_608 (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
                      (coe v1) (coe v3))
                   (coe v5)
                   (let v8 = d_'8804''45'totalPreorder_488 in
                    coe
                      (let v9 = d_'8852''45'operator_2718 in
                       coe
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v9))
                            (coe v1) (coe v3)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.pos⊓pos⇒pos
d_pos'8851'pos'8658'pos_3186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'8851'pos'8658'pos_3186 v0 ~v1 v2 ~v3
  = du_pos'8851'pos'8658'pos_3186 v0 v2
du_pos'8851'pos'8658'pos_3186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'8851'pos'8658'pos_3186 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__254
         (coe v0) (coe v1))
      (coe
         d_'8851''45'mono'45''60'_3086
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_positive'8315''185'_890 (coe v0))
         (coe du_positive'8315''185'_890 (coe v1)))
-- Data.Rational.Unnormalised.Properties.pos⊔pos⇒pos
d_pos'8852'pos'8658'pos_3200 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'8852'pos'8658'pos_3200 v0 ~v1 v2 ~v3
  = du_pos'8852'pos'8658'pos_3200 v0 v2
du_pos'8852'pos'8658'pos_3200 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'8852'pos'8658'pos_3200 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_162
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__244
         (coe v0) (coe v1))
      (coe
         d_'8852''45'mono'45''60'_3132
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)
         (coe v1) (coe du_positive'8315''185'_890 (coe v0))
         (coe du_positive'8315''185'_890 (coe v1)))
-- Data.Rational.Unnormalised.Properties.∣-∣-cong
d_'8739''45''8739''45'cong_3206 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''45''8739''45'cong_3206 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> coe
             seq (coe v3)
             (coe
                seq (coe v1)
                (coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≃0⇒p≃0
d_'8739'p'8739''8771'0'8658'p'8771'0_3234 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739'p'8739''8771'0'8658'p'8771'0_3234 v0 v1
  = coe seq (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties.0≤∣p∣
d_0'8804''8739'p'8739'_3248 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_0'8804''8739'p'8739'_3248 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                   (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣-p∣≡∣p∣
d_'8739''45'p'8739''8801''8739'p'8739'_3252 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'p'8739''8801''8739'p'8739'_3252 = erased
-- Data.Rational.Unnormalised.Properties.∣-p∣≃∣p∣
d_'8739''45'p'8739''8771''8739'p'8739'_3266 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''45'p'8739''8771''8739'p'8739'_3266 ~v0
  = du_'8739''45'p'8739''8771''8739'p'8739'_3266
du_'8739''45'p'8739''8771''8739'p'8739'_3266 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739''45'p'8739''8771''8739'p'8739'_3266
  = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.0≤p⇒∣p∣≡p
d_0'8804'p'8658''8739'p'8739''8801'p_3268 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'p'8658''8739'p'8739''8801'p_3268 = erased
-- Data.Rational.Unnormalised.Properties.0≤p⇒∣p∣≃p
d_0'8804'p'8658''8739'p'8739''8771'p_3282 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_0'8804'p'8658''8739'p'8739''8771'p_3282 ~v0 ~v1
  = du_0'8804'p'8658''8739'p'8739''8771'p_3282
du_0'8804'p'8658''8739'p'8739''8771'p_3282 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_0'8804'p'8658''8739'p'8739''8771'p_3282
  = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.∣p∣≡p⇒0≤p
d_'8739'p'8739''8801'p'8658'0'8804'p_3286 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'8739''8801'p'8658'0'8804'p_3286 v0 ~v1
  = du_'8739'p'8739''8801'p'8658'0'8804'p_3286 v0
du_'8739'p'8739''8801'p'8658'0'8804'p_3286 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8739'p'8739''8801'p'8658'0'8804'p_3286 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe
                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                   (\ v3 v4 v5 ->
                      coe
                        MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712 v5))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108))
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                      (coe v0)))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe v1)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v3 v4 v5 v6 v7 -> v7)
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
                      (coe addInt (coe (1 :: Integer)) (coe v2)))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe v1)
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                              v6 v7))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 v1
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe v1)
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                         (\ v3 v4 v5 v6 v7 -> v7) v1
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe v1) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe v1)
                            (coe
                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_108)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe
                                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v1)
                               (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
                         erased)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≡p∨∣p∣≡-p
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3300 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3300 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≃p⇒0≤p
d_'8739'p'8739''8771'p'8658'0'8804'p_3310 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'8739''8771'p'8658'0'8804'p_3310 v0 v1
  = let v2
          = d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3300
              (coe v0) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_'8739'p'8739''8801'p'8658'0'8804'p_3286 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                d_'8804''45'reflexive_396
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                   (coe (0 :: Integer)) (coe (0 :: Integer)))
                (coe v0)
                (coe
                   du_'8771''45'sym_134
                   (coe
                      d_p'8771''45'p'8658'p'8771'0_1240 (coe v0)
                      (coe du_'8771''45'sym_134 (coe v1))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.∣p+q∣≤∣p∣+∣q∣
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3340 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3340 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                          (coe
                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                          (\ v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712 v8))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                   (coe v0) (coe v1))))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                   (coe v1)))))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                   (coe v1))))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                   (coe v0) (coe v1)))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v6 v7 v8 v9 v10 -> v10)
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.du__'47'__102
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                         (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))
                                         (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                                   (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5))))
                             (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                   (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))
                                   (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                             (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                      (coe v1))))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                      (coe v0) (coe v1)))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                (coe
                                   MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                (\ v6 v7 v8 v9 v10 ->
                                   coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                                     v9 v10))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                      (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                                (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5)))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                                (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                         (coe v1))))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                         (coe v0) (coe v1)))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                (\ v6 v7 v8 v9 v10 -> v10)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                         (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5)))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                         (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                                   (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                      (coe
                                         du_'8739''8613'p'8739''8615'q_3358 (coe v2) (coe v4)
                                         (coe v5))
                                      (coe
                                         du_'8739''8613'q'8739''8615'p_3360 (coe v2) (coe v3)
                                         (coe v4)))
                                   (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                            (coe v0) (coe v1)))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v6 v7 v8 v9 v10 -> v10)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                         (coe
                                            d_'8613''8739'p'8739''8615'q_3354 (coe v2) (coe v3)
                                            (coe v4) (coe v5))
                                         (coe
                                            d_'8613''8739'q'8739''8615'p_3356 (coe v2) (coe v3)
                                            (coe v4) (coe v5)))
                                      (coe
                                         d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.du__'47'__102
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                               (coe
                                                  d_'8613''8739'p'8739''8615'q_3354 (coe v2)
                                                  (coe v3) (coe v4) (coe v5))
                                               (coe
                                                  d_'8613''8739'q'8739''8615'p_3356 (coe v2)
                                                  (coe v3) (coe v4) (coe v5)))
                                            (coe
                                               d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4)
                                               (coe v5))))
                                      (coe
                                         d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                               (coe v1))))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                               (coe v0) (coe v1)))))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                                                  (coe v0) (coe v1))))))
                                   erased)
                                erased)
                             (coe
                                MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5918
                                (coe d_'8615'p'8615'q_3362 (coe v2) (coe v3) (coe v4) (coe v5))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                      (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))
                                (coe
                                   addInt
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4)))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                   (MAlonzo.Code.Data.Integer.Properties.d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3264
                                      (coe du_'8613'p'8615'q_3350 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3352 (coe v2) (coe v3) (coe v4))))))
                          erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.↥p↧q
d_'8613'p'8615'q_3350 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613'p'8615'q_3350 v0 ~v1 v2 v3
  = du_'8613'p'8615'q_3350 v0 v2 v3
du_'8613'p'8615'q_3350 :: Integer -> Integer -> Integer -> Integer
du_'8613'p'8615'q_3350 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.↥q↧p
d_'8613'q'8615'p_3352 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613'q'8615'p_3352 v0 v1 v2 ~v3
  = du_'8613'q'8615'p_3352 v0 v1 v2
du_'8613'q'8615'p_3352 :: Integer -> Integer -> Integer -> Integer
du_'8613'q'8615'p_3352 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↥∣p∣↧q
d_'8613''8739'p'8739''8615'q_3354 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613''8739'p'8739''8615'q_3354 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
               (coe v0) (coe v1))))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v2) (coe v3)))
-- Data.Rational.Unnormalised.Properties._.↥∣q∣↧p
d_'8613''8739'q'8739''8615'p_3356 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613''8739'q'8739''8615'p_3356 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
               (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.∣↥p∣↧q
d_'8739''8613'p'8739''8615'q_3358 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8739''8613'p'8739''8615'q_3358 v0 ~v1 v2 v3
  = du_'8739''8613'p'8739''8615'q_3358 v0 v2 v3
du_'8739''8613'p'8739''8615'q_3358 ::
  Integer -> Integer -> Integer -> Integer
du_'8739''8613'p'8739''8615'q_3358 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.∣↥q∣↧p
d_'8739''8613'q'8739''8615'p_3360 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8739''8613'q'8739''8615'p_3360 v0 v1 v2 ~v3
  = du_'8739''8613'q'8739''8615'p_3360 v0 v1 v2
du_'8739''8613'q'8739''8615'p_3360 ::
  Integer -> Integer -> Integer -> Integer
du_'8739''8613'q'8739''8615'p_3360 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↧p↧q
d_'8615'p'8615'q_3362 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8615'p'8615'q_3362 v0 v1 v2 v3
  = coe
      mulInt
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v2) (coe v3)))
-- Data.Rational.Unnormalised.Properties._.∣m∣n≡∣mn∣
d_'8739'm'8739'n'8801''8739'mn'8739'_3368 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'8739'n'8801''8739'mn'8739'_3368 = erased
-- Data.Rational.Unnormalised.Properties._.∣↥p∣↧q≡∣↥p↧q∣
d_'8739''8613'p'8739''8615'q'8801''8739''8613'p'8615'q'8739'_3374 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8613'p'8739''8615'q'8801''8739''8613'p'8615'q'8739'_3374
  = erased
-- Data.Rational.Unnormalised.Properties._.∣↥q∣↧p≡∣↥q↧p∣
d_'8739''8613'q'8739''8615'p'8801''8739''8613'q'8615'p'8739'_3376 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8613'q'8739''8615'p'8801''8739''8613'q'8615'p'8739'_3376
  = erased
-- Data.Rational.Unnormalised.Properties.∣p-q∣≤∣p∣+∣q∣
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_3390 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_3390 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_476)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_520 v4))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
            (coe v1)))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
            (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_476)
            (coe d_'8804''45''60''45'trans_574))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__208 (coe v0)
               (coe v1)))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                  (coe v1))))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe v1)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
                     (coe v1))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe v1)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_476))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                     (coe v1))))
            erased)
         (d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3340
            (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__190
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.∣p*q∣≡∣p∣*∣q∣
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_3406 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_3406
  = erased
-- Data.Rational.Unnormalised.Properties.∣p*q∣≃∣p∣*∣q∣
d_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3424 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3424 ~v0
                                                              ~v1
  = du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3424
du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3424 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3424
  = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.∣∣p∣∣≡∣p∣
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_3432 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_3432 = erased
-- Data.Rational.Unnormalised.Properties.∣∣p∣∣≃∣p∣
d_'8739''8739'p'8739''8739''8771''8739'p'8739'_3438 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''8739'p'8739''8739''8771''8739'p'8739'_3438 ~v0
  = du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3438
du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3438 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3438
  = coe du_'8771''45'reflexive_132
-- Data.Rational.Unnormalised.Properties.∣-∣-nonNeg
d_'8739''45''8739''45'nonNeg_3444 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'8739''45''8739''45'nonNeg_3444 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-mono-<->
d_neg'45'mono'45''60''45''62'_3446 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'mono'45''60''45''62'_3446 = coe d_neg'45'mono'45''60'_364
-- Data.Rational.Unnormalised.Properties.↥[p/q]≡p
d_'8613''91'p'47'q'93''8801'p_3448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''91'p'47'q'93''8801'p_3448 = erased
-- Data.Rational.Unnormalised.Properties.↧[p/q]≡q
d_'8615''91'p'47'q'93''8801'q_3450 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''91'p'47'q'93''8801'q_3450 = erased
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_3456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'pos_3456 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'pos_3456 v0 v2 v3
du_'42''45'mono'691''45''8804''45'pos_3456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'pos_3456 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'691''45''8804''45'nonNeg_2140 (coe v0) (coe v1)
                   (coe v2)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_3464 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'pos_3464 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'pos_3464 v0 v2 v3
du_'42''45'mono'737''45''8804''45'pos_3464 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'pos_3464 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'737''45''8804''45'nonNeg_2110 (coe v0) (coe v1)
                   (coe v2)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-steps
d_'8804''45'steps_3468 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'steps_3468 v0 v1 v2 v3 v4
  = coe du_p'8804'q'8658'p'8804'r'43'q_1340 v0 v1 v2 v4
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_3474 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'neg_3474 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'neg_3474 v0 v2 v3
du_'42''45'mono'737''45''8804''45'neg_3474 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'neg_3474 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'737''45''8804''45'nonPos_2192 (coe v0) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_3482 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'neg_3482 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'neg_3482 v0 v2 v3
du_'42''45'mono'691''45''8804''45'neg_3482 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'neg_3482 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'691''45''8804''45'nonPos_2214 (coe v0) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-pos
d_'42''45'cancel'737''45''60''45'pos_3492 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'pos_3492 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'pos_3492 v0 v2 v3
du_'42''45'cancel'737''45''60''45'pos_3492 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'pos_3492 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'737''45''60''45'nonNeg_2324 (coe v1) (coe v2)
                   (coe v0)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-pos
d_'42''45'cancel'691''45''60''45'pos_3504 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'pos_3504 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'pos_3504 v0 v2 v3
du_'42''45'cancel'691''45''60''45'pos_3504 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'pos_3504 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'691''45''60''45'nonNeg_2306 (coe v1) (coe v2)
                   (coe v0)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_3516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'neg_3516 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'neg_3516 v0 v2 v3
du_'42''45'cancel'737''45''60''45'neg_3516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'neg_3516 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'737''45''60''45'nonPos_2388 (coe v1) (coe v2)
                    (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_3526 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'neg_3526 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'neg_3526 v0 v2 v3
du_'42''45'cancel'691''45''60''45'neg_3526 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'neg_3526 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'691''45''60''45'nonPos_2408 (coe v1) (coe v2)
                    (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.positive⇒nonNegative
d_positive'8658'nonNegative_3532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_positive'8658'nonNegative_3532 v0 ~v1
  = du_positive'8658'nonNegative_3532 v0
du_positive'8658'nonNegative_3532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_positive'8658'nonNegative_3532 v0
  = coe du_pos'8658'nonNeg_914 (coe v0)
-- Data.Rational.Unnormalised.Properties.negative⇒nonPositive
d_negative'8658'nonPositive_3540 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
d_negative'8658'nonPositive_3540 v0 ~v1
  = du_negative'8658'nonPositive_3540 v0
du_negative'8658'nonPositive_3540 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
du_negative'8658'nonPositive_3540 v0
  = coe du_neg'8658'nonPos_920 (coe v0)
-- Data.Rational.Unnormalised.Properties.negative<positive
d_negative'60'positive_3550 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_negative'60'positive_3550 v0 v1 ~v2 ~v3
  = du_negative'60'positive_3550 v0 v1
du_negative'60'positive_3550 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_negative'60'positive_3550 v0 v1
  = coe du_neg'60'pos_928 (coe v0) (coe v1)
