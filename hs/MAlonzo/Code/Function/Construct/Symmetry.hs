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

module MAlonzo.Code.Function.Construct.Symmetry where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Construct.Symmetry._.f⁻¹
d_f'8315''185'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_f'8315''185'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_f'8315''185'_48 v9 v10
du_f'8315''185'_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_f'8315''185'_48 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v0 v1)
-- Function.Construct.Symmetry._.f∘f⁻¹≡id
d_f'8728'f'8315''185''8801'id_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_f'8728'f'8315''185''8801'id_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9 v10
  = du_f'8728'f'8315''185''8801'id_50 v9 v10
du_f'8728'f'8315''185''8801'id_50 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_f'8728'f'8315''185''8801'id_50 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v0 v1)
-- Function.Construct.Symmetry._.injective
d_injective_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11 v12
               v13 v14 v15 v16
  = du_injective_52 v8 v9 v10 v11 v12 v13 v14 v15 v16
du_injective_52 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_injective_52 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      v4 v6 (coe v0 (coe du_f'8315''185'_48 (coe v1) (coe v7))) v7
      (coe
         v4 v6
         (coe
            v0
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v6)))
         (coe v0 (coe du_f'8315''185'_48 (coe v1) (coe v7)))
         (coe
            v3
            (coe
               v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v6)))
            v6
            (coe
               du_f'8728'f'8315''185''8801'id_50 v1 v6
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v6))
               (coe
                  v2
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v6)))))
         (coe
            v5 (coe du_f'8315''185'_48 (coe v1) (coe v6))
            (coe du_f'8315''185'_48 (coe v1) (coe v7)) v8))
      (coe
         du_f'8728'f'8315''185''8801'id_50 v1 v7
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v7))
         (coe
            v2
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v7))))
-- Function.Construct.Symmetry._.surjective
d_surjective_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11 v12
  = du_surjective_64 v8 v9 v10 v11 v12
du_surjective_64 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_surjective_64 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v4)
      (coe
         (\ v5 v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v5))
              v4
              (coe
                 v3
                 (coe
                    v0
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v5)))
                 v5 (coe v0 v4)
                 (coe
                    du_f'8728'f'8315''185''8801'id_50 v1 v5
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v5))
                    (coe
                       v2
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v5))))
                 v6)))
-- Function.Construct.Symmetry._.bijective
d_bijective_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11 v12
               v13
  = du_bijective_72 v8 v9 v10 v11 v12 v13
du_bijective_72 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bijective_72 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_injective_52 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
      (coe du_surjective_64 (coe v0) (coe v1) (coe v2) (coe v4))
-- Function.Construct.Symmetry._.inverseʳ
d_inverse'691'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                   v12
  = du_inverse'691'_102 v10 v11 v12
du_inverse'691'_102 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691'_102 v0 v1 v2 = coe v0 v1 v2
-- Function.Construct.Symmetry._.inverseˡ
d_inverse'737'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                   v12
  = du_inverse'737'_106 v10 v11 v12
du_inverse'737'_106 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737'_106 v0 v1 v2 = coe v0 v1 v2
-- Function.Construct.Symmetry._.inverseᵇ
d_inverse'7495'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse'7495'_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_inverse'7495'_110 v10
du_inverse'7495'_110 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse'7495'_110 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Construct.Symmetry._.f⁻¹
d_f'8315''185'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
d_f'8315''185'_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_f'8315''185'_210 v9 v10
du_f'8315''185'_210 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
du_f'8315''185'_210 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe MAlonzo.Code.Function.Structures.d_surjective_260 v0 v1)
-- Function.Construct.Symmetry._.isBijection
d_isBijection_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
d_isBijection_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_isBijection_212 v8 v9 v10
du_isBijection_212 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
du_isBijection_212 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsBijection'46'constructor_10473
      (coe
         MAlonzo.Code.Function.Structures.C_IsInjection'46'constructor_4117
         (coe
            MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
            (coe v2)
            (let v3
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
                     (coe v4))))
            (let v3
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                     (coe v4)))))
         (coe
            du_injective_52 (coe v0)
            (coe MAlonzo.Code.Function.Structures.du_bijective_326 (coe v1))
            (let v3
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                        (coe v4)))))
            (let v3
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
                coe
                  (let v5
                         = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v5))))))
            (let v3
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
                coe
                  (let v5
                         = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v5))))))
            (coe
               MAlonzo.Code.Function.Structures.d_cong_32
               (coe
                  MAlonzo.Code.Function.Structures.d_isCongruent_104
                  (coe
                     MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1))))))
      (coe
         du_surjective_64 (coe v0)
         (coe MAlonzo.Code.Function.Structures.du_bijective_326 (coe v1))
         (let v3
                = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                     (coe v4)))))
         (let v3
                = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe v5)))))))
