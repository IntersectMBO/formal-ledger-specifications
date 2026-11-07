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

module MAlonzo.Code.Function.Related.TypeIsomorphisms where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.Empty.Polymorphic
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Propositional
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Unary.Properties

-- Function.Related.TypeIsomorphisms.Σ-assoc
d_Σ'45'assoc_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Σ'45'assoc_32 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_Σ'45'assoc_32
du_Σ'45'assoc_32 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Σ'45'assoc_32
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Product.Base.du_assoc'691'_260)
      (coe MAlonzo.Code.Data.Product.Base.du_assoc'737'_276)
-- Function.Related.TypeIsomorphisms.×-comm
d_'215''45'comm_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'comm_42 ~v0 ~v1 ~v2 ~v3 = du_'215''45'comm_42
du_'215''45'comm_42 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'comm_42
  = coe MAlonzo.Code.Data.Product.Properties.du_swap'45''8596'_164
-- Function.Related.TypeIsomorphisms.×-identityˡ
d_'215''45'identity'737'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'identity'737'_46 ~v0 ~v1 = du_'215''45'identity'737'_46
du_'215''45'identity'737'_46 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'identity'737'_46
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe v0)))
-- Function.Related.TypeIsomorphisms.×-identityʳ
d_'215''45'identity'691'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'identity'691'_54 ~v0 ~v1 = du_'215''45'identity'691'_54
du_'215''45'identity'691'_54 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'identity'691'_54
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
-- Function.Related.TypeIsomorphisms.×-identity
d_'215''45'identity_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'identity_64 ~v0 = du_'215''45'identity_64
du_'215''45'identity_64 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'identity_64
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'215''45'identity'737'_46)
      (\ v0 -> coe du_'215''45'identity'691'_54)
-- Function.Related.TypeIsomorphisms.×-zeroˡ
d_'215''45'zero'737'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'zero'737'_70 ~v0 ~v1 = du_'215''45'zero'737'_70
du_'215''45'zero'737'_70 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'zero'737'_70
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (coe (\ v0 -> v0))
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20))
-- Function.Related.TypeIsomorphisms.×-zeroʳ
d_'215''45'zero'691'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'zero'691'_82 ~v0 ~v1 = du_'215''45'zero'691'_82
du_'215''45'zero'691'_82 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'zero'691'_82
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20)
         (coe (\ v0 -> v0)))
-- Function.Related.TypeIsomorphisms.×-zero
d_'215''45'zero_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'zero_94 ~v0 = du_'215''45'zero_94
du_'215''45'zero_94 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'zero_94
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'215''45'zero'737'_70)
      (\ v0 -> coe du_'215''45'zero'691'_82)
-- Function.Related.TypeIsomorphisms.⊎-assoc
d_'8846''45'assoc_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'assoc_100 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'assoc_100
du_'8846''45'assoc_100 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'assoc_100
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
            (coe
               MAlonzo.Code.Function.Base.du__'8728''8242'__230
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)))
         (coe
            MAlonzo.Code.Function.Base.du__'8728''8242'__230
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Function.Base.du__'8728''8242'__230
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
            (coe
               MAlonzo.Code.Function.Base.du__'8728''8242'__230
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)))
-- Function.Related.TypeIsomorphisms.⊎-comm
d_'8846''45'comm_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'comm_120 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'comm_120
du_'8846''45'comm_120 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'comm_120
  = coe MAlonzo.Code.Data.Sum.Properties.du_swap'45''8596'_78
-- Function.Related.TypeIsomorphisms.⊎-identityˡ
d_'8846''45'identity'737'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'identity'737'_124 ~v0 ~v1
  = du_'8846''45'identity'737'_124
du_'8846''45'identity'737'_124 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'identity'737'_124
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 erased
         (\ v0 -> v0))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Function.Related.TypeIsomorphisms.⊎-identityʳ
d_'8846''45'identity'691'_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'identity'691'_132 ~v0 ~v1
  = du_'8846''45'identity'691'_132
