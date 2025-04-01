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
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Function.Related.TypeIsomorphisms.Σ-assoc
d_Σ'45'assoc_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_Σ'45'assoc_32 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_Σ'45'assoc_32
du_Σ'45'assoc_32 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_Σ'45'assoc_32
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe MAlonzo.Code.Data.Product.Base.du_assoc'691'_260)
      (coe MAlonzo.Code.Data.Product.Base.du_assoc'737'_276)
-- Function.Related.TypeIsomorphisms.×-comm
d_'215''45'comm_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'comm_42 ~v0 ~v1 ~v2 ~v3 = du_'215''45'comm_42
du_'215''45'comm_42 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'comm_42
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370)
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370)
-- Function.Related.TypeIsomorphisms.×-identityˡ
d_'215''45'identity'737'_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'identity'737'_50 ~v0 ~v1 = du_'215''45'identity'737'_50
du_'215''45'identity'737'_50 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'identity'737'_50
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
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
d_'215''45'identity'691'_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'identity'691'_58 ~v0 ~v1 = du_'215''45'identity'691'_58
du_'215''45'identity'691'_58 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'identity'691'_58
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
-- Function.Related.TypeIsomorphisms.×-identity
d_'215''45'identity_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'identity_68 ~v0 = du_'215''45'identity_68
du_'215''45'identity_68 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'identity_68
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'215''45'identity'737'_50)
      (\ v0 -> coe du_'215''45'identity'691'_58)
-- Function.Related.TypeIsomorphisms.×-zeroˡ
d_'215''45'zero'737'_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'zero'737'_74 ~v0 ~v1 = du_'215''45'zero'737'_74
du_'215''45'zero'737'_74 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'zero'737'_74
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (coe (\ v0 -> v0))
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20))
-- Function.Related.TypeIsomorphisms.×-zeroʳ
d_'215''45'zero'691'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'zero'691'_86 ~v0 ~v1 = du_'215''45'zero'691'_86
du_'215''45'zero'691'_86 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'zero'691'_86
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20)
         (coe (\ v0 -> v0)))
-- Function.Related.TypeIsomorphisms.×-zero
d_'215''45'zero_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'zero_98 ~v0 = du_'215''45'zero_98
du_'215''45'zero_98 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'zero_98
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'215''45'zero'737'_74)
      (\ v0 -> coe du_'215''45'zero'691'_86)
-- Function.Related.TypeIsomorphisms.⊎-assoc
d_'8846''45'assoc_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8846''45'assoc_104 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'assoc_104
du_'8846''45'assoc_104 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8846''45'assoc_104
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
            (coe
               MAlonzo.Code.Function.Base.du__'8728''8242'__216
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)))
         (coe
            MAlonzo.Code.Function.Base.du__'8728''8242'__216
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Function.Base.du__'8728''8242'__216
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
            (coe
               MAlonzo.Code.Function.Base.du__'8728''8242'__216
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
               (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))
            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)))
-- Function.Related.TypeIsomorphisms.⊎-comm
d_'8846''45'comm_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8846''45'comm_124 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'comm_124
du_'8846''45'comm_124 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8846''45'comm_124
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe MAlonzo.Code.Data.Sum.Base.du_swap_78)
      (coe MAlonzo.Code.Data.Sum.Base.du_swap_78)
-- Function.Related.TypeIsomorphisms.⊎-identityˡ
d_'8846''45'identity'737'_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8846''45'identity'737'_128 ~v0 ~v1
  = du_'8846''45'identity'737'_128
du_'8846''45'identity'737'_128 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8846''45'identity'737'_128
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 erased
         (\ v0 -> v0))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Function.Related.TypeIsomorphisms.⊎-identityʳ
d_'8846''45'identity'691'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8846''45'identity'691'_136 ~v0 ~v1
  = du_'8846''45'identity'691'_136
du_'8846''45'identity'691'_136 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8846''45'identity'691'_136
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v0 -> v0)
         erased)
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Function.Related.TypeIsomorphisms.⊎-identity
d_'8846''45'identity_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45'identity_144 ~v0 = du_'8846''45'identity_144
du_'8846''45'identity_144 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45'identity_144
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'8846''45'identity'737'_128)
      (\ v0 -> coe du_'8846''45'identity'691'_136)
-- Function.Related.TypeIsomorphisms.Σ-distribˡ-⊎
d_Σ'45'distrib'737''45''8846'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_Σ'45'distrib'737''45''8846'_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_Σ'45'distrib'737''45''8846'_154
du_Σ'45'distrib'737''45''8846'_154 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_Σ'45'distrib'737''45''8846'_154
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
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
d_Σ'45'distrib'691''45''8846'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_Σ'45'distrib'691''45''8846'_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_Σ'45'distrib'691''45''8846'_174
du_Σ'45'distrib'691''45''8846'_174 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_Σ'45'distrib'691''45''8846'_174
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
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
d_'215''45'distrib'737''45''8846'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'distrib'737''45''8846'_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45'distrib'737''45''8846'_188
du_'215''45'distrib'737''45''8846'_188 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'distrib'737''45''8846'_188
  = coe du_Σ'45'distrib'737''45''8846'_154