-- Function.Construct.Symmetry._.isBijection-≡
d_isBijection'45''8801'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
d_isBijection'45''8801'_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_isBijection'45''8801'_232 v6 v7
du_isBijection'45''8801'_232 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
du_isBijection'45''8801'_232 v0 v1
  = coe
      du_isBijection_212 (coe v0) (coe v1)
      (coe
         (\ v2 v3 v4 ->
            let v5
                  = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v1) in
            coe
              (let v6
                     = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v5) in
               coe
                 (let v7
                        = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v6) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7))
                       (coe du_f'8315''185'_210 (coe v1) (coe v2)))))))
-- Function.Construct.Symmetry._.isCongruent
d_isCongruent_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
  = du_isCongruent_332 v10 v11
du_isCongruent_332 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_332 v0 v1
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe v1)
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0))
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0))
-- Function.Construct.Symmetry._.isLeftInverse
d_isLeftInverse_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isLeftInverse_402 v10
du_isLeftInverse_402 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_402 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsLeftInverse'46'constructor_14843
      (coe
         du_isCongruent_332
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0))
         (coe MAlonzo.Code.Function.Structures.d_from'45'cong_442 (coe v0)))
      (coe
         MAlonzo.Code.Function.Structures.d_cong_32
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0)))
      (coe
         du_inverse'737'_106
         (coe MAlonzo.Code.Function.Structures.d_inverse'691'_444 (coe v0)))
-- Function.Construct.Symmetry._.isRightInverse
d_isRightInverse_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
d_isRightInverse_478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isRightInverse_478 v10
du_isRightInverse_478 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
du_isRightInverse_478 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsRightInverse'46'constructor_19449
      (coe
         du_isCongruent_332
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0))
         (coe MAlonzo.Code.Function.Structures.d_from'45'cong_352 (coe v0)))
      (coe
         MAlonzo.Code.Function.Structures.d_cong_32
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0)))
      (coe
         du_inverse'691'_102
         (coe MAlonzo.Code.Function.Structures.d_inverse'737'_354 (coe v0)))
-- Function.Construct.Symmetry._.isInverse
d_isInverse_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
d_isInverse_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isInverse_556 v10
du_isInverse_556 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
du_isInverse_556 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsInverse'46'constructor_23193
      (coe
         du_isLeftInverse_402
         (coe
            MAlonzo.Code.Function.Structures.du_isRightInverse_598 (coe v0)))
      (coe
         du_inverse'691'_102
         (coe
            MAlonzo.Code.Function.Structures.d_inverse'737'_354
            (coe
               MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0))))
-- Function.Construct.Symmetry._.IB.Eq₁._≈_
d__'8776'__690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__690 = erased
-- Function.Construct.Symmetry._.IB.Eq₂._≈_
d__'8776'__716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__716 = erased
-- Function.Construct.Symmetry._.from
d_from_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 -> AgdaAny -> AgdaAny
d_from_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_from_740 v6 v7
du_from_740 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 -> AgdaAny -> AgdaAny
du_from_740 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe MAlonzo.Code.Function.Bundles.du_surjective_994 v0 v1)
-- Function.Construct.Symmetry._.bijection
d_bijection_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_bijection_742 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_bijection_742 v4 v5 v6 v7
du_bijection_742 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_bijection_742 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15877
      (coe du_from_740 (coe v2)) (coe v3)
      (coe
         du_bijective_72
         (coe MAlonzo.Code.Function.Bundles.d_to_986 (coe v2))
         (coe MAlonzo.Code.Function.Bundles.d_bijective_990 (coe v2))
         (let v4
                = coe
                    MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v5
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v4) in
             coe
               (let v6
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v5) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                        (coe v6))))))
         (let v4
                = coe
                    MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v5
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v4) in
             coe
               (let v6
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v5) in
                coe
                  (let v7
                         = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v7)))))))
         (let v4
                = coe
                    MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v5
                   = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v4) in
             coe
               (let v6
                      = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v5) in
                coe
                  (let v7
                         = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v7)))))))
         (coe MAlonzo.Code.Function.Bundles.d_cong_988 (coe v2)))