du_'8846''45'identity'691'_132 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'identity'691'_132
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v0 -> v0)
         erased)
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Function.Related.TypeIsomorphisms.⊎-identity
d_'8846''45'identity_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45'identity_140 ~v0 = du_'8846''45'identity_140
du_'8846''45'identity_140 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45'identity_140
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'8846''45'identity'737'_124)
      (\ v0 -> coe du_'8846''45'identity'691'_132)
-- Function.Related.TypeIsomorphisms.Σ-distribˡ-⊎
d_Σ'45'distrib'737''45''8846'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Σ'45'distrib'737''45''8846'_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_Σ'45'distrib'737''45''8846'_150
du_Σ'45'distrib'737''45''8846'_150 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Σ'45'distrib'737''45''8846'_150
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__230
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__230
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)))))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)))
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))))
-- Function.Related.TypeIsomorphisms.Σ-distribʳ-⊎
d_Σ'45'distrib'691''45''8846'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Σ'45'distrib'691''45''8846'_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_Σ'45'distrib'691''45''8846'_170
du_Σ'45'distrib'691''45''8846'_170 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Σ'45'distrib'691''45''8846'_170
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
            (coe
               MAlonzo.Code.Data.Product.Base.du_curry_224
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
            (coe
               MAlonzo.Code.Data.Product.Base.du_curry_224
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe
            MAlonzo.Code.Data.Product.Base.du_dmap_176
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
            (coe (\ v0 v1 -> v1)))
         (coe
            MAlonzo.Code.Data.Product.Base.du_dmap_176
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
            (coe (\ v0 v1 -> v1))))
-- Function.Related.TypeIsomorphisms.×-distribˡ-⊎
d_'215''45'distrib'737''45''8846'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'distrib'737''45''8846'_184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45'distrib'737''45''8846'_184
du_'215''45'distrib'737''45''8846'_184 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'distrib'737''45''8846'_184
  = coe du_Σ'45'distrib'737''45''8846'_150
-- Function.Related.TypeIsomorphisms.×-distribˡ-⊎′
d_'215''45'distrib'737''45''8846''8242'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'distrib'737''45''8846''8242'_188 ~v0 ~v1 ~v2 ~v3
  = du_'215''45'distrib'737''45''8846''8242'_188
du_'215''45'distrib'737''45''8846''8242'_188 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'distrib'737''45''8846''8242'_188
  = coe du_'215''45'distrib'737''45''8846'_184
-- Function.Related.TypeIsomorphisms.×-distribʳ-⊎
d_'215''45'distrib'691''45''8846'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'distrib'691''45''8846'_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45'distrib'691''45''8846'_192
du_'215''45'distrib'691''45''8846'_192 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'distrib'691''45''8846'_192
  = coe du_Σ'45'distrib'691''45''8846'_170
-- Function.Related.TypeIsomorphisms.×-distribʳ-⊎′
d_'215''45'distrib'691''45''8846''8242'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'distrib'691''45''8846''8242'_196 ~v0 ~v1 ~v2 ~v3
  = du_'215''45'distrib'691''45''8846''8242'_196
du_'215''45'distrib'691''45''8846''8242'_196 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'distrib'691''45''8846''8242'_196
  = coe du_'215''45'distrib'691''45''8846'_192
-- Function.Related.TypeIsomorphisms.×-distrib-⊎′
d_'215''45'distrib'45''8846''8242'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'distrib'45''8846''8242'_202 ~v0
  = du_'215''45'distrib'45''8846''8242'_202
du_'215''45'distrib'45''8846''8242'_202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'distrib'45''8846''8242'_202
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 -> coe du_'215''45'distrib'737''45''8846''8242'_188)
      (\ v0 v1 v2 -> coe du_'215''45'distrib'691''45''8846''8242'_196)