-- Function.Related.TypeIsomorphisms.×-distribˡ-⊎′
d_'215''45'distrib'737''45''8846''8242'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'distrib'737''45''8846''8242'_192 ~v0 ~v1 ~v2 ~v3
  = du_'215''45'distrib'737''45''8846''8242'_192
du_'215''45'distrib'737''45''8846''8242'_192 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'distrib'737''45''8846''8242'_192
  = coe du_'215''45'distrib'737''45''8846'_188
-- Function.Related.TypeIsomorphisms.×-distribʳ-⊎
d_'215''45'distrib'691''45''8846'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'distrib'691''45''8846'_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45'distrib'691''45''8846'_196
du_'215''45'distrib'691''45''8846'_196 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'distrib'691''45''8846'_196
  = coe du_Σ'45'distrib'691''45''8846'_174
-- Function.Related.TypeIsomorphisms.×-distribʳ-⊎′
d_'215''45'distrib'691''45''8846''8242'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'215''45'distrib'691''45''8846''8242'_200 ~v0 ~v1 ~v2 ~v3
  = du_'215''45'distrib'691''45''8846''8242'_200
du_'215''45'distrib'691''45''8846''8242'_200 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'215''45'distrib'691''45''8846''8242'_200
  = coe du_'215''45'distrib'691''45''8846'_196
-- Function.Related.TypeIsomorphisms.×-distrib-⊎′
d_'215''45'distrib'45''8846''8242'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'distrib'45''8846''8242'_206 ~v0
  = du_'215''45'distrib'45''8846''8242'_206
du_'215''45'distrib'45''8846''8242'_206 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'distrib'45''8846''8242'_206
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 -> coe du_'215''45'distrib'737''45''8846''8242'_192)
      (\ v0 v1 v2 -> coe du_'215''45'distrib'691''45''8846''8242'_200)
-- Function.Related.TypeIsomorphisms.×-isMagma
d_'215''45'isMagma_214 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'215''45'isMagma_214 v0 ~v1 = du_'215''45'isMagma_214 v0
du_'215''45'isMagma_214 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'215''45'isMagma_214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
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
d_'215''45'magma_222 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'215''45'magma_222 v0 ~v1 = du_'215''45'magma_222 v0
du_'215''45'magma_222 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'215''45'magma_222 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323 erased
      (coe du_'215''45'isMagma_214 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isSemigroup
d_'215''45'isSemigroup_232 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'215''45'isSemigroup_232 v0 ~v1 = du_'215''45'isSemigroup_232 v0
du_'215''45'isSemigroup_232 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'215''45'isSemigroup_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'215''45'isMagma_214 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_Σ'45'assoc_32)))
-- Function.Related.TypeIsomorphisms.×-semigroup
d_'215''45'semigroup_246 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'215''45'semigroup_246 v0 ~v1 = du_'215''45'semigroup_246 v0
du_'215''45'semigroup_246 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'215''45'semigroup_246 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837 erased
      (coe du_'215''45'isSemigroup_232 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isMonoid
d_'215''45'isMonoid_256 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'215''45'isMonoid_256 v0 ~v1 = du_'215''45'isMonoid_256 v0
du_'215''45'isMonoid_256 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'215''45'isMonoid_256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'215''45'isSemigroup_232 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'identity'737'_50)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'identity'691'_58))))
-- Function.Related.TypeIsomorphisms.×-monoid
d_'215''45'monoid_264 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'215''45'monoid_264 v0 ~v1 = du_'215''45'monoid_264 v0
du_'215''45'monoid_264 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'215''45'monoid_264 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201 erased
      erased (coe du_'215''45'isMonoid_256 (coe v0))
-- Function.Related.TypeIsomorphisms.×-isCommutativeMonoid
d_'215''45'isCommutativeMonoid_274 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'215''45'isCommutativeMonoid_274 v0 ~v1
  = du_'215''45'isCommutativeMonoid_274 v0
du_'215''45'isCommutativeMonoid_274 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'215''45'isCommutativeMonoid_274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'215''45'isMonoid_256 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'215''45'comm_42)))
-- Function.Related.TypeIsomorphisms.×-commutativeMonoid
d_'215''45'commutativeMonoid_286 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'215''45'commutativeMonoid_286 v0 ~v1
  = du_'215''45'commutativeMonoid_286 v0