-- Function.Construct.Symmetry.bijection-≡
d_bijection'45''8801'_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_bijection'45''8801'_750 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_bijection'45''8801'_750 v3 v5
du_bijection'45''8801'_750 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_bijection'45''8801'_750 v0 v1
  = coe
      du_bijection_742 (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe v1)
      (coe
         (\ v2 v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0)
                      (coe
                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                      (coe v1) in
            coe
              (let v6
                     = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v5) in
               coe
                 (let v7
                        = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v6) in
                  coe
                    (let v8
                           = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v7) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                          (coe du_from_740 (coe v1) (coe v2))))))))
-- Function.Construct.Symmetry._.equivalence
d_equivalence_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_equivalence_852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_equivalence_852 v6
du_equivalence_852 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_equivalence_852 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe MAlonzo.Code.Function.Bundles.d_from_1822 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to_1820 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1826 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1824 (coe v0))
-- Function.Construct.Symmetry._.rightInverse
d_rightInverse_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_rightInverse_930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_rightInverse_930 v6
du_rightInverse_930 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du_rightInverse_930 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_RightInverse'46'constructor_35773
      (coe MAlonzo.Code.Function.Bundles.d_from_1906 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to_1904 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1910 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1908 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_inverse'737'_1912 (coe v0))
-- Function.Construct.Symmetry._.leftInverse
d_leftInverse_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_leftInverse_1016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_leftInverse_1016 v6
du_leftInverse_1016 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du_leftInverse_1016 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_LeftInverse'46'constructor_30891
      (coe MAlonzo.Code.Function.Bundles.d_from_1998 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to_1996 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2002 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2000 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_inverse'691'_2004 (coe v0))
-- Function.Construct.Symmetry._.inverse
d_inverse_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_inverse_1096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_inverse_1096 v6
du_inverse_1096 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_inverse_1096 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_39905
      (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v0))
      (coe
         MAlonzo.Code.Data.Product.Base.du_swap_370
         (coe MAlonzo.Code.Function.Bundles.d_inverse_2088 (coe v0)))
-- Function.Construct.Symmetry.⤖-sym
d_'10518''45'sym_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_'10518''45'sym_1186 ~v0 ~v1 ~v2 ~v3 v4
  = du_'10518''45'sym_1186 v4
du_'10518''45'sym_1186 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_'10518''45'sym_1186 v0
  = coe
      du_bijection_742
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe v0) erased
-- Function.Construct.Symmetry.⇔-sym
d_'8660''45'sym_1190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8660''45'sym_1190 ~v0 ~v1 ~v2 ~v3 = du_'8660''45'sym_1190
du_'8660''45'sym_1190 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8660''45'sym_1190 = coe du_equivalence_852
-- Function.Construct.Symmetry.↩-sym
d_'8617''45'sym_1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_'8617''45'sym_1192 ~v0 ~v1 ~v2 ~v3 = du_'8617''45'sym_1192
du_'8617''45'sym_1192 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du_'8617''45'sym_1192 = coe du_rightInverse_930
-- Function.Construct.Symmetry.↪-sym
d_'8618''45'sym_1194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_'8618''45'sym_1194 ~v0 ~v1 ~v2 ~v3 = du_'8618''45'sym_1194
du_'8618''45'sym_1194 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du_'8618''45'sym_1194 = coe du_leftInverse_1016
-- Function.Construct.Symmetry.↔-sym
d_'8596''45'sym_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'sym_1196 ~v0 ~v1 ~v2 ~v3 = du_'8596''45'sym_1196
du_'8596''45'sym_1196 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'sym_1196 = coe du_inverse_1096
-- Function.Construct.Symmetry.sym-⤖
d_sym'45''10518'_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_sym'45''10518'_1198 v0 v1 v2 v3 v4
  = coe du_'10518''45'sym_1186 v4
-- Function.Construct.Symmetry.sym-⇔
d_sym'45''8660'_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_sym'45''8660'_1200 v0 v1 v2 v3 = coe du_'8660''45'sym_1190
-- Function.Construct.Symmetry.sym-↩
d_sym'45''8617'_1202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_sym'45''8617'_1202 v0 v1 v2 v3 = coe du_'8617''45'sym_1192
-- Function.Construct.Symmetry.sym-↪
d_sym'45''8618'_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_sym'45''8618'_1204 v0 v1 v2 v3 = coe du_'8618''45'sym_1194
-- Function.Construct.Symmetry.sym-↔
d_sym'45''8596'_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_sym'45''8596'_1206 v0 v1 v2 v3 = coe du_'8596''45'sym_1196