-- Function.Related.TypeIsomorphisms.×-isMagma
d_'215''45'isMagma_210 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'215''45'isMagma_210 v0 ~v1 = du_'215''45'isMagma_210 v0
du_'215''45'isMagma_210 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'215''45'isMagma_210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'isEquivalence_172
         (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Product.Function.NonDependent.Propositional.du__'215''45'cong__96
              (coe
                 MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))))
-- Function.Related.TypeIsomorphisms.×-magma
d_'215''45'magma_218 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'215''45'magma_218 v0 ~v1 = du_'215''45'magma_218 v0
du_'215''45'magma_218 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'215''45'magma_218 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124 erased
      (coe du_'215''45'isMagma_210 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isSemigroup
d_'215''45'isSemigroup_228 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'215''45'isSemigroup_228 v0 ~v1 = du_'215''45'isSemigroup_228 v0
du_'215''45'isSemigroup_228 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'215''45'isSemigroup_228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe du_'215''45'isMagma_210 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_Σ'45'assoc_32)))
-- Function.Related.TypeIsomorphisms.×-semigroup
d_'215''45'semigroup_242 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'215''45'semigroup_242 v0 ~v1 = du_'215''45'semigroup_242 v0
du_'215''45'semigroup_242 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'215''45'semigroup_242 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614 erased
      (coe du_'215''45'isSemigroup_228 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isMonoid
d_'215''45'isMonoid_252 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'215''45'isMonoid_252 v0 ~v1 = du_'215''45'isMonoid_252 v0
du_'215''45'isMonoid_252 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'215''45'isMonoid_252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe du_'215''45'isSemigroup_228 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'identity'737'_46)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'identity'691'_54))))
-- Function.Related.TypeIsomorphisms.×-monoid
d_'215''45'monoid_260 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'215''45'monoid_260 v0 ~v1 = du_'215''45'monoid_260 v0
du_'215''45'monoid_260 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'215''45'monoid_260 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990 erased erased
      (coe du_'215''45'isMonoid_252 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isCommutativeMonoid
d_'215''45'isCommutativeMonoid_270 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'215''45'isCommutativeMonoid_270 v0 ~v1
  = du_'215''45'isCommutativeMonoid_270 v0
du_'215''45'isCommutativeMonoid_270 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'215''45'isCommutativeMonoid_270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe du_'215''45'isMonoid_252 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'215''45'comm_42)))
-- Function.Related.TypeIsomorphisms.×-commutativeMonoid
d_'215''45'commutativeMonoid_282 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'215''45'commutativeMonoid_282 v0 ~v1
  = du_'215''45'commutativeMonoid_282 v0
du_'215''45'commutativeMonoid_282 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'215''45'commutativeMonoid_282 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088 erased erased
      (coe du_'215''45'isCommutativeMonoid_270 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isMagma
d_'8846''45'isMagma_292 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8846''45'isMagma_292 v0 ~v1 = du_'8846''45'isMagma_292 v0
du_'8846''45'isMagma_292 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8846''45'isMagma_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'isEquivalence_172
         (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Sum.Function.Propositional.du__'8846''45'cong__94
              (coe
                 MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))))