du_'215''45'commutativeMonoid_286 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'215''45'commutativeMonoid_286 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      erased erased (coe du_'215''45'isCommutativeMonoid_274 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isMagma
d_'8846''45'isMagma_296 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8846''45'isMagma_296 v0 ~v1 = du_'8846''45'isMagma_296 v0
du_'8846''45'isMagma_296 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8846''45'isMagma_296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
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
d_'8846''45'magma_304 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8846''45'magma_304 v0 ~v1 = du_'8846''45'magma_304 v0
du_'8846''45'magma_304 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'8846''45'magma_304 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323 erased
      (coe du_'8846''45'isMagma_296 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isSemigroup
d_'8846''45'isSemigroup_314 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8846''45'isSemigroup_314 v0 ~v1
  = du_'8846''45'isSemigroup_314 v0
du_'8846''45'isSemigroup_314 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8846''45'isSemigroup_314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'8846''45'isMagma_296 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'8846''45'assoc_104)))
-- Function.Related.TypeIsomorphisms.⊎-semigroup
d_'8846''45'semigroup_328 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8846''45'semigroup_328 v0 ~v1 = du_'8846''45'semigroup_328 v0
du_'8846''45'semigroup_328 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'8846''45'semigroup_328 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837 erased
      (coe du_'8846''45'isSemigroup_314 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isMonoid
d_'8846''45'isMonoid_338 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8846''45'isMonoid_338 v0 ~v1 = du_'8846''45'isMonoid_338 v0
du_'8846''45'isMonoid_338 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8846''45'isMonoid_338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'8846''45'isSemigroup_314 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'8846''45'identity'737'_128)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'8846''45'identity'691'_136))))
-- Function.Related.TypeIsomorphisms.⊎-monoid
d_'8846''45'monoid_346 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8846''45'monoid_346 v0 ~v1 = du_'8846''45'monoid_346 v0
du_'8846''45'monoid_346 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'8846''45'monoid_346 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201 erased
      erased (coe du_'8846''45'isMonoid_338 (coe v0))
-- Function.Related.TypeIsomorphisms.⊎-isCommutativeMonoid
d_'8846''45'isCommutativeMonoid_356 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8846''45'isCommutativeMonoid_356 v0 ~v1
  = du_'8846''45'isCommutativeMonoid_356 v0
du_'8846''45'isCommutativeMonoid_356 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'8846''45'isCommutativeMonoid_356 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'8846''45'isMonoid_338 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                 (coe v0))
              (coe du_'8846''45'comm_124)))
-- Function.Related.TypeIsomorphisms.⊎-commutativeMonoid
d_'8846''45'commutativeMonoid_368 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'8846''45'commutativeMonoid_368 v0 ~v1
  = du_'8846''45'commutativeMonoid_368 v0
du_'8846''45'commutativeMonoid_368 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'8846''45'commutativeMonoid_368 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      erased erased (coe du_'8846''45'isCommutativeMonoid_356 (coe v0))
-- Function.Related.TypeIsomorphisms.×-⊎-isCommutativeSemiring
d_'215''45''8846''45'isCommutativeSemiring_378 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'215''45''8846''45'isCommutativeSemiring_378 v0 ~v1
  = du_'215''45''8846''45'isCommutativeSemiring_378 v0
du_'215''45''8846''45'isCommutativeSemiring_378 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_'215''45''8846''45'isCommutativeSemiring_378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeSemiring_3018
      erased erased erased
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeSemiring'737''46'constructor_43847
         (coe du_'8846''45'isCommutativeMonoid_356 (coe v0))
         (coe du_'215''45'isCommutativeMonoid_274 (coe v0))
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'distrib'691''45''8846'_196)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                    (coe v0))
                 (coe du_'215''45'zero'737'_74))))
-- Function.Related.TypeIsomorphisms.×-⊎-commutativeSemiring
d_'215''45''8846''45'commutativeSemiring_392 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'215''45''8846''45'commutativeSemiring_392 v0 ~v1
  = du_'215''45''8846''45'commutativeSemiring_392 v0
du_'215''45''8846''45'commutativeSemiring_392 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_'215''45''8846''45'commutativeSemiring_392 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      erased erased erased erased
      (coe du_'215''45''8846''45'isCommutativeSemiring_378 (coe v0))