-- Function.Related.TypeIsomorphisms.⊎-magma
d_'8846''45'magma_300 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8846''45'magma_300 v0 ~v1 = du_'8846''45'magma_300 v0
du_'8846''45'magma_300 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'8846''45'magma_300 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124 erased
      (coe du_'8846''45'isMagma_292 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isSemigroup
d_'8846''45'isSemigroup_310 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8846''45'isSemigroup_310 v0 ~v1
  = du_'8846''45'isSemigroup_310 v0
du_'8846''45'isSemigroup_310 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8846''45'isSemigroup_310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe du_'8846''45'isMagma_292 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'8846''45'assoc_100)))
-- Function.Related.TypeIsomorphisms.⊎-semigroup
d_'8846''45'semigroup_324 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8846''45'semigroup_324 v0 ~v1 = du_'8846''45'semigroup_324 v0
du_'8846''45'semigroup_324 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'8846''45'semigroup_324 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614 erased
      (coe du_'8846''45'isSemigroup_310 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isMonoid
d_'8846''45'isMonoid_334 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8846''45'isMonoid_334 v0 ~v1 = du_'8846''45'isMonoid_334 v0
du_'8846''45'isMonoid_334 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8846''45'isMonoid_334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe du_'8846''45'isSemigroup_310 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'8846''45'identity'737'_124)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'8846''45'identity'691'_132))))
-- Function.Related.TypeIsomorphisms.⊎-monoid
d_'8846''45'monoid_342 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8846''45'monoid_342 v0 ~v1 = du_'8846''45'monoid_342 v0
du_'8846''45'monoid_342 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'8846''45'monoid_342 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990 erased erased
      (coe du_'8846''45'isMonoid_334 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isCommutativeMonoid
d_'8846''45'isCommutativeMonoid_352 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8846''45'isCommutativeMonoid_352 v0 ~v1
  = du_'8846''45'isCommutativeMonoid_352 v0
du_'8846''45'isCommutativeMonoid_352 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'8846''45'isCommutativeMonoid_352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe du_'8846''45'isMonoid_334 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'8846''45'comm_120)))
-- Function.Related.TypeIsomorphisms.⊎-commutativeMonoid
d_'8846''45'commutativeMonoid_364 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'8846''45'commutativeMonoid_364 v0 ~v1
  = du_'8846''45'commutativeMonoid_364 v0
du_'8846''45'commutativeMonoid_364 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'8846''45'commutativeMonoid_364 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088 erased erased
      (coe du_'8846''45'isCommutativeMonoid_352 (coe v0))
-- Function.Related.TypeIsomorphisms.×-⊎-isCommutativeSemiring
d_'215''45''8846''45'isCommutativeSemiring_374 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'215''45''8846''45'isCommutativeSemiring_374 v0 ~v1
  = du_'215''45''8846''45'isCommutativeSemiring_374 v0
du_'215''45''8846''45'isCommutativeSemiring_374 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_'215''45''8846''45'isCommutativeSemiring_374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeSemiring_3350
      erased erased erased
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.C_constructor_3444
         (coe du_'8846''45'isCommutativeMonoid_352 (coe v0))
         (coe du_'215''45'isCommutativeMonoid_270 (coe v0))
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'distrib'691''45''8846'_192)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'zero'737'_70))))
-- Function.Related.TypeIsomorphisms.×-⊎-commutativeSemiring
d_'215''45''8846''45'commutativeSemiring_388 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'215''45''8846''45'commutativeSemiring_388 v0 ~v1
  = du_'215''45''8846''45'commutativeSemiring_388 v0
du_'215''45''8846''45'commutativeSemiring_388 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_'215''45''8846''45'commutativeSemiring_388 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706 erased erased
      erased erased
      (coe du_'215''45''8846''45'isCommutativeSemiring_374 (coe v0))
-- Function.Related.TypeIsomorphisms.ΠΠ↔ΠΠ
d_ΠΠ'8596'ΠΠ_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_ΠΠ'8596'ΠΠ_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ΠΠ'8596'ΠΠ_414
du_ΠΠ'8596'ΠΠ_414 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_ΠΠ'8596'ΠΠ_414
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
-- Function.Related.TypeIsomorphisms.∃∃↔∃∃
d_'8707''8707''8596''8707''8707'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8707''8707''8596''8707''8707'_440 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8707''8707''8596''8707''8707'_440
du_'8707''8707''8596''8707''8707'_440 ::
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8707''8707''8596''8707''8707'_440 v0
  = coe
      MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_252
-- Function.Related.TypeIsomorphisms.Π↔Π
d_Π'8596'Π_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_Π'8596'Π_450 ~v0 ~v1 ~v2 ~v3 = du_Π'8596'Π_450
du_Π'8596'Π_450 :: MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_Π'8596'Π_450
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe (\ v0 v1 -> coe v0 v1)) (coe (\ v0 v1 -> coe v0 v1))
-- Function.Related.TypeIsomorphisms.→-cong-⇔
d_'8594''45'cong'45''8660'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8594''45'cong'45''8660'_456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                               v9
  = du_'8594''45'cong'45''8660'_456 v8 v9
du_'8594''45'cong'45''8660'_456 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8594''45'cong'45''8660'_456 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_1870 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1870 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_1868 v0 v3))))
-- Function.Related.TypeIsomorphisms.→-cong-↔
d_'8594''45'cong'45''8596'_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8594''45'cong'45''8596'_478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               ~v9 v10 v11
  = du_'8594''45'cong'45''8596'_478 v10 v11
du_'8594''45'cong'45''8596'_478 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8594''45'cong'45''8596'_478 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_2134 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_2136 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_2136 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_2134 v0 v3))))
-- Function.Related.TypeIsomorphisms.→-cong
d_'8594''45'cong_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_'8594''45'cong_514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_'8594''45'cong_514 v6
du_'8594''45'cong_514 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8594''45'cong_514 v0
  = case coe v0 of
      MAlonzo.Code.Function.Related.Propositional.C_equivalence_88
        -> coe du_'8594''45'cong'45''8660'_456
      MAlonzo.Code.Function.Related.Propositional.C_bijection_90
        -> coe du_'8594''45'cong'45''8596'_478
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms.¬-cong-⇔
d_'172''45'cong'45''8660'_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'172''45'cong'45''8660'_524 ~v0 ~v1 ~v2 ~v3 v4
  = du_'172''45'cong'45''8660'_524 v4
du_'172''45'cong'45''8660'_524 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'172''45'cong'45''8660'_524 v0
  = coe
      du_'8594''45'cong'45''8660'_456 (coe v0)
      (coe MAlonzo.Code.Function.Construct.Identity.du_'8660''45'id_654)
-- Function.Related.TypeIsomorphisms.¬-cong
d_'172''45'cong_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  () -> () -> AgdaAny -> AgdaAny
d_'172''45'cong_534 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_'172''45'cong_534 v4 v7
du_'172''45'cong_534 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny -> AgdaAny
du_'172''45'cong_534 v0 v1
  = coe
      du_'8594''45'cong_514 v0 v1
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_K'45'reflexive_162
         (coe
            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
            (coe v0)))
-- Function.Related.TypeIsomorphisms.Related-cong
d_Related'45'cong_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_Related'45'cong_544 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 v8 v9 v10
  = du_Related'45'cong_544 v1 v3 v5 v7 v8 v9 v10
du_Related'45'cong_544 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_Related'45'cong_544 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
              (\ v8 v9 v10 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                      (coe v4)))
              v1 v0 v3
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                 (\ v8 v9 v10 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                         (coe v4)))
                 v0 v2 v3
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                    (\ v8 v9 v10 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                            (coe v4)))
                    v2 v3 v3
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe v4)))
                       (coe v3))
                    v6)
                 v7)
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168 v4
                 v5)))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
              (\ v8 v9 v10 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                      (coe v4)))
              v0 v1 v2
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                 (\ v8 v9 v10 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                         (coe v4)))
                 v1 v3 v2
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                    (\ v8 v9 v10 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                            (coe v4)))
                    v3 v2 v2
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe v4)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168 v4
                       v6))
                 v7)
              v5))
-- Function.Related.TypeIsomorphisms.∃-≡
d_'8707''45''8801'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8707''45''8801'_572 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8707''45''8801'_572 v4
du_'8707''45''8801'_572 ::
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8707''45''8801'_572 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Relation.Unary.Properties.du_'10216'_'10217''8866''8315'__430
         (coe (\ v1 -> v1)) (coe (\ v1 v2 -> v2)) (coe v0))
      (coe
         MAlonzo.Code.Relation.Unary.Properties.du_'10216'_'10217''8866''8314'__436
         (coe (\ v1 v2 -> v2)))
-- Function.Related.TypeIsomorphisms..extendedlambda2
d_'46'extendedlambda2_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda2_578 = erased