-- Function.Related.TypeIsomorphisms.ΠΠ↔ΠΠ
d_ΠΠ'8596'ΠΠ_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_ΠΠ'8596'ΠΠ_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ΠΠ'8596'ΠΠ_418
du_ΠΠ'8596'ΠΠ_418 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_ΠΠ'8596'ΠΠ_418
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
-- Function.Related.TypeIsomorphisms.∃∃↔∃∃
d_'8707''8707''8596''8707''8707'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8707''8707''8596''8707''8707'_444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8707''8707''8596''8707''8707'_444
du_'8707''8707''8596''8707''8707'_444 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8707''8707''8596''8707''8707'_444
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe du_to_460) (coe du_from_476)
-- Function.Related.TypeIsomorphisms._.to
d_to_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_to_460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_to_460 v6
du_to_460 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_to_460 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms._.from
d_from_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_from_476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_from_476 v6
du_from_476 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_from_476 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms.Π↔Π
d_Π'8596'Π_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_Π'8596'Π_496 ~v0 ~v1 ~v2 ~v3 = du_Π'8596'Π_496
du_Π'8596'Π_496 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_Π'8596'Π_496
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe (\ v0 v1 -> coe v0 v1)) (coe (\ v0 v1 -> coe v0 v1))
-- Function.Related.TypeIsomorphisms.→-cong-⇔
d_'8594''45'cong'45''8660'_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8594''45'cong'45''8660'_502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                               v9
  = du_'8594''45'cong'45''8660'_502 v8 v9
du_'8594''45'cong'45''8660'_502 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8594''45'cong'45''8660'_502 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1820 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_1822 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1822 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_1820 v0 v3))))
-- Function.Related.TypeIsomorphisms.→-cong-↔
d_'8594''45'cong'45''8596'_524 ::
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
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8594''45'cong'45''8596'_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               ~v9 v10 v11
  = du_'8594''45'cong'45''8596'_524 v10 v11
du_'8594''45'cong'45''8596'_524 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8594''45'cong'45''8596'_524 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_2080 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_2082 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_2082 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_2080 v0 v3))))
-- Function.Related.TypeIsomorphisms.→-cong
d_'8594''45'cong_560 ::
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
d_'8594''45'cong_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_'8594''45'cong_560 v6
du_'8594''45'cong_560 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8594''45'cong_560 v0
  = case coe v0 of
      MAlonzo.Code.Function.Related.Propositional.C_equivalence_88
        -> coe du_'8594''45'cong'45''8660'_502
      MAlonzo.Code.Function.Related.Propositional.C_bijection_90
        -> coe du_'8594''45'cong'45''8596'_524
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms.¬-cong-⇔
d_'172''45'cong'45''8660'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'172''45'cong'45''8660'_570 ~v0 ~v1 ~v2 ~v3 v4
  = du_'172''45'cong'45''8660'_570 v4
du_'172''45'cong'45''8660'_570 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'172''45'cong'45''8660'_570 v0
  = coe
      du_'8594''45'cong'45''8660'_502 (coe v0)
      (coe MAlonzo.Code.Function.Construct.Identity.du_'8660''45'id_856)
-- Function.Related.TypeIsomorphisms.¬-cong
d_'172''45'cong_580 ::
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
d_'172''45'cong_580 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_'172''45'cong_580 v4 v7
du_'172''45'cong_580 ::
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny -> AgdaAny
du_'172''45'cong_580 v0 v1
  = coe
      du_'8594''45'cong_560 v0 v1
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_K'45'reflexive_162
         (coe
            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
            (coe v0)))
-- Function.Related.TypeIsomorphisms.Related-cong
d_Related'45'cong_590 ::
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
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_Related'45'cong_590 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 v8 v9 v10
  = du_Related'45'cong_590 v1 v3 v5 v7 v8 v9 v10
du_Related'45'cong_590 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_Related'45'cong_590 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
              (\ v8 v9 v10 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                      (coe v4)))
              v1 v0 v3
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                 (\ v8 v9 v10 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                         (coe v4)))
                 v0 v2 v3
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v8 v9 v10 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                            (coe v4)))
                    v2 v3 v3
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
              (\ v8 v9 v10 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe
                      MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                      (coe v4)))
              v0 v1 v2
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                 (\ v8 v9 v10 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                         (coe v4)))
                 v1 v3 v2
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v8 v9 v10 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                            (coe v4)))
                    v3 v2 v2
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
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
-- Function.Related.TypeIsomorphisms.True↔
d_True'8596'_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_True'8596'_622 ~v0 ~v1 v2 ~v3 = du_True'8596'_622 v2
du_True'8596'_622 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_True'8596'_622 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
                    (coe
                       (\ v3 ->
                          coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)))
                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482 erased
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms.∃-≡
d_'8707''45''8801'_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8707''45''8801'_644 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8707''45''8801'_644 v4
du_'8707''45''8801'_644 ::
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8707''45''8801'_644 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v1))))
      (coe du_'46'extendedlambda2_652)
-- Function.Related.TypeIsomorphisms..extendedlambda2
d_'46'extendedlambda2_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'46'extendedlambda2_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'46'extendedlambda2_652 v5
du_'46'extendedlambda2_652 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'46'extendedlambda2_652 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.TypeIsomorphisms..extendedlambda3
d_'46'extendedlambda3_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda3_656 = erased
