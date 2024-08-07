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

module MAlonzo.Code.Algebra.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Algebra.Morphism.Structures.MagmaMorphisms._._∙_
d__'8729'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__30 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__30 v4
du__'8729'__30 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__30 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__26 (coe v0)
-- Algebra.Morphism.Structures.MagmaMorphisms._._≈_
d__'8776'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__32 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Carrier
d_Carrier_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 -> ()
d_Carrier_36 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Homomorphic₂
d_Homomorphic'8322'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_54 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism
d_IsMagmaHomomorphism_60 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaHomomorphism_60
  = C_IsMagmaHomomorphism'46'constructor_741 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_68 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_68 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_741 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.homo
d_homo_70 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_70 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_741 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism._.cong
d_cong_74 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_74 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism
d_IsMagmaMonomorphism_78 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaMonomorphism_78
  = C_IsMagmaMonomorphism'46'constructor_1873 T_IsMagmaHomomorphism_60
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_86 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_86 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_1873 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.injective
d_injective_88 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_88 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_1873 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.homo
d_homo_92 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_92 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_94 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_94 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.cong
d_cong_96 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_98 v7
du_isRelMonomorphism_98 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_98 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1555
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
      (coe d_injective_88 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism
d_IsMagmaIsomorphism_102 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaIsomorphism_102
  = C_IsMagmaIsomorphism'46'constructor_3307 T_IsMagmaMonomorphism_78
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_110 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_110 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_3307 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.surjective
d_surjective_112 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_112 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_3307 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.homo
d_homo_116 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_116 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.injective
d_injective_118 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_118 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_120 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_120 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_122 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_122 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_124 v7
du_isRelMonomorphism_124 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_124 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.cong
d_cong_126 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_126 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_128 v7
du_isRelIsomorphism_128 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_128 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelIsomorphism'46'constructor_3001
      (coe
         du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0)))
      (coe d_surjective_112 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._._≈_
d__'8776'__148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__148 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.Carrier
d_Carrier_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 -> ()
d_Carrier_152 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.ε
d_ε_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 -> AgdaAny
d_ε_156 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_156 v4
du_ε_156 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 -> AgdaAny
du_ε_156 v0 = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.Homomorphic₀
d_Homomorphic'8320'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_174 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_184 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_186 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_188 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.homo
d_homo_192 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_192 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_194 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_194 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.cong
d_cong_196 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.homo
d_homo_200 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_200 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.injective
d_injective_202 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_202 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_204 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_204 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_206 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_206 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_208 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_208 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_210
du_isRelIsomorphism_210 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_210 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_212 v7
du_isRelMonomorphism_212 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_212 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_214 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_214 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.cong
d_cong_216 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_216 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.homo
d_homo_220 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_220 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.injective
d_injective_222 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_222 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_224 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_224 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_226 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_226 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_228
du_isRelMonomorphism_228 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_228 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.cong
d_cong_230 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism
d_IsMonoidHomomorphism_234 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidHomomorphism_234
  = C_IsMonoidHomomorphism'46'constructor_5517 T_IsMagmaHomomorphism_60
                                               AgdaAny
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_242 ::
  T_IsMonoidHomomorphism_234 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_242 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_5517 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_244 :: T_IsMonoidHomomorphism_234 -> AgdaAny
d_ε'45'homo_244 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_5517 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.homo
d_homo_248 ::
  T_IsMonoidHomomorphism_234 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_248 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_250 ::
  T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_250 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.cong
d_cong_252 ::
  T_IsMonoidHomomorphism_234 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism
d_IsMonoidMonomorphism_256 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidMonomorphism_256
  = C_IsMonoidMonomorphism'46'constructor_6341 T_IsMonoidHomomorphism_234
                                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_264 ::
  T_IsMonoidMonomorphism_256 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_264 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_6341 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.injective
d_injective_266 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_266 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_6341 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.homo
d_homo_270 ::
  T_IsMonoidMonomorphism_256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_270 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_272 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_272 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_274 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_274 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.ε-homo
d_ε'45'homo_276 :: T_IsMonoidMonomorphism_256 -> AgdaAny
d_ε'45'homo_276 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.cong
d_cong_278 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_264 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_280 v7
du_isMagmaMonomorphism_280 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_280 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
      (coe d_injective_266 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_284 v7
du_isRelMonomorphism_284 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_284 v0
  = coe
      du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism
d_IsMonoidIsomorphism_288 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidIsomorphism_288
  = C_IsMonoidIsomorphism'46'constructor_7699 T_IsMonoidMonomorphism_256
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_296 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_296 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_7699 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.surjective
d_surjective_298 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_298 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_7699 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.homo
d_homo_302 ::
  T_IsMonoidIsomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_302 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.injective
d_injective_304 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_304 v0
  = coe d_injective_266 (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_306 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_306 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_308 v7
du_isMagmaMonomorphism_308 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_308 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_310 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_310 v0
  = coe
      d_isMonoidHomomorphism_264
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_312 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_312 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_314 v7
du_isRelMonomorphism_314 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_314 v0
  = let v1 = d_isMonoidMonomorphism_296 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.ε-homo
d_ε'45'homo_316 :: T_IsMonoidIsomorphism_288 -> AgdaAny
d_ε'45'homo_316 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.cong
d_cong_318 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_264
               (coe d_isMonoidMonomorphism_296 (coe v0)))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_320 v7
du_isMagmaIsomorphism_320 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_320 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_isMagmaMonomorphism_280
         (coe d_isMonoidMonomorphism_296 (coe v0)))
      (coe d_surjective_298 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_324 v7
du_isRelIsomorphism_324 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_324 v0
  = coe
      du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._._⁻¹
d__'8315''185'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  AgdaAny -> AgdaAny
d__'8315''185'_342 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8315''185'_342 v4
du__'8315''185'_342 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  AgdaAny -> AgdaAny
du__'8315''185'_342 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_94 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._._≈_
d__'8776'__346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__346 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Carrier
d_Carrier_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 -> ()
d_Carrier_350 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Homomorphic₁
d_Homomorphic'8321'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_380 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_388 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_390 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_392 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.homo
d_homo_396 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_396 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_398 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_398 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.cong
d_cong_400 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_400 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.homo
d_homo_404 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_404 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.injective
d_injective_406 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_406 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_408 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_408 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_410 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_410 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_412 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_412 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_414
du_isRelIsomorphism_414 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_414 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_416 v7
du_isRelMonomorphism_416 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_416 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_418 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_418 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.cong
d_cong_420 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_420 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.homo
d_homo_424 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_424 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.injective
d_injective_426 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_426 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_428 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_428 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_430 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_430 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_432
du_isRelMonomorphism_432 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_432 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.cong
d_cong_434 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_438 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_440 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_442 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.homo
d_homo_446 ::
  T_IsMonoidHomomorphism_234 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_446 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_448 ::
  T_IsMonoidHomomorphism_234 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_448 v0
  = coe d_isMagmaHomomorphism_242 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_450 ::
  T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_450 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_452 :: T_IsMonoidHomomorphism_234 -> AgdaAny
d_ε'45'homo_452 v0 = coe d_ε'45'homo_244 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.cong
d_cong_454 ::
  T_IsMonoidHomomorphism_234 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.homo
d_homo_458 ::
  T_IsMonoidIsomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_458 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.injective
d_injective_460 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_460 v0
  = coe d_injective_266 (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_462 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_462 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_464
du_isMagmaIsomorphism_464 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_464 v0 v1 = coe du_isMagmaIsomorphism_320 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_466 v7
du_isMagmaMonomorphism_466 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_466 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_468 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_468 v0
  = coe
      d_isMonoidHomomorphism_264
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_470 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_470 v0
  = coe d_isMonoidMonomorphism_296 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_472 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_472 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_474 v7
du_isRelIsomorphism_474 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_474 v0
  = coe
      du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_476 v7
du_isRelMonomorphism_476 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_476 v0
  = let v1 = d_isMonoidMonomorphism_296 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.surjective
d_surjective_478 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_478 v0 = coe d_surjective_298 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_480 :: T_IsMonoidIsomorphism_288 -> AgdaAny
d_ε'45'homo_480 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.cong
d_cong_482 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_264
               (coe d_isMonoidMonomorphism_296 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.homo
d_homo_486 ::
  T_IsMonoidMonomorphism_256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_486 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.injective
d_injective_488 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_488 v0 = coe d_injective_266 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_490 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_490 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_492
du_isMagmaMonomorphism_492 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_492 v0 v1
  = coe du_isMagmaMonomorphism_280 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_494 ::
  T_IsMonoidMonomorphism_256 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_494 v0
  = coe d_isMonoidHomomorphism_264 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_496 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_496 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_498 v7
du_isRelMonomorphism_498 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_498 v0
  = coe
      du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_500 :: T_IsMonoidMonomorphism_256 -> AgdaAny
d_ε'45'homo_500 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.cong
d_cong_502 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_502 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_264 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism
d_IsGroupHomomorphism_506 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupHomomorphism_506
  = C_IsGroupHomomorphism'46'constructor_10685 T_IsMonoidHomomorphism_234
                                               (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_514 ::
  T_IsGroupHomomorphism_506 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_514 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_10685 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_516 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_516 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_10685 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.homo
d_homo_520 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_520 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_522 ::
  T_IsGroupHomomorphism_506 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_522 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_524 ::
  T_IsGroupHomomorphism_506 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_524 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.ε-homo
d_ε'45'homo_526 :: T_IsGroupHomomorphism_506 -> AgdaAny
d_ε'45'homo_526 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.cong
d_cong_528 ::
  T_IsGroupHomomorphism_506 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_528 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_514 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism
d_IsGroupMonomorphism_532 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupMonomorphism_532
  = C_IsGroupMonomorphism'46'constructor_11635 T_IsGroupHomomorphism_506
                                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_540 ::
  T_IsGroupMonomorphism_532 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_540 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_11635 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.injective
d_injective_542 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_542 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_11635 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_546 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_546 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_548 ::
  T_IsGroupMonomorphism_532 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_548 v0
  = coe
      d_isMonoidHomomorphism_514 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_550 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_550 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.ε-homo
d_ε'45'homo_552 :: T_IsGroupMonomorphism_532 -> AgdaAny
d_ε'45'homo_552 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_554 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_554 v0
  = coe
      d_'8315''185''45'homo_516 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.homo
d_homo_556 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_556 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.cong
d_cong_558 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe d_isGroupHomomorphism_540 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_560 v7
du_isMonoidMonomorphism_560 ::
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_560 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_6341
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
      (coe d_injective_542 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_564 v7
du_isMagmaMonomorphism_564 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_564 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_isMonoidMonomorphism_560 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_566 v7
du_isRelMonomorphism_566 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_566 v0
  = let v1 = coe du_isMonoidMonomorphism_560 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism
d_IsGroupIsomorphism_570 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupIsomorphism_570
  = C_IsGroupIsomorphism'46'constructor_13169 T_IsGroupMonomorphism_532
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_578 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupMonomorphism_532
d_isGroupMonomorphism_578 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_13169 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.surjective
d_surjective_580 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_580 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_13169 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.injective
d_injective_584 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_584 v0
  = coe d_injective_542 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isGroupHomomorphism
d_isGroupHomomorphism_586 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_586 v0
  = coe
      d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_588 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_588 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_590 v7
du_isMagmaMonomorphism_590 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_590 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_isMonoidMonomorphism_560 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_592 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_592 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_594 v7
du_isMonoidMonomorphism_594 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_594 v0
  = coe
      du_isMonoidMonomorphism_560
      (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_596 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_596 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_598 v7
du_isRelMonomorphism_598 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_598 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_560 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.ε-homo
d_ε'45'homo_600 :: T_IsGroupIsomorphism_570 -> AgdaAny
d_ε'45'homo_600 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.⁻¹-homo
d_'8315''185''45'homo_602 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_602 v0
  = coe
      d_'8315''185''45'homo_516
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.homo
d_homo_604 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_604 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.cong
d_cong_606 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe
                  d_isGroupHomomorphism_540
                  (coe d_isGroupMonomorphism_578 (coe v0))))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_608 v7
du_isMonoidIsomorphism_608 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_608 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_7699
      (coe
         du_isMonoidMonomorphism_560
         (coe d_isGroupMonomorphism_578 (coe v0)))
      (coe d_surjective_580 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_612 v7
du_isMagmaIsomorphism_612 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_612 v0
  = coe
      du_isMagmaIsomorphism_320 (coe du_isMonoidIsomorphism_608 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_614 v7
du_isRelIsomorphism_614 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_614 v0
  = let v1 = coe du_isMonoidIsomorphism_608 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._._*_
d__'42'__632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__632 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__632 v4
du__'42'__632 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__632 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms._._≈_
d__'8776'__636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__636 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Carrier
d_Carrier_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 -> ()
d_Carrier_648 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism
d_IsMonoidHomomorphism_672 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism
d_IsMonoidIsomorphism_674 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism
d_IsMonoidMonomorphism_676 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.homo
d_homo_680 ::
  T_IsMonoidHomomorphism_234 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_680 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_682 ::
  T_IsMonoidHomomorphism_234 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_682 v0
  = coe d_isMagmaHomomorphism_242 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_684 ::
  T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_684 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_686 :: T_IsMonoidHomomorphism_234 -> AgdaAny
d_ε'45'homo_686 v0 = coe d_ε'45'homo_244 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.cong
d_cong_688 ::
  T_IsMonoidHomomorphism_234 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_688 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.homo
d_homo_692 ::
  T_IsMonoidIsomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_692 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.injective
d_injective_694 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_694 v0
  = coe d_injective_266 (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_696 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_696 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_698
du_isMagmaIsomorphism_698 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_698 v0 v1 = coe du_isMagmaIsomorphism_320 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_700 v7
du_isMagmaMonomorphism_700 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_700 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_702 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_702 v0
  = coe
      d_isMonoidHomomorphism_264
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_704 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_704 v0
  = coe d_isMonoidMonomorphism_296 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_706 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_706 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_708 v7
du_isRelIsomorphism_708 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_708 v0
  = coe
      du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_710 v7
du_isRelMonomorphism_710 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_710 v0
  = let v1 = d_isMonoidMonomorphism_296 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.surjective
d_surjective_712 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_712 v0 = coe d_surjective_298 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_714 :: T_IsMonoidIsomorphism_288 -> AgdaAny
d_ε'45'homo_714 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.cong
d_cong_716 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_716 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_264
               (coe d_isMonoidMonomorphism_296 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.homo
d_homo_720 ::
  T_IsMonoidMonomorphism_256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_720 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.injective
d_injective_722 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_722 v0 = coe d_injective_266 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_724 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_724 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_726
du_isMagmaMonomorphism_726 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_726 v0 v1
  = coe du_isMagmaMonomorphism_280 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_728 ::
  T_IsMonoidMonomorphism_256 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_728 v0
  = coe d_isMonoidHomomorphism_264 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_730 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_730 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_732 v7
du_isRelMonomorphism_732 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_732 v0
  = coe
      du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_734 :: T_IsMonoidMonomorphism_256 -> AgdaAny
d_ε'45'homo_734 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.cong
d_cong_736 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_736 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_264 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism
d_IsMagmaHomomorphism_740 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism
d_IsMagmaIsomorphism_742 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism
d_IsMagmaMonomorphism_744 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.homo
d_homo_748 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_748 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_750 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_750 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.cong
d_cong_752 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_752 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.homo
d_homo_756 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_756 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.injective
d_injective_758 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_758 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_760 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_760 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_762 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_762 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_764 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_764 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_766
du_isRelIsomorphism_766 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_766 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_768 v7
du_isRelMonomorphism_768 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_768 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.surjective
d_surjective_770 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_770 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.cong
d_cong_772 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.homo
d_homo_776 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_776 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.injective
d_injective_778 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_778 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_780 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_780 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_782 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_782 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_784
du_isRelMonomorphism_784 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_784 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.cong
d_cong_786 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Homomorphic₂
d_Homomorphic'8322'_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_794 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_800 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringHomomorphism_800
  = C_IsNearSemiringHomomorphism'46'constructor_16083 T_IsMonoidHomomorphism_234
                                                      (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_808 ::
  T_IsNearSemiringHomomorphism_800 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_808 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_16083 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_810 ::
  T_IsNearSemiringHomomorphism_800 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_810 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_16083 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.homo
d_homo_814 ::
  T_IsNearSemiringHomomorphism_800 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_814 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_'43''45'isMonoidHomomorphism_808 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_816 ::
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_816 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.ε-homo
d_ε'45'homo_818 :: T_IsNearSemiringHomomorphism_800 -> AgdaAny
d_ε'45'homo_818 v0
  = coe
      d_ε'45'homo_244 (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_820 ::
  T_IsNearSemiringHomomorphism_800 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_820 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_'43''45'isMonoidHomomorphism_808 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.cong
d_cong_822 ::
  T_IsNearSemiringHomomorphism_800 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_822 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_824 v7
du_'42''45'isMagmaHomomorphism_824 ::
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_824 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_741
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))))
      (coe d_'42''45'homo_810 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_828 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringMonomorphism_828
  = C_IsNearSemiringMonomorphism'46'constructor_17211 T_IsNearSemiringHomomorphism_800
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_836 ::
  T_IsNearSemiringMonomorphism_828 ->
  T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_836 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_17211 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.injective
d_injective_838 ::
  T_IsNearSemiringMonomorphism_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_838 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_17211 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.*-homo
d_'42''45'homo_842 ::
  T_IsNearSemiringMonomorphism_828 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_842 v0
  = coe
      d_'42''45'homo_810 (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_844 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_844 v7
du_'42''45'isMagmaHomomorphism_844 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_844 v0
  = coe
      du_'42''45'isMagmaHomomorphism_824
      (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.homo
d_homo_846 ::
  T_IsNearSemiringMonomorphism_828 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_846 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_836 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_848 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_848 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_850 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_850 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.ε-homo
d_ε'45'homo_852 :: T_IsNearSemiringMonomorphism_828 -> AgdaAny
d_ε'45'homo_852 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_854 ::
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_854 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_836 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.cong
d_cong_856 ::
  T_IsNearSemiringMonomorphism_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_856 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe d_isNearSemiringHomomorphism_836 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_858 v7
du_'43''45'isMonoidMonomorphism_858 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_858 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_6341
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
      (coe d_injective_838 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_862 v7
du_isMagmaMonomorphism_862 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_862 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_'43''45'isMonoidMonomorphism_858 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_864 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_864 v7
du_isRelMonomorphism_864 ::
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_864 v0
  = let v1 = coe du_'43''45'isMonoidMonomorphism_858 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_866 v7
du_'42''45'isMagmaMonomorphism_866 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_866 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
      (coe d_injective_838 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_870 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringIsomorphism_870
  = C_IsNearSemiringIsomorphism'46'constructor_19097 T_IsNearSemiringMonomorphism_828
                                                     (AgdaAny ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_878 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_878 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_19097 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.surjective
d_surjective_880 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_880 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_19097 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-homo
d_'42''45'homo_884 ::
  T_IsNearSemiringIsomorphism_870 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_884 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_836
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_886 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_886 v7
du_'42''45'isMagmaHomomorphism_886 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_886 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_836 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_888 v7
du_'42''45'isMagmaMonomorphism_888 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_888 v0
  = coe
      du_'42''45'isMagmaMonomorphism_866
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.homo
d_homo_890 ::
  T_IsNearSemiringIsomorphism_870 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_890 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_836
               (coe d_isNearSemiringMonomorphism_878 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_892 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_892 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_836
            (coe d_isNearSemiringMonomorphism_878 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_894 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_894 v7
du_isMagmaMonomorphism_894 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_894 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_'43''45'isMonoidMonomorphism_858 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_896 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_896 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_836
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_898 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_898 v7
du_'43''45'isMonoidMonomorphism_898 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_898 v0
  = coe
      du_'43''45'isMonoidMonomorphism_858
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.ε-homo
d_ε'45'homo_900 :: T_IsNearSemiringIsomorphism_870 -> AgdaAny
d_ε'45'homo_900 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_836
            (coe d_isNearSemiringMonomorphism_878 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.injective
d_injective_902 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_902 v0
  = coe
      d_injective_838 (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_904 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_904 v0
  = coe
      d_isNearSemiringHomomorphism_836
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_906 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_906 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_836
               (coe d_isNearSemiringMonomorphism_878 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_908 v7
du_isRelMonomorphism_908 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_908 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isMonoidMonomorphism_858 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.cong
d_cong_910 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_910 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_836
                  (coe d_isNearSemiringMonomorphism_878 (coe v0))))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidIsomorphism_288
d_'43''45'isMonoidIsomorphism_912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_912 v7
du_'43''45'isMonoidIsomorphism_912 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidIsomorphism_288
du_'43''45'isMonoidIsomorphism_912 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_7699
      (coe
         du_'43''45'isMonoidMonomorphism_858
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
      (coe d_surjective_880 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_916 v7
du_isMagmaIsomorphism_916 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_916 v0
  = coe
      du_isMagmaIsomorphism_320
      (coe du_'43''45'isMonoidIsomorphism_912 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_918 v7
du_isRelIsomorphism_918 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_918 v0
  = let v1 = coe du_'43''45'isMonoidIsomorphism_912 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_920 v7
du_'42''45'isMagmaIsomorphism_920 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_920 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_'42''45'isMagmaMonomorphism_866
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
      (coe d_surjective_880 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._._≈_
d__'8776'__942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__942 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms._.1#
d_1'35'_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 -> AgdaAny
d_1'35'_956 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_956 v4
du_1'35'_956 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 -> AgdaAny
du_1'35'_956 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_176 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.Carrier
d_Carrier_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 -> ()
d_Carrier_958 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_990 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_992 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_994 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.homo
d_homo_998 ::
  T_IsMonoidHomomorphism_234 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_998 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1000 ::
  T_IsMonoidHomomorphism_234 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1000 v0
  = coe d_isMagmaHomomorphism_242 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1002 ::
  T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1002 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1004 :: T_IsMonoidHomomorphism_234 -> AgdaAny
d_ε'45'homo_1004 v0 = coe d_ε'45'homo_244 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.cong
d_cong_1006 ::
  T_IsMonoidHomomorphism_234 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1006 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.homo
d_homo_1010 ::
  T_IsMonoidIsomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1010 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.injective
d_injective_1012 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1012 v0
  = coe d_injective_266 (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1014 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1014 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1016
du_isMagmaIsomorphism_1016 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1016 v0 v1 = coe du_isMagmaIsomorphism_320 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1018 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1018 v7
du_isMagmaMonomorphism_1018 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1018 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1020 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1020 v0
  = coe
      d_isMonoidHomomorphism_264
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1022 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1022 v0
  = coe d_isMonoidMonomorphism_296 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1024 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1024 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1026 v7
du_isRelIsomorphism_1026 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1026 v0
  = coe
      du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1028 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1028 v7
du_isRelMonomorphism_1028 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1028 v0
  = let v1 = d_isMonoidMonomorphism_296 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_1030 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1030 v0 = coe d_surjective_298 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1032 :: T_IsMonoidIsomorphism_288 -> AgdaAny
d_ε'45'homo_1032 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.cong
d_cong_1034 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1034 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_264
               (coe d_isMonoidMonomorphism_296 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.homo
d_homo_1038 ::
  T_IsMonoidMonomorphism_256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1038 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.injective
d_injective_1040 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1040 v0 = coe d_injective_266 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1042 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1042 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1044 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1044
du_isMagmaMonomorphism_1044 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1044 v0 v1
  = coe du_isMagmaMonomorphism_280 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1046 ::
  T_IsMonoidMonomorphism_256 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1046 v0
  = coe d_isMonoidHomomorphism_264 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1048 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1048 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1050 v7
du_isRelMonomorphism_1050 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1050 v0
  = coe
      du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1052 :: T_IsMonoidMonomorphism_256 -> AgdaAny
d_ε'45'homo_1052 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.cong
d_cong_1054 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1054 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_264 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.Homomorphic₀
d_Homomorphic'8320'_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_1058 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_1068 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_1070 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_1072 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_1076 ::
  T_IsNearSemiringHomomorphism_800 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1076 v0 = coe d_'42''45'homo_810 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaHomomorphism_1078
du_'42''45'isMagmaHomomorphism_1078 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1078 v0 v1
  = coe du_'42''45'isMagmaHomomorphism_824 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.homo
d_homo_1080 ::
  T_IsNearSemiringHomomorphism_800 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1080 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_'43''45'isMonoidHomomorphism_808 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1082 ::
  T_IsNearSemiringHomomorphism_800 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1082 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1084 ::
  T_IsNearSemiringHomomorphism_800 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1084 v0
  = coe d_'43''45'isMonoidHomomorphism_808 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.ε-homo
d_ε'45'homo_1086 :: T_IsNearSemiringHomomorphism_800 -> AgdaAny
d_ε'45'homo_1086 v0
  = coe
      d_ε'45'homo_244 (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1088 ::
  T_IsNearSemiringHomomorphism_800 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1088 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_'43''45'isMonoidHomomorphism_808 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.cong
d_cong_1090 ::
  T_IsNearSemiringHomomorphism_800 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1090 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_'43''45'isMonoidHomomorphism_808 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-homo
d_'42''45'homo_1094 ::
  T_IsNearSemiringIsomorphism_870 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1094 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_836
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1096 v7
du_'42''45'isMagmaHomomorphism_1096 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1096 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_836 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_1098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaIsomorphism_1098
du_'42''45'isMagmaIsomorphism_1098 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_1098 v0 v1
  = coe du_'42''45'isMagmaIsomorphism_920 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1100 v7
du_'42''45'isMagmaMonomorphism_1100 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1100 v0
  = coe
      du_'42''45'isMagmaMonomorphism_866
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.homo
d_homo_1102 ::
  T_IsNearSemiringIsomorphism_870 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1102 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_836
               (coe d_isNearSemiringMonomorphism_878 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1104 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1104 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_836
            (coe d_isNearSemiringMonomorphism_878 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1106 v7
du_isMagmaIsomorphism_1106 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1106 v0
  = coe
      du_isMagmaIsomorphism_320
      (coe du_'43''45'isMonoidIsomorphism_912 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1108 v7
du_isMagmaMonomorphism_1108 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1108 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_'43''45'isMonoidMonomorphism_858 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1110 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1110 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_836
         (coe d_isNearSemiringMonomorphism_878 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidIsomorphism_288
d_'43''45'isMonoidIsomorphism_1112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidIsomorphism_1112
du_'43''45'isMonoidIsomorphism_1112 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidIsomorphism_288
du_'43''45'isMonoidIsomorphism_1112 v0 v1
  = coe du_'43''45'isMonoidIsomorphism_912 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1114 v7
du_'43''45'isMonoidMonomorphism_1114 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1114 v0
  = coe
      du_'43''45'isMonoidMonomorphism_858
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.ε-homo
d_ε'45'homo_1116 :: T_IsNearSemiringIsomorphism_870 -> AgdaAny
d_ε'45'homo_1116 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_836
            (coe d_isNearSemiringMonomorphism_878 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.injective
d_injective_1118 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1118 v0
  = coe
      d_injective_838 (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1120 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1120 v0
  = coe
      d_isNearSemiringHomomorphism_836
      (coe d_isNearSemiringMonomorphism_878 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1122 ::
  T_IsNearSemiringIsomorphism_870 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_1122 v0
  = coe d_isNearSemiringMonomorphism_878 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1124 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1124 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_836
               (coe d_isNearSemiringMonomorphism_878 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1126 v7
du_isRelIsomorphism_1126 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1126 v0
  = let v1 = coe du_'43''45'isMonoidIsomorphism_912 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1128 v7
du_isRelMonomorphism_1128 ::
  T_IsNearSemiringIsomorphism_870 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1128 v0
  = let v1 = d_isNearSemiringMonomorphism_878 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isMonoidMonomorphism_858 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.surjective
d_surjective_1130 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1130 v0 = coe d_surjective_880 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.cong
d_cong_1132 ::
  T_IsNearSemiringIsomorphism_870 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1132 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_836
                  (coe d_isNearSemiringMonomorphism_878 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-homo
d_'42''45'homo_1136 ::
  T_IsNearSemiringMonomorphism_828 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1136 v0
  = coe
      d_'42''45'homo_810 (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1138 v7
du_'42''45'isMagmaHomomorphism_1138 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1138 v0
  = coe
      du_'42''45'isMagmaHomomorphism_824
      (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaMonomorphism_1140
du_'42''45'isMagmaMonomorphism_1140 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1140 v0 v1
  = coe du_'42''45'isMagmaMonomorphism_866 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.homo
d_homo_1142 ::
  T_IsNearSemiringMonomorphism_828 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1142 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_836 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1144 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1144 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1146 v7
du_isMagmaMonomorphism_1146 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1146 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_'43''45'isMonoidMonomorphism_858 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1148 ::
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1148 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe d_isNearSemiringHomomorphism_836 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidMonomorphism_1150
du_'43''45'isMonoidMonomorphism_1150 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1150 v0 v1
  = coe du_'43''45'isMonoidMonomorphism_858 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.ε-homo
d_ε'45'homo_1152 :: T_IsNearSemiringMonomorphism_828 -> AgdaAny
d_ε'45'homo_1152 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_836 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.injective
d_injective_1154 ::
  T_IsNearSemiringMonomorphism_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1154 v0 = coe d_injective_838 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1156 ::
  T_IsNearSemiringMonomorphism_828 ->
  T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1156 v0
  = coe d_isNearSemiringHomomorphism_836 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1158 ::
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1158 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_836 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1160 v7
du_isRelMonomorphism_1160 ::
  T_IsNearSemiringMonomorphism_828 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1160 v0
  = let v1 = coe du_'43''45'isMonoidMonomorphism_858 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.cong
d_cong_1162 ::
  T_IsNearSemiringMonomorphism_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe d_isNearSemiringHomomorphism_836 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism
d_IsSemiringHomomorphism_1166 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringHomomorphism_1166
  = C_IsSemiringHomomorphism'46'constructor_22649 T_IsNearSemiringHomomorphism_800
                                                  AgdaAny
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1174 ::
  T_IsSemiringHomomorphism_1166 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1174 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_22649 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_1176 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_1'35''45'homo_1176 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_22649 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.*-homo
d_'42''45'homo_1180 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1180 v0
  = coe
      d_'42''45'homo_810 (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1182 v7
du_'42''45'isMagmaHomomorphism_1182 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1182 v0
  = coe
      du_'42''45'isMagmaHomomorphism_824
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.homo
d_homo_1184 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1184 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1186 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1186 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1188 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1188 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.ε-homo
d_ε'45'homo_1190 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_ε'45'homo_1190 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1192 ::
  T_IsSemiringHomomorphism_1166 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1192 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.cong
d_cong_1194 ::
  T_IsSemiringHomomorphism_1166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe d_isNearSemiringHomomorphism_1174 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1196 v7
du_'42''45'isMonoidHomomorphism_1196 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1196 v0
  = coe
      C_IsMonoidHomomorphism'46'constructor_5517
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
      (coe d_1'35''45'homo_1176 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism
d_IsSemiringMonomorphism_1200 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringMonomorphism_1200
  = C_IsSemiringMonomorphism'46'constructor_23957 T_IsSemiringHomomorphism_1166
                                                  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1208 ::
  T_IsSemiringMonomorphism_1200 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_1208 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_23957 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.injective
d_injective_1210 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1210 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_23957 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-homo
d_'42''45'homo_1214 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1214 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1216 v7
du_'42''45'isMagmaHomomorphism_1216 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1216 v0
  = let v1 = d_isSemiringHomomorphism_1208 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1218 v7
du_'42''45'isMonoidHomomorphism_1218 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1218 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1196
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.homo
d_homo_1220 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1220 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1222 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1222 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1224 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1224 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.ε-homo
d_ε'45'homo_1226 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_ε'45'homo_1226 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.1#-homo
d_1'35''45'homo_1228 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_1'35''45'homo_1228 v0
  = coe
      d_1'35''45'homo_1176 (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1230 ::
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1230 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1232 ::
  T_IsSemiringMonomorphism_1200 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1232 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.cong
d_cong_1234 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe d_isSemiringHomomorphism_1208 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_1236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_1236 v7
du_isNearSemiringMonomorphism_1236 ::
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_1236 v0
  = coe
      C_IsNearSemiringMonomorphism'46'constructor_17211
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
      (coe d_injective_1210 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1240 v7
du_'42''45'isMagmaMonomorphism_1240 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1240 v0
  = coe
      du_'42''45'isMagmaMonomorphism_866
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1242 v7
du_'43''45'isMonoidMonomorphism_1242 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1242 v0
  = coe
      du_'43''45'isMonoidMonomorphism_858
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_1244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1244 v7
du_'42''45'isMonoidMonomorphism_1244 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_1244 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_6341
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
      (coe d_injective_1210 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism
d_IsSemiringIsomorphism_1248 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringIsomorphism_1248
  = C_IsSemiringIsomorphism'46'constructor_26015 T_IsSemiringMonomorphism_1200
                                                 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_1256 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_1256 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_26015 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.surjective
d_surjective_1258 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1258 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_26015 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-homo
d_'42''45'homo_1262 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1262 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1264 v7
du_'42''45'isMagmaHomomorphism_1264 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1264 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1208 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_824
            (coe d_isNearSemiringHomomorphism_1174 (coe v2))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1266 v7
du_'42''45'isMagmaMonomorphism_1266 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1266 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_866
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1268 v7
du_'42''45'isMonoidHomomorphism_1268 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1268 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_1208 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_1270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1270 v7
du_'42''45'isMonoidMonomorphism_1270 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_1270 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1244
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.homo
d_homo_1272 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1272 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1274 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1274 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1276 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1276 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1278 v7
du_'43''45'isMonoidMonomorphism_1278 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1278 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_858
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.ε-homo
d_ε'45'homo_1280 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_ε'45'homo_1280 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.1#-homo
d_1'35''45'homo_1282 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_1'35''45'homo_1282 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.injective
d_injective_1284 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1284 v0
  = coe d_injective_1210 (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1286 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1286 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_1288 v7
du_isNearSemiringMonomorphism_1288 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_1288 v0
  = coe
      du_isNearSemiringMonomorphism_1236
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1290 ::
  T_IsSemiringIsomorphism_1248 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1290 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_1292 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_1292 v0
  = coe
      d_isSemiringHomomorphism_1208
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.cong
d_cong_1294 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1294 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_1208
                     (coe d_isSemiringMonomorphism_1256 (coe v0)))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
d_isNearSemiringIsomorphism_1296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringIsomorphism_1296 v7
du_isNearSemiringIsomorphism_1296 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
du_isNearSemiringIsomorphism_1296 v0
  = coe
      C_IsNearSemiringIsomorphism'46'constructor_19097
      (coe
         du_isNearSemiringMonomorphism_1236
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
      (coe d_surjective_1258 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1300 v7
du_'42''45'isMagmaIsomorphism_1300 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_1300 v0
  = coe
      du_'42''45'isMagmaIsomorphism_920
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'43''45'isMonoidIsomorphism_1302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_1302 v7
du_'43''45'isMonoidIsomorphism_1302 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'43''45'isMonoidIsomorphism_1302 v0
  = coe
      du_'43''45'isMonoidIsomorphism_912
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_1304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'42''45'isMonoidIsomorphism_1304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_1304 v7
du_'42''45'isMonoidIsomorphism_1304 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'42''45'isMonoidIsomorphism_1304 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_7699
      (coe
         du_'42''45'isMonoidMonomorphism_1244
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
      (coe d_surjective_1258 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._._*_
d__'42'__1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1322 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__1322 v4
du__'42'__1322 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__1322 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__220 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._._≈_
d__'8776'__1326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1326 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._.Carrier
d_Carrier_1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 -> ()
d_Carrier_1342 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism
d_IsGroupHomomorphism_1370 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism
d_IsGroupIsomorphism_1372 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism
d_IsGroupMonomorphism_1374 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.homo
d_homo_1378 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1378 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1380 ::
  T_IsGroupHomomorphism_506 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1380 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1382 ::
  T_IsGroupHomomorphism_506 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1382 v0
  = coe d_isMonoidHomomorphism_514 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1384 ::
  T_IsGroupHomomorphism_506 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1384 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.ε-homo
d_ε'45'homo_1386 :: T_IsGroupHomomorphism_506 -> AgdaAny
d_ε'45'homo_1386 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_1388 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1388 v0
  = coe d_'8315''185''45'homo_516 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.cong
d_cong_1390 ::
  T_IsGroupHomomorphism_506 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_514 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.injective
d_injective_1394 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1394 v0
  = coe d_injective_542 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1396 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_1396 v0
  = coe
      d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_1398 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupMonomorphism_532
d_isGroupMonomorphism_1398 v0
  = coe d_isGroupMonomorphism_578 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1400 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1400 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1402 v7
du_isMagmaIsomorphism_1402 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1402 v0
  = coe
      du_isMagmaIsomorphism_320 (coe du_isMonoidIsomorphism_608 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1404 v7
du_isMagmaMonomorphism_1404 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1404 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_isMonoidMonomorphism_560 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1406 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1406 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_1408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_1408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidIsomorphism_1408
du_isMonoidIsomorphism_1408 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_1408 v0 v1
  = coe du_isMonoidIsomorphism_608 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1410 v7
du_isMonoidMonomorphism_1410 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1410 v0
  = coe
      du_isMonoidMonomorphism_560
      (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1412 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1412 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1414 v7
du_isRelIsomorphism_1414 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1414 v0
  = let v1 = coe du_isMonoidIsomorphism_608 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1416 v7
du_isRelMonomorphism_1416 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1416 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_560 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.surjective
d_surjective_1418 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1418 v0 = coe d_surjective_580 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.ε-homo
d_ε'45'homo_1420 :: T_IsGroupIsomorphism_570 -> AgdaAny
d_ε'45'homo_1420 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.⁻¹-homo
d_'8315''185''45'homo_1422 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1422 v0
  = coe
      d_'8315''185''45'homo_516
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.homo
d_homo_1424 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1424 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.cong
d_cong_1426 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe
                  d_isGroupHomomorphism_540
                  (coe d_isGroupMonomorphism_578 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.injective
d_injective_1430 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1430 v0 = coe d_injective_542 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1432 ::
  T_IsGroupMonomorphism_532 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_1432 v0
  = coe d_isGroupHomomorphism_540 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1434 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1434 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1436 v7
du_isMagmaMonomorphism_1436 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1436 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_isMonoidMonomorphism_560 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1438 ::
  T_IsGroupMonomorphism_532 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1438 v0
  = coe
      d_isMonoidHomomorphism_514 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidMonomorphism_1440
du_isMonoidMonomorphism_1440 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1440 v0 v1
  = coe du_isMonoidMonomorphism_560 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1442 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1442 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1444 v7
du_isRelMonomorphism_1444 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1444 v0
  = let v1 = coe du_isMonoidMonomorphism_560 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.ε-homo
d_ε'45'homo_1446 :: T_IsGroupMonomorphism_532 -> AgdaAny
d_ε'45'homo_1446 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.⁻¹-homo
d_'8315''185''45'homo_1448 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1448 v0
  = coe
      d_'8315''185''45'homo_516 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.homo
d_homo_1450 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1450 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.cong
d_cong_1452 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1452 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe d_isGroupHomomorphism_540 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism
d_IsMagmaHomomorphism_1456 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism
d_IsMagmaIsomorphism_1458 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism
d_IsMagmaMonomorphism_1460 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.homo
d_homo_1464 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1464 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1466 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1466 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.cong
d_cong_1468 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.homo
d_homo_1472 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1472 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.injective
d_injective_1474 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1474 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1476 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1476 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1478 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1478 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1480 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1480 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1482 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_1482
du_isRelIsomorphism_1482 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1482 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1484 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1484 v7
du_isRelMonomorphism_1484 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1484 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.surjective
d_surjective_1486 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1486 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.cong
d_cong_1488 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.homo
d_homo_1492 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1492 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.injective
d_injective_1494 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1494 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1496 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1496 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1498 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1498 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_1500
du_isRelMonomorphism_1500 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1500 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.cong
d_cong_1502 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1502 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._.Homomorphic₂
d_Homomorphic'8322'_1510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_1510 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_1516 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneHomomorphism_1516
  = C_IsRingWithoutOneHomomorphism'46'constructor_29515 T_IsGroupHomomorphism_506
                                                        (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1524 ::
  T_IsRingWithoutOneHomomorphism_1516 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_1524 v0
  = case coe v0 of
      C_IsRingWithoutOneHomomorphism'46'constructor_29515 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_1526 ::
  T_IsRingWithoutOneHomomorphism_1516 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1526 v0
  = case coe v0 of
      C_IsRingWithoutOneHomomorphism'46'constructor_29515 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.homo
d_homo_1530 ::
  T_IsRingWithoutOneHomomorphism_1516 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_1530 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_'43''45'isGroupHomomorphism_1524 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1532 ::
  T_IsRingWithoutOneHomomorphism_1516 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1532 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe d_'43''45'isGroupHomomorphism_1524 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.ε-homo
d_ε'45'homo_1534 :: T_IsRingWithoutOneHomomorphism_1516 -> AgdaAny
d_ε'45'homo_1534 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe d_'43''45'isGroupHomomorphism_1524 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1536 ::
  T_IsRingWithoutOneHomomorphism_1516 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1536 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe d_'43''45'isGroupHomomorphism_1524 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1538 ::
  T_IsRingWithoutOneHomomorphism_1516 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1538 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_'43''45'isGroupHomomorphism_1524 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_1540 ::
  T_IsRingWithoutOneHomomorphism_1516 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1540 v0
  = coe
      d_'8315''185''45'homo_516
      (coe d_'43''45'isGroupHomomorphism_1524 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.cong
d_cong_1542 ::
  T_IsRingWithoutOneHomomorphism_1516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe d_'43''45'isGroupHomomorphism_1524 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1516 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1544 v7
du_'42''45'isMagmaHomomorphism_1544 ::
  T_IsRingWithoutOneHomomorphism_1516 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1544 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_741
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe d_'43''45'isGroupHomomorphism_1524 (coe v0)))))
      (coe d_'42''45'homo_1526 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_1548 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneMonomorphism_1548
  = C_IsRingWithoutOneMonomorphism'46'constructor_30771 T_IsRingWithoutOneHomomorphism_1516
                                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1556 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  T_IsRingWithoutOneHomomorphism_1516
d_isRingWithoutOneHomomorphism_1556 v0
  = case coe v0 of
      C_IsRingWithoutOneMonomorphism'46'constructor_30771 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.injective
d_injective_1558 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1558 v0
  = case coe v0 of
      C_IsRingWithoutOneMonomorphism'46'constructor_30771 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.*-homo
d_'42''45'homo_1562 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1562 v0
  = coe
      d_'42''45'homo_1526
      (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1564 v7
du_'42''45'isMagmaHomomorphism_1564 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1564 v0
  = coe
      du_'42''45'isMagmaHomomorphism_1544
      (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.homo
d_homo_1566 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_1566 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_'43''45'isGroupHomomorphism_1524
               (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1568 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_1568 v0
  = coe
      d_'43''45'isGroupHomomorphism_1524
      (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1570 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1570 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_'43''45'isGroupHomomorphism_1524
            (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.ε-homo
d_ε'45'homo_1572 :: T_IsRingWithoutOneMonomorphism_1548 -> AgdaAny
d_ε'45'homo_1572 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_'43''45'isGroupHomomorphism_1524
            (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1574 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1574 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe
         d_'43''45'isGroupHomomorphism_1524
         (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1576 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1576 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_'43''45'isGroupHomomorphism_1524
               (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_1578 ::
  T_IsRingWithoutOneMonomorphism_1548 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1578 v0
  = coe
      d_'8315''185''45'homo_516
      (coe
         d_'43''45'isGroupHomomorphism_1524
         (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.cong
d_cong_1580 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1580 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe
                  d_'43''45'isGroupHomomorphism_1524
                  (coe d_isRingWithoutOneHomomorphism_1556 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsGroupMonomorphism_532
d_'43''45'isGroupMonomorphism_1582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1582 v7
du_'43''45'isGroupMonomorphism_1582 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsGroupMonomorphism_532
du_'43''45'isGroupMonomorphism_1582 v0
  = coe
      C_IsGroupMonomorphism'46'constructor_11635
      (coe
         d_'43''45'isGroupHomomorphism_1524
         (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))
      (coe d_injective_1558 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1586 v7
du_isMagmaMonomorphism_1586 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1586 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1582 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_isMonoidMonomorphism_560 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_1588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1588 v7
du_isMonoidMonomorphism_1588 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1588 v0
  = coe
      du_isMonoidMonomorphism_560
      (coe du_'43''45'isGroupMonomorphism_1582 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_1590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1590 v7
du_isRelMonomorphism_1590 ::
  T_IsRingWithoutOneMonomorphism_1548 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1590 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1582 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_560 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1592 v7
du_'42''45'isMagmaMonomorphism_1592 ::
  T_IsRingWithoutOneMonomorphism_1548 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1592 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         du_'42''45'isMagmaHomomorphism_1544
         (coe d_isRingWithoutOneHomomorphism_1556 (coe v0)))
      (coe d_injective_1558 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_1596 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneIsoMorphism_1596
  = C_IsRingWithoutOneIsoMorphism'46'constructor_32833 T_IsRingWithoutOneMonomorphism_1548
                                                       (AgdaAny ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_1604 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  T_IsRingWithoutOneMonomorphism_1548
d_isRingWithoutOneMonomorphism_1604 v0
  = case coe v0 of
      C_IsRingWithoutOneIsoMorphism'46'constructor_32833 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.surjective
d_surjective_1606 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1606 v0
  = case coe v0 of
      C_IsRingWithoutOneIsoMorphism'46'constructor_32833 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-homo
d_'42''45'homo_1610 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1610 v0
  = coe
      d_'42''45'homo_1526
      (coe
         d_isRingWithoutOneHomomorphism_1556
         (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1612 v7
du_'42''45'isMagmaHomomorphism_1612 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1612 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1604 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_1544
         (coe d_isRingWithoutOneHomomorphism_1556 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1614 v7
du_'42''45'isMagmaMonomorphism_1614 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1614 v0
  = coe
      du_'42''45'isMagmaMonomorphism_1592
      (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.homo
d_homo_1616 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1616 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_'43''45'isGroupHomomorphism_1524
               (coe
                  d_isRingWithoutOneHomomorphism_1556
                  (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1618 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_1618 v0
  = coe
      d_'43''45'isGroupHomomorphism_1524
      (coe
         d_isRingWithoutOneHomomorphism_1556
         (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsGroupMonomorphism_532
d_'43''45'isGroupMonomorphism_1620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1620 v7
du_'43''45'isGroupMonomorphism_1620 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsGroupMonomorphism_532
du_'43''45'isGroupMonomorphism_1620 v0
  = coe
      du_'43''45'isGroupMonomorphism_1582
      (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1622 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1622 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_'43''45'isGroupHomomorphism_1524
            (coe
               d_isRingWithoutOneHomomorphism_1556
               (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1624 v7
du_isMagmaMonomorphism_1624 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1624 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1604 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1582 (coe v1) in
       coe
         (coe
            du_isMagmaMonomorphism_280
            (coe du_isMonoidMonomorphism_560 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_1626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1626 v7
du_isMonoidMonomorphism_1626 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1626 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1604 (coe v0) in
    coe
      (coe
         du_isMonoidMonomorphism_560
         (coe du_'43''45'isGroupMonomorphism_1582 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.ε-homo
d_ε'45'homo_1628 :: T_IsRingWithoutOneIsoMorphism_1596 -> AgdaAny
d_ε'45'homo_1628 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_'43''45'isGroupHomomorphism_1524
            (coe
               d_isRingWithoutOneHomomorphism_1556
               (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.injective
d_injective_1630 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1630 v0
  = coe
      d_injective_1558 (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1632 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1632 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe
         d_'43''45'isGroupHomomorphism_1524
         (coe
            d_isRingWithoutOneHomomorphism_1556
            (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelHomomorphism
d_isRelHomomorphism_1634 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1634 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_'43''45'isGroupHomomorphism_1524
               (coe
                  d_isRingWithoutOneHomomorphism_1556
                  (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelMonomorphism
d_isRelMonomorphism_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1636 v7
du_isRelMonomorphism_1636 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1636 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1604 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1582 (coe v1) in
       coe
         (let v3 = coe du_isMonoidMonomorphism_560 (coe v2) in
          coe
            (coe
               du_isRelMonomorphism_98
               (coe du_isMagmaMonomorphism_280 (coe v3)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1638 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  T_IsRingWithoutOneHomomorphism_1516
d_isRingWithoutOneHomomorphism_1638 v0
  = coe
      d_isRingWithoutOneHomomorphism_1556
      (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.⁻¹-homo
d_'8315''185''45'homo_1640 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1640 v0
  = coe
      d_'8315''185''45'homo_516
      (coe
         d_'43''45'isGroupHomomorphism_1524
         (coe
            d_isRingWithoutOneHomomorphism_1556
            (coe d_isRingWithoutOneMonomorphism_1604 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.cong
d_cong_1642 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe
                  d_'43''45'isGroupHomomorphism_1524
                  (coe
                     d_isRingWithoutOneHomomorphism_1556
                     (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_1644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsGroupIsomorphism_570
d_'43''45'isGroupIsomorphism_1644 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupIsomorphism_1644 v7
du_'43''45'isGroupIsomorphism_1644 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsGroupIsomorphism_570
du_'43''45'isGroupIsomorphism_1644 v0
  = coe
      C_IsGroupIsomorphism'46'constructor_13169
      (coe
         du_'43''45'isGroupMonomorphism_1582
         (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))
      (coe d_surjective_1606 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_1648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1648 v7
du_isMagmaIsomorphism_1648 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1648 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1644 (coe v0) in
    coe
      (coe
         du_isMagmaIsomorphism_320
         (coe du_isMonoidIsomorphism_608 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidIsomorphism
d_isMonoidIsomorphism_1650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_1650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_1650 v7
du_isMonoidIsomorphism_1650 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_1650 v0
  = coe
      du_isMonoidIsomorphism_608
      (coe du_'43''45'isGroupIsomorphism_1644 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelIsomorphism
d_isRelIsomorphism_1652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1652 v7
du_isRelIsomorphism_1652 ::
  T_IsRingWithoutOneIsoMorphism_1596 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1652 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1644 (coe v0) in
    coe
      (let v2 = coe du_isMonoidIsomorphism_608 (coe v1) in
       coe
         (coe
            du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_1654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1654 v7
du_'42''45'isMagmaIsomorphism_1654 ::
  T_IsRingWithoutOneIsoMorphism_1596 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_1654 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_'42''45'isMagmaMonomorphism_1592
         (coe d_isRingWithoutOneMonomorphism_1604 (coe v0)))
      (coe d_surjective_1606 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._._≈_
d__'8776'__1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1676 = erased
-- Algebra.Morphism.Structures.RingMorphisms._.-_
d_'45'__1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny
d_'45'__1690 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__1690 v4
du_'45'__1690 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny
du_'45'__1690 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.Carrier
d_Carrier_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 -> ()
d_Carrier_1696 = erased
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism
d_IsGroupHomomorphism_1736 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism
d_IsGroupIsomorphism_1738 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism
d_IsGroupMonomorphism_1740 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.homo
d_homo_1744 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1744 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1746 ::
  T_IsGroupHomomorphism_506 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1746 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1748 ::
  T_IsGroupHomomorphism_506 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1748 v0
  = coe d_isMonoidHomomorphism_514 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1750 ::
  T_IsGroupHomomorphism_506 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1750 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_514 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.ε-homo
d_ε'45'homo_1752 :: T_IsGroupHomomorphism_506 -> AgdaAny
d_ε'45'homo_1752 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_514 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_1754 ::
  T_IsGroupHomomorphism_506 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1754 v0
  = coe d_'8315''185''45'homo_516 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.cong
d_cong_1756 ::
  T_IsGroupHomomorphism_506 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_514 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.injective
d_injective_1760 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1760 v0
  = coe d_injective_542 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1762 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_1762 v0
  = coe
      d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_1764 ::
  T_IsGroupIsomorphism_570 -> T_IsGroupMonomorphism_532
d_isGroupMonomorphism_1764 v0
  = coe d_isGroupMonomorphism_578 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1766 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1766 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1768 v7
du_isMagmaIsomorphism_1768 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1768 v0
  = coe
      du_isMagmaIsomorphism_320 (coe du_isMonoidIsomorphism_608 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1770 v7
du_isMagmaMonomorphism_1770 ::
  T_IsGroupIsomorphism_570 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1770 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_isMonoidMonomorphism_560 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1772 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1772 v0
  = coe
      d_isMonoidHomomorphism_514
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_1774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_1774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidIsomorphism_1774
du_isMonoidIsomorphism_1774 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_1774 v0 v1
  = coe du_isMonoidIsomorphism_608 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1776 v7
du_isMonoidMonomorphism_1776 ::
  T_IsGroupIsomorphism_570 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1776 v0
  = coe
      du_isMonoidMonomorphism_560
      (coe d_isGroupMonomorphism_578 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1778 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1778 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1780 v7
du_isRelIsomorphism_1780 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1780 v0
  = let v1 = coe du_isMonoidIsomorphism_608 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1782 v7
du_isRelMonomorphism_1782 ::
  T_IsGroupIsomorphism_570 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1782 v0
  = let v1 = d_isGroupMonomorphism_578 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_560 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.surjective
d_surjective_1784 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1784 v0 = coe d_surjective_580 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.ε-homo
d_ε'45'homo_1786 :: T_IsGroupIsomorphism_570 -> AgdaAny
d_ε'45'homo_1786 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe
            d_isGroupHomomorphism_540
            (coe d_isGroupMonomorphism_578 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.⁻¹-homo
d_'8315''185''45'homo_1788 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1788 v0
  = coe
      d_'8315''185''45'homo_516
      (coe
         d_isGroupHomomorphism_540 (coe d_isGroupMonomorphism_578 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.homo
d_homo_1790 ::
  T_IsGroupIsomorphism_570 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1790 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe
               d_isGroupHomomorphism_540
               (coe d_isGroupMonomorphism_578 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.cong
d_cong_1792 ::
  T_IsGroupIsomorphism_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1792 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe
                  d_isGroupHomomorphism_540
                  (coe d_isGroupMonomorphism_578 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.injective
d_injective_1796 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1796 v0 = coe d_injective_542 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1798 ::
  T_IsGroupMonomorphism_532 -> T_IsGroupHomomorphism_506
d_isGroupHomomorphism_1798 v0
  = coe d_isGroupHomomorphism_540 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1800 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1800 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1802 v7
du_isMagmaMonomorphism_1802 ::
  T_IsGroupMonomorphism_532 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1802 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_isMonoidMonomorphism_560 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1804 ::
  T_IsGroupMonomorphism_532 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1804 v0
  = coe
      d_isMonoidHomomorphism_514 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidMonomorphism_1806
du_isMonoidMonomorphism_1806 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_1806 v0 v1
  = coe du_isMonoidMonomorphism_560 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1808 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1808 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1810 v7
du_isRelMonomorphism_1810 ::
  T_IsGroupMonomorphism_532 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1810 v0
  = let v1 = coe du_isMonoidMonomorphism_560 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.ε-homo
d_ε'45'homo_1812 :: T_IsGroupMonomorphism_532 -> AgdaAny
d_ε'45'homo_1812 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_514
         (coe d_isGroupHomomorphism_540 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.⁻¹-homo
d_'8315''185''45'homo_1814 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1814 v0
  = coe
      d_'8315''185''45'homo_516 (coe d_isGroupHomomorphism_540 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.homo
d_homo_1816 ::
  T_IsGroupMonomorphism_532 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1816 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_514
            (coe d_isGroupHomomorphism_540 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.cong
d_cong_1818 ::
  T_IsGroupMonomorphism_532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1818 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_514
               (coe d_isGroupHomomorphism_540 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1822 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1824 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1826 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.homo
d_homo_1830 ::
  T_IsMonoidHomomorphism_234 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1830 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1832 ::
  T_IsMonoidHomomorphism_234 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1832 v0
  = coe d_isMagmaHomomorphism_242 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1834 ::
  T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1834 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1836 :: T_IsMonoidHomomorphism_234 -> AgdaAny
d_ε'45'homo_1836 v0 = coe d_ε'45'homo_244 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.cong
d_cong_1838 ::
  T_IsMonoidHomomorphism_234 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1838 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_242 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.homo
d_homo_1842 ::
  T_IsMonoidIsomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1842 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.injective
d_injective_1844 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1844 v0
  = coe d_injective_266 (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1846 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1846 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1848
du_isMagmaIsomorphism_1848 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1848 v0 v1 = coe du_isMagmaIsomorphism_320 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1850 v7
du_isMagmaMonomorphism_1850 ::
  T_IsMonoidIsomorphism_288 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1850 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1852 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1852 v0
  = coe
      d_isMonoidHomomorphism_264
      (coe d_isMonoidMonomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1854 ::
  T_IsMonoidIsomorphism_288 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1854 v0
  = coe d_isMonoidMonomorphism_296 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1856 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1856 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_isMonoidHomomorphism_264
            (coe d_isMonoidMonomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1858 v7
du_isRelIsomorphism_1858 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1858 v0
  = coe
      du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1860 v7
du_isRelMonomorphism_1860 ::
  T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1860 v0
  = let v1 = d_isMonoidMonomorphism_296 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_1862 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1862 v0 = coe d_surjective_298 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1864 :: T_IsMonoidIsomorphism_288 -> AgdaAny
d_ε'45'homo_1864 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_isMonoidHomomorphism_264
         (coe d_isMonoidMonomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.cong
d_cong_1866 ::
  T_IsMonoidIsomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_isMonoidHomomorphism_264
               (coe d_isMonoidMonomorphism_296 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.homo
d_homo_1870 ::
  T_IsMonoidMonomorphism_256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1870 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.injective
d_injective_1872 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1872 v0 = coe d_injective_266 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1874 ::
  T_IsMonoidMonomorphism_256 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1874 v0
  = coe
      d_isMagmaHomomorphism_242 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1876
du_isMagmaMonomorphism_1876 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1876 v0 v1
  = coe du_isMagmaMonomorphism_280 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1878 ::
  T_IsMonoidMonomorphism_256 -> T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1878 v0
  = coe d_isMonoidHomomorphism_264 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1880 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1880 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe d_isMonoidHomomorphism_264 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1882 v7
du_isRelMonomorphism_1882 ::
  T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1882 v0
  = coe
      du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1884 :: T_IsMonoidMonomorphism_256 -> AgdaAny
d_ε'45'homo_1884 v0
  = coe d_ε'45'homo_244 (coe d_isMonoidHomomorphism_264 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.cong
d_cong_1886 ::
  T_IsMonoidMonomorphism_256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1886 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe d_isMonoidHomomorphism_264 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.Homomorphic₁
d_Homomorphic'8321'_1892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_1892 = erased
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_1900 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_1902 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_1904 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-homo
d_'42''45'homo_1908 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1908 v0
  = coe
      d_'42''45'homo_810 (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1910 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1910 v7
du_'42''45'isMagmaHomomorphism_1910 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1910 v0
  = coe
      du_'42''45'isMagmaHomomorphism_824
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidHomomorphism_1912
du_'42''45'isMonoidHomomorphism_1912 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1912 v0 v1
  = coe du_'42''45'isMonoidHomomorphism_1196 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.homo
d_homo_1914 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1914 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1916 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1916 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1918 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1918 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.ε-homo
d_ε'45'homo_1920 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_ε'45'homo_1920 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_1922 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_1'35''45'homo_1922 v0 = coe d_1'35''45'homo_1176 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1924 ::
  T_IsSemiringHomomorphism_1166 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1924 v0
  = coe d_isNearSemiringHomomorphism_1174 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1926 ::
  T_IsSemiringHomomorphism_1166 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1926 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.cong
d_cong_1928 ::
  T_IsSemiringHomomorphism_1166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1928 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe d_isNearSemiringHomomorphism_1174 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-homo
d_'42''45'homo_1932 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1932 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1934 v7
du_'42''45'isMagmaHomomorphism_1934 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1934 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1208 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_824
            (coe d_isNearSemiringHomomorphism_1174 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_1936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1936 v7
du_'42''45'isMagmaIsomorphism_1936 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_1936 v0
  = coe
      du_'42''45'isMagmaIsomorphism_920
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1938 v7
du_'42''45'isMagmaMonomorphism_1938 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1938 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_866
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1940 v7
du_'42''45'isMonoidHomomorphism_1940 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1940 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_1208 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'42''45'isMonoidIsomorphism_1942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidIsomorphism_1942
du_'42''45'isMonoidIsomorphism_1942 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'42''45'isMonoidIsomorphism_1942 v0 v1
  = coe du_'42''45'isMonoidIsomorphism_1304 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_1944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1944 v7
du_'42''45'isMonoidMonomorphism_1944 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_1944 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1244
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.homo
d_homo_1946 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1946 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1948 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1948 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1950 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1950 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'43''45'isMonoidIsomorphism_1952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_1952 v7
du_'43''45'isMonoidIsomorphism_1952 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'43''45'isMonoidIsomorphism_1952 v0
  = coe
      du_'43''45'isMonoidIsomorphism_912
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1954 v7
du_'43''45'isMonoidMonomorphism_1954 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1954 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_858
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.ε-homo
d_ε'45'homo_1956 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_ε'45'homo_1956 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.1#-homo
d_1'35''45'homo_1958 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_1'35''45'homo_1958 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.injective
d_injective_1960 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1960 v0
  = coe d_injective_1210 (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1962 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_1962 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
d_isNearSemiringIsomorphism_1964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringIsomorphism_1964
du_isNearSemiringIsomorphism_1964 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
du_isNearSemiringIsomorphism_1964 v0 v1
  = coe du_isNearSemiringIsomorphism_1296 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_1966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_1966 v7
du_isNearSemiringMonomorphism_1966 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_1966 v0
  = coe
      du_isNearSemiringMonomorphism_1236
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1968 ::
  T_IsSemiringIsomorphism_1248 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1968 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1970 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_1970 v0
  = coe
      d_isSemiringHomomorphism_1208
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_1972 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_1972 v0
  = coe d_isSemiringMonomorphism_1256 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.surjective
d_surjective_1974 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1974 v0 = coe d_surjective_1258 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.cong
d_cong_1976 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_1208
                     (coe d_isSemiringMonomorphism_1256 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-homo
d_'42''45'homo_1980 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1980 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_1982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1982 v7
du_'42''45'isMagmaHomomorphism_1982 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_1982 v0
  = let v1 = d_isSemiringHomomorphism_1208 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_1984 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1984 v7
du_'42''45'isMagmaMonomorphism_1984 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_1984 v0
  = coe
      du_'42''45'isMagmaMonomorphism_866
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_1986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1986 v7
du_'42''45'isMonoidHomomorphism_1986 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_1986 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1196
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_1988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidMonomorphism_1988
du_'42''45'isMonoidMonomorphism_1988 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_1988 v0 v1
  = coe du_'42''45'isMonoidMonomorphism_1244 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.homo
d_homo_1990 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1990 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1992 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1992 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1994 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_1994 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_1996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1996 v7
du_'43''45'isMonoidMonomorphism_1996 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_1996 v0
  = coe
      du_'43''45'isMonoidMonomorphism_858
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.ε-homo
d_ε'45'homo_1998 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_ε'45'homo_1998 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.1#-homo
d_1'35''45'homo_2000 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_1'35''45'homo_2000 v0
  = coe
      d_1'35''45'homo_1176 (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.injective
d_injective_2002 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2002 v0 = coe d_injective_1210 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2004 ::
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_2004 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_2006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_2006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringMonomorphism_2006
du_isNearSemiringMonomorphism_2006 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_2006 v0 v1
  = coe du_isNearSemiringMonomorphism_1236 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2008 ::
  T_IsSemiringMonomorphism_1200 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2008 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_2010 ::
  T_IsSemiringMonomorphism_1200 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_2010 v0
  = coe d_isSemiringHomomorphism_1208 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.cong
d_cong_2012 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2012 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe d_isSemiringHomomorphism_1208 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism
d_IsRingHomomorphism_2016 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingHomomorphism_2016
  = C_IsRingHomomorphism'46'constructor_37523 T_IsSemiringHomomorphism_1166
                                              (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_2024 ::
  T_IsRingHomomorphism_2016 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_2024 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_37523 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.-‿homo
d_'45''8255'homo_2026 ::
  T_IsRingHomomorphism_2016 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2026 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_37523 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-homo
d_'42''45'homo_2030 ::
  T_IsRingHomomorphism_2016 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2030 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_2024 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2016 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_2032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2032 v7
du_'42''45'isMagmaHomomorphism_2032 ::
  T_IsRingHomomorphism_2016 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_2032 v0
  = let v1 = d_isSemiringHomomorphism_2024 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2016 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_2034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2034 v7
du_'42''45'isMonoidHomomorphism_2034 ::
  T_IsRingHomomorphism_2016 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_2034 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1196
      (coe d_isSemiringHomomorphism_2024 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo
d_homo_2036 ::
  T_IsRingHomomorphism_2016 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2036 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_2024 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2038 ::
  T_IsRingHomomorphism_2016 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2038 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_2024 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2040 ::
  T_IsRingHomomorphism_2016 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_2040 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_2024 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo
d_ε'45'homo_2042 :: T_IsRingHomomorphism_2016 -> AgdaAny
d_ε'45'homo_2042 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_2024 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.1#-homo
d_1'35''45'homo_2044 :: T_IsRingHomomorphism_2016 -> AgdaAny
d_1'35''45'homo_2044 v0
  = coe
      d_1'35''45'homo_1176 (coe d_isSemiringHomomorphism_2024 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2046 ::
  T_IsRingHomomorphism_2016 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_2046 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe d_isSemiringHomomorphism_2024 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_2048 ::
  T_IsRingHomomorphism_2016 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2048 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_2024 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong
d_cong_2050 ::
  T_IsRingHomomorphism_2016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2050 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe d_isSemiringHomomorphism_2024 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2016 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_2052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2052 v7
du_'43''45'isGroupHomomorphism_2052 ::
  T_IsRingHomomorphism_2016 -> T_IsGroupHomomorphism_506
du_'43''45'isGroupHomomorphism_2052 v0
  = coe
      C_IsGroupHomomorphism'46'constructor_10685
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_2024 (coe v0))))
      (coe d_'45''8255'homo_2026 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism
d_IsRingMonomorphism_2056 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingMonomorphism_2056
  = C_IsRingMonomorphism'46'constructor_39007 T_IsRingHomomorphism_2016
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_2064 ::
  T_IsRingMonomorphism_2056 -> T_IsRingHomomorphism_2016
d_isRingHomomorphism_2064 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_39007 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.injective
d_injective_2066 ::
  T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2066 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_39007 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-homo
d_'42''45'homo_2070 ::
  T_IsRingMonomorphism_2056 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2070 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_2024
            (coe d_isRingHomomorphism_2064 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_2072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2072 v7
du_'42''45'isMagmaHomomorphism_2072 ::
  T_IsRingMonomorphism_2056 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_2072 v0
  = let v1 = d_isRingHomomorphism_2064 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_2024 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_824
            (coe d_isNearSemiringHomomorphism_1174 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_2074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2074 v7
du_'42''45'isMonoidHomomorphism_2074 ::
  T_IsRingMonomorphism_2056 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_2074 v0
  = let v1 = d_isRingHomomorphism_2064 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_2024 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo
d_homo_2076 ::
  T_IsRingMonomorphism_2056 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2076 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_2024
                  (coe d_isRingHomomorphism_2064 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_2078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2078 v7
du_'43''45'isGroupHomomorphism_2078 ::
  T_IsRingMonomorphism_2056 -> T_IsGroupHomomorphism_506
du_'43''45'isGroupHomomorphism_2078 v0
  = coe
      du_'43''45'isGroupHomomorphism_2052
      (coe d_isRingHomomorphism_2064 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2080 ::
  T_IsRingMonomorphism_2056 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2080 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_2024
               (coe d_isRingHomomorphism_2064 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2082 ::
  T_IsRingMonomorphism_2056 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_2082 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_2024
            (coe d_isRingHomomorphism_2064 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.-‿homo
d_'45''8255'homo_2084 ::
  T_IsRingMonomorphism_2056 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2084 v0
  = coe
      d_'45''8255'homo_2026 (coe d_isRingHomomorphism_2064 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo
d_ε'45'homo_2086 :: T_IsRingMonomorphism_2056 -> AgdaAny
d_ε'45'homo_2086 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_2024
               (coe d_isRingHomomorphism_2064 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.1#-homo
d_1'35''45'homo_2088 :: T_IsRingMonomorphism_2056 -> AgdaAny
d_1'35''45'homo_2088 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_2024
         (coe d_isRingHomomorphism_2064 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2090 ::
  T_IsRingMonomorphism_2056 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_2090 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_2024
         (coe d_isRingHomomorphism_2064 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_2092 ::
  T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2092 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_2024
                  (coe d_isRingHomomorphism_2064 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_2094 ::
  T_IsRingMonomorphism_2056 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_2094 v0
  = coe
      d_isSemiringHomomorphism_2024
      (coe d_isRingHomomorphism_2064 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong
d_cong_2096 ::
  T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2096 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_2024
                     (coe d_isRingHomomorphism_2064 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_2098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_2098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringMonomorphism_2098 v7
du_isSemiringMonomorphism_2098 ::
  T_IsRingMonomorphism_2056 -> T_IsSemiringMonomorphism_1200
du_isSemiringMonomorphism_2098 v0
  = coe
      C_IsSemiringMonomorphism'46'constructor_23957
      (coe
         d_isSemiringHomomorphism_2024
         (coe d_isRingHomomorphism_2064 (coe v0)))
      (coe d_injective_2066 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsGroupMonomorphism_532
d_'43''45'isGroupMonomorphism_2100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_2100 v7
du_'43''45'isGroupMonomorphism_2100 ::
  T_IsRingMonomorphism_2056 -> T_IsGroupMonomorphism_532
du_'43''45'isGroupMonomorphism_2100 v0
  = coe
      C_IsGroupMonomorphism'46'constructor_11635
      (coe
         du_'43''45'isGroupHomomorphism_2052
         (coe d_isRingHomomorphism_2064 (coe v0)))
      (coe d_injective_2066 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2104 v7
du_isMagmaMonomorphism_2104 ::
  T_IsRingMonomorphism_2056 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2104 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_2100 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_isMonoidMonomorphism_560 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_2106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_2106 v7
du_isMonoidMonomorphism_2106 ::
  T_IsRingMonomorphism_2056 -> T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_2106 v0
  = coe
      du_isMonoidMonomorphism_560
      (coe du_'43''45'isGroupMonomorphism_2100 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_2108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2108 v7
du_isRelMonomorphism_2108 ::
  T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2108 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_2100 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_560 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_98 (coe du_isMagmaMonomorphism_280 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_2110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_2110 v7
du_'42''45'isMonoidMonomorphism_2110 ::
  T_IsRingMonomorphism_2056 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_2110 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_6341
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe
            d_isSemiringHomomorphism_2024
            (coe d_isRingHomomorphism_2064 (coe v0))))
      (coe d_injective_2066 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2056 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2114 v7
du_isMagmaMonomorphism_2114 ::
  T_IsRingMonomorphism_2056 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2114 v0
  = coe
      du_isMagmaMonomorphism_280
      (coe du_'42''45'isMonoidMonomorphism_2110 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism
d_IsRingIsomorphism_2118 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingIsomorphism_2118
  = C_IsRingIsomorphism'46'constructor_41689 T_IsRingMonomorphism_2056
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_2126 ::
  T_IsRingIsomorphism_2118 -> T_IsRingMonomorphism_2056
d_isRingMonomorphism_2126 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_41689 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.surjective
d_surjective_2128 ::
  T_IsRingIsomorphism_2118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2128 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_41689 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-homo
d_'42''45'homo_2132 ::
  T_IsRingIsomorphism_2118 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2132 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_2024
            (coe
               d_isRingHomomorphism_2064
               (coe d_isRingMonomorphism_2126 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_2134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2134 v7
du_'42''45'isMagmaHomomorphism_2134 ::
  T_IsRingIsomorphism_2118 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_2134 v0
  = let v1 = d_isRingMonomorphism_2126 (coe v0) in
    coe
      (let v2 = d_isRingHomomorphism_2064 (coe v1) in
       coe
         (let v3 = d_isSemiringHomomorphism_2024 (coe v2) in
          coe
            (coe
               du_'42''45'isMagmaHomomorphism_824
               (coe d_isNearSemiringHomomorphism_1174 (coe v3)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2136 v7
du_isMagmaMonomorphism_2136 ::
  T_IsRingIsomorphism_2118 -> T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2136 v0
  = let v1 = d_isRingMonomorphism_2126 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_280
         (coe du_'42''45'isMonoidMonomorphism_2110 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_2138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2138 v7
du_'42''45'isMonoidHomomorphism_2138 ::
  T_IsRingIsomorphism_2118 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_2138 v0
  = let v1 = d_isRingMonomorphism_2126 (coe v0) in
    coe
      (let v2 = d_isRingHomomorphism_2064 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoidHomomorphism_1196
            (coe d_isSemiringHomomorphism_2024 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_2140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_2140 v7
du_'42''45'isMonoidMonomorphism_2140 ::
  T_IsRingIsomorphism_2118 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_2140 v0
  = coe
      du_'42''45'isMonoidMonomorphism_2110
      (coe d_isRingMonomorphism_2126 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo
d_homo_2142 ::
  T_IsRingIsomorphism_2118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2142 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_2024
                  (coe
                     d_isRingHomomorphism_2064
                     (coe d_isRingMonomorphism_2126 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsGroupHomomorphism_506
d_'43''45'isGroupHomomorphism_2144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2144 v7
du_'43''45'isGroupHomomorphism_2144 ::
  T_IsRingIsomorphism_2118 -> T_IsGroupHomomorphism_506
du_'43''45'isGroupHomomorphism_2144 v0
  = let v1 = d_isRingMonomorphism_2126 (coe v0) in
    coe
      (coe
         du_'43''45'isGroupHomomorphism_2052
         (coe d_isRingHomomorphism_2064 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsGroupMonomorphism_532
d_'43''45'isGroupMonomorphism_2146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_2146 v7
du_'43''45'isGroupMonomorphism_2146 ::
  T_IsRingIsomorphism_2118 -> T_IsGroupMonomorphism_532
du_'43''45'isGroupMonomorphism_2146 v0
  = coe
      du_'43''45'isGroupMonomorphism_2100
      (coe d_isRingMonomorphism_2126 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2148 ::
  T_IsRingIsomorphism_2118 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2148 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_2024
               (coe
                  d_isRingHomomorphism_2064
                  (coe d_isRingMonomorphism_2126 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2150 ::
  T_IsRingIsomorphism_2118 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_2150 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_2024
            (coe
               d_isRingHomomorphism_2064
               (coe d_isRingMonomorphism_2126 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.-‿homo
d_'45''8255'homo_2152 ::
  T_IsRingIsomorphism_2118 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2152 v0
  = coe
      d_'45''8255'homo_2026
      (coe
         d_isRingHomomorphism_2064 (coe d_isRingMonomorphism_2126 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo
d_ε'45'homo_2154 :: T_IsRingIsomorphism_2118 -> AgdaAny
d_ε'45'homo_2154 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_2024
               (coe
                  d_isRingHomomorphism_2064
                  (coe d_isRingMonomorphism_2126 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.1#-homo
d_1'35''45'homo_2156 :: T_IsRingIsomorphism_2118 -> AgdaAny
d_1'35''45'homo_2156 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_2024
         (coe
            d_isRingHomomorphism_2064
            (coe d_isRingMonomorphism_2126 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.injective
d_injective_2158 ::
  T_IsRingIsomorphism_2118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2158 v0
  = coe d_injective_2066 (coe d_isRingMonomorphism_2126 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2160 ::
  T_IsRingIsomorphism_2118 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_2160 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_2024
         (coe
            d_isRingHomomorphism_2064
            (coe d_isRingMonomorphism_2126 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2162 ::
  T_IsRingIsomorphism_2118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2162 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_2024
                  (coe
                     d_isRingHomomorphism_2064
                     (coe d_isRingMonomorphism_2126 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRingHomomorphism
d_isRingHomomorphism_2164 ::
  T_IsRingIsomorphism_2118 -> T_IsRingHomomorphism_2016
d_isRingHomomorphism_2164 v0
  = coe
      d_isRingHomomorphism_2064 (coe d_isRingMonomorphism_2126 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_2166 ::
  T_IsRingIsomorphism_2118 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_2166 v0
  = coe
      d_isSemiringHomomorphism_2024
      (coe
         d_isRingHomomorphism_2064 (coe d_isRingMonomorphism_2126 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isSemiringMonomorphism
d_isSemiringMonomorphism_2168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_2168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringMonomorphism_2168 v7
du_isSemiringMonomorphism_2168 ::
  T_IsRingIsomorphism_2118 -> T_IsSemiringMonomorphism_1200
du_isSemiringMonomorphism_2168 v0
  = coe
      du_isSemiringMonomorphism_2098
      (coe d_isRingMonomorphism_2126 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong
d_cong_2170 ::
  T_IsRingIsomorphism_2118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_2024
                     (coe
                        d_isRingHomomorphism_2064
                        (coe d_isRingMonomorphism_2126 (coe v0))))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isSemiringIsomorphism
d_isSemiringIsomorphism_2172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsSemiringIsomorphism_1248
d_isSemiringIsomorphism_2172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringIsomorphism_2172 v7
du_isSemiringIsomorphism_2172 ::
  T_IsRingIsomorphism_2118 -> T_IsSemiringIsomorphism_1248
du_isSemiringIsomorphism_2172 v0
  = coe
      C_IsSemiringIsomorphism'46'constructor_26015
      (coe
         du_isSemiringMonomorphism_2098
         (coe d_isRingMonomorphism_2126 (coe v0)))
      (coe d_surjective_2128 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_2174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsGroupIsomorphism_570
d_'43''45'isGroupIsomorphism_2174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupIsomorphism_2174 v7
du_'43''45'isGroupIsomorphism_2174 ::
  T_IsRingIsomorphism_2118 -> T_IsGroupIsomorphism_570
du_'43''45'isGroupIsomorphism_2174 v0
  = coe
      C_IsGroupIsomorphism'46'constructor_13169
      (coe
         du_'43''45'isGroupMonomorphism_2100
         (coe d_isRingMonomorphism_2126 (coe v0)))
      (coe d_surjective_2128 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_2178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2178 v7
du_isMagmaIsomorphism_2178 ::
  T_IsRingIsomorphism_2118 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2178 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_2174 (coe v0) in
    coe
      (coe
         du_isMagmaIsomorphism_320
         (coe du_isMonoidIsomorphism_608 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMonoidIsomorphism
d_isMonoidIsomorphism_2180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_2180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_2180 v7
du_isMonoidIsomorphism_2180 ::
  T_IsRingIsomorphism_2118 -> T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_2180 v0
  = coe
      du_isMonoidIsomorphism_608
      (coe du_'43''45'isGroupIsomorphism_2174 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_2182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2182 v7
du_isRelIsomorphism_2182 ::
  T_IsRingIsomorphism_2118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2182 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_2174 (coe v0) in
    coe
      (let v2 = coe du_isMonoidIsomorphism_608 (coe v1) in
       coe
         (coe
            du_isRelIsomorphism_128 (coe du_isMagmaIsomorphism_320 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_2184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMonoidIsomorphism_288
d_'42''45'isMonoidIsomorphism_2184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_2184 v7
du_'42''45'isMonoidIsomorphism_2184 ::
  T_IsRingIsomorphism_2118 -> T_IsMonoidIsomorphism_288
du_'42''45'isMonoidIsomorphism_2184 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_7699
      (coe
         du_'42''45'isMonoidMonomorphism_2110
         (coe d_isRingMonomorphism_2126 (coe v0)))
      (coe d_surjective_2128 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_2188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2118 -> T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2188 v7
du_isMagmaIsomorphism_2188 ::
  T_IsRingIsomorphism_2118 -> T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2188 v0
  = coe
      du_isMagmaIsomorphism_320
      (coe du_'42''45'isMonoidIsomorphism_2184 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._//_
d__'47''47'__2206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__2206 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'47''47'__2206 v4
du__'47''47'__2206 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__2206 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__324 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._\\_
d__'92''92'__2208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__2208 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'92''92'__2208 v4
du__'92''92'__2208 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'92''92'__2208 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__322 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._∙_
d__'8729'__2210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2210 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__2210 v4
du__'8729'__2210 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__2210 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__320 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._≈_
d__'8776'__2212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2212 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms._.Carrier
d_Carrier_2218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 -> ()
d_Carrier_2218 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2246 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2248 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2250 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.homo
d_homo_2254 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2254 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2256 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2256 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.cong
d_cong_2258 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2258 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.homo
d_homo_2262 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2262 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.injective
d_injective_2264 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2264 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2266 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2266 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2268 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2268 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2270 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2270 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2272
du_isRelIsomorphism_2272 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2272 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2274 v7
du_isRelMonomorphism_2274 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2274 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.surjective
d_surjective_2276 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2276 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.cong
d_cong_2278 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.homo
d_homo_2282 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2282 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.injective
d_injective_2284 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2284 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2286 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2286 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2288 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2288 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2290
du_isRelMonomorphism_2290 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2290 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.cong
d_cong_2292 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2296 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2298 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2300 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.homo
d_homo_2304 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2304 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2306 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2306 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.cong
d_cong_2308 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.homo
d_homo_2312 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2312 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.injective
d_injective_2314 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2314 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2316 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2316 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2318 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2318 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2320 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2320 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2322
du_isRelIsomorphism_2322 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2322 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2324 v7
du_isRelMonomorphism_2324 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2324 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.surjective
d_surjective_2326 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2326 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.cong
d_cong_2328 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.homo
d_homo_2332 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2332 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.injective
d_injective_2334 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2334 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2336 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2336 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2338 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2338 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2340
du_isRelMonomorphism_2340 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2340 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.cong
d_cong_2342 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2346 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2348 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2350 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.homo
d_homo_2354 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2354 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2356 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2356 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.cong
d_cong_2358 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.homo
d_homo_2362 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2362 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.injective
d_injective_2364 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2364 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2366 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2366 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2368 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2368 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2370 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2370 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2372
du_isRelIsomorphism_2372 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2372 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2374 v7
du_isRelMonomorphism_2374 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2374 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.surjective
d_surjective_2376 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2376 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.cong
d_cong_2378 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.homo
d_homo_2382 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2382 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.injective
d_injective_2384 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2384 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2386 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2386 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2388 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2388 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2390
du_isRelMonomorphism_2390 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2390 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.cong
d_cong_2392 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2392 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms._.Homomorphic₂
d_Homomorphic'8322'_2400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_2400 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_2406 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupHomomorphism_2406
  = C_IsQuasigroupHomomorphism'46'constructor_46241 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2418 ::
  T_IsQuasigroupHomomorphism_2406 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2418 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_46241 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_2420 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2420 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_46241 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_2422 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2422 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_46241 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_2424 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2424 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_46241 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism._.cong
d_cong_2428 ::
  T_IsQuasigroupHomomorphism_2406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2428 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_2418 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2430 v7
du_'8729''45'isMagmaHomomorphism_2430 ::
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2430 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_741
      (coe d_isRelHomomorphism_2418 (coe v0))
      (coe d_'8729''45'homo_2420 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2432 v7
du_'92''92''45'isMagmaHomomorphism_2432 ::
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2432 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_741
      (coe d_isRelHomomorphism_2418 (coe v0))
      (coe d_'92''92''45'homo_2422 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2434 v7
du_'47''47''45'isMagmaHomomorphism_2434 ::
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2434 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_741
      (coe d_isRelHomomorphism_2418 (coe v0))
      (coe d_'47''47''45'homo_2424 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_2438 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupMonomorphism_2438
  = C_IsQuasigroupMonomorphism'46'constructor_48025 T_IsQuasigroupHomomorphism_2406
                                                    (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2446 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2446 v0
  = case coe v0 of
      C_IsQuasigroupMonomorphism'46'constructor_48025 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.injective
d_injective_2448 ::
  T_IsQuasigroupMonomorphism_2438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2448 v0
  = case coe v0 of
      C_IsQuasigroupMonomorphism'46'constructor_48025 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.//-homo
d_'47''47''45'homo_2452 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2452 v0
  = coe
      d_'47''47''45'homo_2424
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2454 v7
du_'47''47''45'isMagmaHomomorphism_2454 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2454 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2434
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.\\-homo
d_'92''92''45'homo_2456 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2456 v0
  = coe
      d_'92''92''45'homo_2422
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2458 v7
du_'92''92''45'isMagmaHomomorphism_2458 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2458 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2432
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_2460 ::
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2460 v0
  = coe
      d_isRelHomomorphism_2418
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.∙-homo
d_'8729''45'homo_2462 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2462 v0
  = coe
      d_'8729''45'homo_2420
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2464 v7
du_'8729''45'isMagmaHomomorphism_2464 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2464 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2430
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.cong
d_cong_2466 ::
  T_IsQuasigroupMonomorphism_2438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe d_isQuasigroupHomomorphism_2446 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'8729''45'isMagmaMonomorphism_2468 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_2468 v7
du_'8729''45'isMagmaMonomorphism_2468 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'8729''45'isMagmaMonomorphism_2468 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         du_'8729''45'isMagmaHomomorphism_2430
         (coe d_isQuasigroupHomomorphism_2446 (coe v0)))
      (coe d_injective_2448 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'92''92''45'isMagmaMonomorphism_2470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_2470 v7
du_'92''92''45'isMagmaMonomorphism_2470 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'92''92''45'isMagmaMonomorphism_2470 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         du_'92''92''45'isMagmaHomomorphism_2432
         (coe d_isQuasigroupHomomorphism_2446 (coe v0)))
      (coe d_injective_2448 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'47''47''45'isMagmaMonomorphism_2472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_2472 v7
du_'47''47''45'isMagmaMonomorphism_2472 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'47''47''45'isMagmaMonomorphism_2472 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1873
      (coe
         du_'47''47''45'isMagmaHomomorphism_2434
         (coe d_isQuasigroupHomomorphism_2446 (coe v0)))
      (coe d_injective_2448 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_2476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2476 v7
du_isRelMonomorphism_2476 ::
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2476 v0
  = coe
      du_isRelMonomorphism_98
      (coe du_'47''47''45'isMagmaMonomorphism_2472 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_2480 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupIsomorphism_2480
  = C_IsQuasigroupIsomorphism'46'constructor_50143 T_IsQuasigroupMonomorphism_2438
                                                   (AgdaAny ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_2488 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsQuasigroupMonomorphism_2438
d_isQuasigroupMonomorphism_2488 v0
  = case coe v0 of
      C_IsQuasigroupIsomorphism'46'constructor_50143 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.surjective
d_surjective_2490 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2490 v0
  = case coe v0 of
      C_IsQuasigroupIsomorphism'46'constructor_50143 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-homo
d_'47''47''45'homo_2494 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2494 v0
  = coe
      d_'47''47''45'homo_2424
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2496 v7
du_'47''47''45'isMagmaHomomorphism_2496 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2496 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2434
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'47''47''45'isMagmaMonomorphism_2498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_2498 v7
du_'47''47''45'isMagmaMonomorphism_2498 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'47''47''45'isMagmaMonomorphism_2498 v0
  = coe
      du_'47''47''45'isMagmaMonomorphism_2472
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-homo
d_'92''92''45'homo_2500 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2500 v0
  = coe
      d_'92''92''45'homo_2422
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2502 v7
du_'92''92''45'isMagmaHomomorphism_2502 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2502 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2432
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'92''92''45'isMagmaMonomorphism_2504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_2504 v7
du_'92''92''45'isMagmaMonomorphism_2504 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'92''92''45'isMagmaMonomorphism_2504 v0
  = coe
      du_'92''92''45'isMagmaMonomorphism_2470
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.injective
d_injective_2506 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2506 v0
  = coe
      d_injective_2448 (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2508 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2508 v0
  = coe
      d_isQuasigroupHomomorphism_2446
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2510 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2510 v0
  = coe
      d_isRelHomomorphism_2418
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_2512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2512 v7
du_isRelMonomorphism_2512 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2512 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98
         (coe du_'47''47''45'isMagmaMonomorphism_2472 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-homo
d_'8729''45'homo_2514 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2514 v0
  = coe
      d_'8729''45'homo_2420
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2516 v7
du_'8729''45'isMagmaHomomorphism_2516 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2516 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2430
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'8729''45'isMagmaMonomorphism_2518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_2518 v7
du_'8729''45'isMagmaMonomorphism_2518 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'8729''45'isMagmaMonomorphism_2518 v0
  = coe
      du_'8729''45'isMagmaMonomorphism_2468
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.cong
d_cong_2520 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2520 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe
            d_isQuasigroupHomomorphism_2446
            (coe d_isQuasigroupMonomorphism_2488 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.∙-isMagmaIsomorphism
d_'8729''45'isMagmaIsomorphism_2522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'8729''45'isMagmaIsomorphism_2522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaIsomorphism_2522 v7
du_'8729''45'isMagmaIsomorphism_2522 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'8729''45'isMagmaIsomorphism_2522 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_'8729''45'isMagmaMonomorphism_2468
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.\\-isMagmaIsomorphism
d_'92''92''45'isMagmaIsomorphism_2524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'92''92''45'isMagmaIsomorphism_2524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'92''92''45'isMagmaIsomorphism_2524 v7
du_'92''92''45'isMagmaIsomorphism_2524 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'92''92''45'isMagmaIsomorphism_2524 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_'92''92''45'isMagmaMonomorphism_2470
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.//-isMagmaIsomorphism
d_'47''47''45'isMagmaIsomorphism_2526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'47''47''45'isMagmaIsomorphism_2526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'47''47''45'isMagmaIsomorphism_2526 v7
du_'47''47''45'isMagmaIsomorphism_2526 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'47''47''45'isMagmaIsomorphism_2526 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_3307
      (coe
         du_'47''47''45'isMagmaMonomorphism_2472
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_2530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2530 v7
du_isRelIsomorphism_2530 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2530 v0
  = coe
      du_isRelIsomorphism_128
      (coe du_'47''47''45'isMagmaIsomorphism_2526 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._._≈_
d__'8776'__2554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2554 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.Carrier
d_Carrier_2560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 -> ()
d_Carrier_2560 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.ε
d_ε_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 -> AgdaAny
d_ε_2566 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_2566 v4
du_ε_2566 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 -> AgdaAny
du_ε_2566 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_368 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.Homomorphic₀
d_Homomorphic'8320'_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_2596 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_2606 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_2608 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_2610 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2614 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2616 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2618 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.homo
d_homo_2622 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2622 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2624 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2624 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.cong
d_cong_2626 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2626 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.homo
d_homo_2630 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2630 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.injective
d_injective_2632 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2632 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2634 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2634 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2636 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2636 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2638 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2638 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2640
du_isRelIsomorphism_2640 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2640 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2642 v7
du_isRelMonomorphism_2642 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2642 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.surjective
d_surjective_2644 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2644 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.cong
d_cong_2646 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2646 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.homo
d_homo_2650 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2650 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.injective
d_injective_2652 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2652 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2654 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2654 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2656 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2656 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2658
du_isRelMonomorphism_2658 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2658 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.cong
d_cong_2660 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_2664 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2664 v0 = coe d_'47''47''45'homo_2424 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaHomomorphism_2666
du_'47''47''45'isMagmaHomomorphism_2666 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2666 v0 v1
  = coe du_'47''47''45'isMagmaHomomorphism_2434 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_2668 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2668 v0 = coe d_'92''92''45'homo_2422 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaHomomorphism_2670
du_'92''92''45'isMagmaHomomorphism_2670 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2670 v0 v1
  = coe du_'92''92''45'isMagmaHomomorphism_2432 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2672 ::
  T_IsQuasigroupHomomorphism_2406 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2672 v0 = coe d_isRelHomomorphism_2418 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_2674 ::
  T_IsQuasigroupHomomorphism_2406 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2674 v0 = coe d_'8729''45'homo_2420 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaHomomorphism_2676
du_'8729''45'isMagmaHomomorphism_2676 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2406 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2676 v0 v1
  = coe du_'8729''45'isMagmaHomomorphism_2430 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.cong
d_cong_2678 ::
  T_IsQuasigroupHomomorphism_2406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2678 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_2418 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-homo
d_'47''47''45'homo_2682 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2682 v0
  = coe
      d_'47''47''45'homo_2424
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2684 v7
du_'47''47''45'isMagmaHomomorphism_2684 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2684 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2434
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaIsomorphism
d_'47''47''45'isMagmaIsomorphism_2686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'47''47''45'isMagmaIsomorphism_2686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaIsomorphism_2686
du_'47''47''45'isMagmaIsomorphism_2686 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'47''47''45'isMagmaIsomorphism_2686 v0 v1
  = coe du_'47''47''45'isMagmaIsomorphism_2526 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'47''47''45'isMagmaMonomorphism_2688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_2688 v7
du_'47''47''45'isMagmaMonomorphism_2688 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'47''47''45'isMagmaMonomorphism_2688 v0
  = coe
      du_'47''47''45'isMagmaMonomorphism_2472
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-homo
d_'92''92''45'homo_2690 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2690 v0
  = coe
      d_'92''92''45'homo_2422
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2692 v7
du_'92''92''45'isMagmaHomomorphism_2692 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2692 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2432
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaIsomorphism
d_'92''92''45'isMagmaIsomorphism_2694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'92''92''45'isMagmaIsomorphism_2694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaIsomorphism_2694
du_'92''92''45'isMagmaIsomorphism_2694 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'92''92''45'isMagmaIsomorphism_2694 v0 v1
  = coe du_'92''92''45'isMagmaIsomorphism_2524 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'92''92''45'isMagmaMonomorphism_2696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_2696 v7
du_'92''92''45'isMagmaMonomorphism_2696 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'92''92''45'isMagmaMonomorphism_2696 v0
  = coe
      du_'92''92''45'isMagmaMonomorphism_2470
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.injective
d_injective_2698 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2698 v0
  = coe
      d_injective_2448 (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2700 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2700 v0
  = coe
      d_isQuasigroupHomomorphism_2446
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_2702 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsQuasigroupMonomorphism_2438
d_isQuasigroupMonomorphism_2702 v0
  = coe d_isQuasigroupMonomorphism_2488 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2704 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2704 v0
  = coe
      d_isRelHomomorphism_2418
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2706 v7
du_isRelIsomorphism_2706 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2706 v0
  = coe
      du_isRelIsomorphism_128
      (coe du_'47''47''45'isMagmaIsomorphism_2526 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2708 v7
du_isRelMonomorphism_2708 ::
  T_IsQuasigroupIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2708 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_98
         (coe du_'47''47''45'isMagmaMonomorphism_2472 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.surjective
d_surjective_2710 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2710 v0 = coe d_surjective_2490 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-homo
d_'8729''45'homo_2712 ::
  T_IsQuasigroupIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2712 v0
  = coe
      d_'8729''45'homo_2420
      (coe
         d_isQuasigroupHomomorphism_2446
         (coe d_isQuasigroupMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2714 v7
du_'8729''45'isMagmaHomomorphism_2714 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2714 v0
  = let v1 = d_isQuasigroupMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2430
         (coe d_isQuasigroupHomomorphism_2446 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaIsomorphism
d_'8729''45'isMagmaIsomorphism_2716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
d_'8729''45'isMagmaIsomorphism_2716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaIsomorphism_2716
du_'8729''45'isMagmaIsomorphism_2716 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaIsomorphism_102
du_'8729''45'isMagmaIsomorphism_2716 v0 v1
  = coe du_'8729''45'isMagmaIsomorphism_2522 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
d_'8729''45'isMagmaMonomorphism_2718 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_2718 v7
du_'8729''45'isMagmaMonomorphism_2718 ::
  T_IsQuasigroupIsomorphism_2480 -> T_IsMagmaMonomorphism_78
du_'8729''45'isMagmaMonomorphism_2718 v0
  = coe
      du_'8729''45'isMagmaMonomorphism_2468
      (coe d_isQuasigroupMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.cong
d_cong_2720 ::
  T_IsQuasigroupIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2720 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe
            d_isQuasigroupHomomorphism_2446
            (coe d_isQuasigroupMonomorphism_2488 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-homo
d_'47''47''45'homo_2724 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2724 v0
  = coe
      d_'47''47''45'homo_2424
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2726 v7
du_'47''47''45'isMagmaHomomorphism_2726 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2726 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2434
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'47''47''45'isMagmaMonomorphism_2728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaMonomorphism_2728
du_'47''47''45'isMagmaMonomorphism_2728 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'47''47''45'isMagmaMonomorphism_2728 v0 v1
  = coe du_'47''47''45'isMagmaMonomorphism_2472 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-homo
d_'92''92''45'homo_2730 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2730 v0
  = coe
      d_'92''92''45'homo_2422
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2732 v7
du_'92''92''45'isMagmaHomomorphism_2732 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2732 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2432
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'92''92''45'isMagmaMonomorphism_2734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaMonomorphism_2734
du_'92''92''45'isMagmaMonomorphism_2734 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'92''92''45'isMagmaMonomorphism_2734 v0 v1
  = coe du_'92''92''45'isMagmaMonomorphism_2470 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.injective
d_injective_2736 ::
  T_IsQuasigroupMonomorphism_2438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2736 v0 = coe d_injective_2448 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2738 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2738 v0
  = coe d_isQuasigroupHomomorphism_2446 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2740 ::
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2740 v0
  = coe
      d_isRelHomomorphism_2418
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2742 v7
du_isRelMonomorphism_2742 ::
  T_IsQuasigroupMonomorphism_2438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2742 v0
  = coe
      du_isRelMonomorphism_98
      (coe du_'47''47''45'isMagmaMonomorphism_2472 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-homo
d_'8729''45'homo_2744 ::
  T_IsQuasigroupMonomorphism_2438 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2744 v0
  = coe
      d_'8729''45'homo_2420
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2746 v7
du_'8729''45'isMagmaHomomorphism_2746 ::
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2746 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2430
      (coe d_isQuasigroupHomomorphism_2446 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
d_'8729''45'isMagmaMonomorphism_2748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaMonomorphism_2748
du_'8729''45'isMagmaMonomorphism_2748 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2438 -> T_IsMagmaMonomorphism_78
du_'8729''45'isMagmaMonomorphism_2748 v0 v1
  = coe du_'8729''45'isMagmaMonomorphism_2468 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.cong
d_cong_2750 ::
  T_IsQuasigroupMonomorphism_2438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2750 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe d_isQuasigroupHomomorphism_2446 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2754 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2756 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2758 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.homo
d_homo_2762 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2762 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2764 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2764 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.cong
d_cong_2766 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2766 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.homo
d_homo_2770 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2770 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.injective
d_injective_2772 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2772 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2774 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2774 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2776 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2776 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2778 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2778 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2780
du_isRelIsomorphism_2780 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2780 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2782 v7
du_isRelMonomorphism_2782 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2782 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.surjective
d_surjective_2784 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2784 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.cong
d_cong_2786 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.homo
d_homo_2790 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2790 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.injective
d_injective_2792 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2792 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2794 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2794 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2796 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2796 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2798
du_isRelMonomorphism_2798 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2798 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.cong
d_cong_2800 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2800 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2804 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2806 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2808 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.homo
d_homo_2812 ::
  T_IsMagmaHomomorphism_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2812 v0 = coe d_homo_70 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2814 ::
  T_IsMagmaHomomorphism_60 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2814 v0 = coe d_isRelHomomorphism_68 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.cong
d_cong_2816 ::
  T_IsMagmaHomomorphism_60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2816 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_68 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.homo
d_homo_2820 ::
  T_IsMagmaIsomorphism_102 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2820 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.injective
d_injective_2822 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2822 v0
  = coe d_injective_88 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2824 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2824 v0
  = coe
      d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2826 ::
  T_IsMagmaIsomorphism_102 -> T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2826 v0
  = coe d_isMagmaMonomorphism_110 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2828 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2828 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2830
du_isRelIsomorphism_2830 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2830 v0 v1 = coe du_isRelIsomorphism_128 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2832 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2832 v7
du_isRelMonomorphism_2832 ::
  T_IsMagmaIsomorphism_102 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2832 v0
  = coe
      du_isRelMonomorphism_98 (coe d_isMagmaMonomorphism_110 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.surjective
d_surjective_2834 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2834 v0 = coe d_surjective_112 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.cong
d_cong_2836 ::
  T_IsMagmaIsomorphism_102 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_86 (coe d_isMagmaMonomorphism_110 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.homo
d_homo_2840 ::
  T_IsMagmaMonomorphism_78 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2840 v0
  = coe d_homo_70 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.injective
d_injective_2842 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2842 v0 = coe d_injective_88 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2844 ::
  T_IsMagmaMonomorphism_78 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2844 v0
  = coe d_isMagmaHomomorphism_86 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2846 ::
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2846 v0
  = coe
      d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2848
du_isRelMonomorphism_2848 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_78 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2848 v0 v1 = coe du_isRelMonomorphism_98 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.cong
d_cong_2850 ::
  T_IsMagmaMonomorphism_78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2850 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68 (coe d_isMagmaHomomorphism_86 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism
d_IsLoopHomomorphism_2854 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopHomomorphism_2854
  = C_IsLoopHomomorphism'46'constructor_54343 T_IsQuasigroupHomomorphism_2406
                                              AgdaAny
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2862 ::
  T_IsLoopHomomorphism_2854 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2862 v0
  = case coe v0 of
      C_IsLoopHomomorphism'46'constructor_54343 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism.ε-homo
d_ε'45'homo_2864 :: T_IsLoopHomomorphism_2854 -> AgdaAny
d_ε'45'homo_2864 v0
  = case coe v0 of
      C_IsLoopHomomorphism'46'constructor_54343 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.//-homo
d_'47''47''45'homo_2868 ::
  T_IsLoopHomomorphism_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2868 v0
  = coe
      d_'47''47''45'homo_2424
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2870 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2870 v7
du_'47''47''45'isMagmaHomomorphism_2870 ::
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2870 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2434
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.\\-homo
d_'92''92''45'homo_2872 ::
  T_IsLoopHomomorphism_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2872 v0
  = coe
      d_'92''92''45'homo_2422
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2874 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2874 v7
du_'92''92''45'isMagmaHomomorphism_2874 ::
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2874 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2432
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_2876 ::
  T_IsLoopHomomorphism_2854 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2876 v0
  = coe
      d_isRelHomomorphism_2418
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.∙-homo
d_'8729''45'homo_2878 ::
  T_IsLoopHomomorphism_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2878 v0
  = coe
      d_'8729''45'homo_2420
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2880 v7
du_'8729''45'isMagmaHomomorphism_2880 ::
  T_IsLoopHomomorphism_2854 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2880 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2430
      (coe d_isQuasigroupHomomorphism_2862 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.cong
d_cong_2882 ::
  T_IsLoopHomomorphism_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2882 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe d_isQuasigroupHomomorphism_2862 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism
d_IsLoopMonomorphism_2886 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopMonomorphism_2886
  = C_IsLoopMonomorphism'46'constructor_55451 T_IsLoopHomomorphism_2854
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism.isLoopHomomorphism
d_isLoopHomomorphism_2894 ::
  T_IsLoopMonomorphism_2886 -> T_IsLoopHomomorphism_2854
d_isLoopHomomorphism_2894 v0
  = case coe v0 of
      C_IsLoopMonomorphism'46'constructor_55451 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism.injective
d_injective_2896 ::
  T_IsLoopMonomorphism_2886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2896 v0
  = case coe v0 of
      C_IsLoopMonomorphism'46'constructor_55451 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.//-homo
d_'47''47''45'homo_2900 ::
  T_IsLoopMonomorphism_2886 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2900 v0
  = coe
      d_'47''47''45'homo_2424
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe d_isLoopHomomorphism_2894 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2902 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2902 v7
du_'47''47''45'isMagmaHomomorphism_2902 ::
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2902 v0
  = let v1 = d_isLoopHomomorphism_2894 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2434
         (coe d_isQuasigroupHomomorphism_2862 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.\\-homo
d_'92''92''45'homo_2904 ::
  T_IsLoopMonomorphism_2886 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2904 v0
  = coe
      d_'92''92''45'homo_2422
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe d_isLoopHomomorphism_2894 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2906 v7
du_'92''92''45'isMagmaHomomorphism_2906 ::
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2906 v0
  = let v1 = d_isLoopHomomorphism_2894 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2432
         (coe d_isQuasigroupHomomorphism_2862 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2908 ::
  T_IsLoopMonomorphism_2886 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2908 v0
  = coe
      d_isQuasigroupHomomorphism_2862
      (coe d_isLoopHomomorphism_2894 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_2910 ::
  T_IsLoopMonomorphism_2886 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2910 v0
  = coe
      d_isRelHomomorphism_2418
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe d_isLoopHomomorphism_2894 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.ε-homo
d_ε'45'homo_2912 :: T_IsLoopMonomorphism_2886 -> AgdaAny
d_ε'45'homo_2912 v0
  = coe d_ε'45'homo_2864 (coe d_isLoopHomomorphism_2894 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.∙-homo
d_'8729''45'homo_2914 ::
  T_IsLoopMonomorphism_2886 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2914 v0
  = coe
      d_'8729''45'homo_2420
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe d_isLoopHomomorphism_2894 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2916 v7
du_'8729''45'isMagmaHomomorphism_2916 ::
  T_IsLoopMonomorphism_2886 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2916 v0
  = let v1 = d_isLoopHomomorphism_2894 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2430
         (coe d_isQuasigroupHomomorphism_2862 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.cong
d_cong_2918 ::
  T_IsLoopMonomorphism_2886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2918 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe
            d_isQuasigroupHomomorphism_2862
            (coe d_isLoopHomomorphism_2894 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism
d_IsLoopIsomorphism_2922 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopIsomorphism_2922
  = C_IsLoopIsomorphism'46'constructor_56693 T_IsLoopMonomorphism_2886
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism.isLoopMonomorphism
d_isLoopMonomorphism_2930 ::
  T_IsLoopIsomorphism_2922 -> T_IsLoopMonomorphism_2886
d_isLoopMonomorphism_2930 v0
  = case coe v0 of
      C_IsLoopIsomorphism'46'constructor_56693 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism.surjective
d_surjective_2932 ::
  T_IsLoopIsomorphism_2922 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2932 v0
  = case coe v0 of
      C_IsLoopIsomorphism'46'constructor_56693 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.//-homo
d_'47''47''45'homo_2936 ::
  T_IsLoopIsomorphism_2922 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2936 v0
  = coe
      d_'47''47''45'homo_2424
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe
            d_isLoopHomomorphism_2894
            (coe d_isLoopMonomorphism_2930 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
d_'47''47''45'isMagmaHomomorphism_2938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2938 v7
du_'47''47''45'isMagmaHomomorphism_2938 ::
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
du_'47''47''45'isMagmaHomomorphism_2938 v0
  = let v1 = d_isLoopMonomorphism_2930 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_2894 (coe v1) in
       coe
         (coe
            du_'47''47''45'isMagmaHomomorphism_2434
            (coe d_isQuasigroupHomomorphism_2862 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.\\-homo
d_'92''92''45'homo_2940 ::
  T_IsLoopIsomorphism_2922 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2940 v0
  = coe
      d_'92''92''45'homo_2422
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe
            d_isLoopHomomorphism_2894
            (coe d_isLoopMonomorphism_2930 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
d_'92''92''45'isMagmaHomomorphism_2942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2942 v7
du_'92''92''45'isMagmaHomomorphism_2942 ::
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
du_'92''92''45'isMagmaHomomorphism_2942 v0
  = let v1 = d_isLoopMonomorphism_2930 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_2894 (coe v1) in
       coe
         (coe
            du_'92''92''45'isMagmaHomomorphism_2432
            (coe d_isQuasigroupHomomorphism_2862 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.injective
d_injective_2944 ::
  T_IsLoopIsomorphism_2922 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2944 v0
  = coe d_injective_2896 (coe d_isLoopMonomorphism_2930 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isLoopHomomorphism
d_isLoopHomomorphism_2946 ::
  T_IsLoopIsomorphism_2922 -> T_IsLoopHomomorphism_2854
d_isLoopHomomorphism_2946 v0
  = coe
      d_isLoopHomomorphism_2894 (coe d_isLoopMonomorphism_2930 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2948 ::
  T_IsLoopIsomorphism_2922 -> T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_2948 v0
  = coe
      d_isQuasigroupHomomorphism_2862
      (coe
         d_isLoopHomomorphism_2894 (coe d_isLoopMonomorphism_2930 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2950 ::
  T_IsLoopIsomorphism_2922 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2950 v0
  = coe
      d_isRelHomomorphism_2418
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe
            d_isLoopHomomorphism_2894
            (coe d_isLoopMonomorphism_2930 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.ε-homo
d_ε'45'homo_2952 :: T_IsLoopIsomorphism_2922 -> AgdaAny
d_ε'45'homo_2952 v0
  = coe
      d_ε'45'homo_2864
      (coe
         d_isLoopHomomorphism_2894 (coe d_isLoopMonomorphism_2930 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.∙-homo
d_'8729''45'homo_2954 ::
  T_IsLoopIsomorphism_2922 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2954 v0
  = coe
      d_'8729''45'homo_2420
      (coe
         d_isQuasigroupHomomorphism_2862
         (coe
            d_isLoopHomomorphism_2894
            (coe d_isLoopMonomorphism_2930 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
d_'8729''45'isMagmaHomomorphism_2956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2956 v7
du_'8729''45'isMagmaHomomorphism_2956 ::
  T_IsLoopIsomorphism_2922 -> T_IsMagmaHomomorphism_60
du_'8729''45'isMagmaHomomorphism_2956 v0
  = let v1 = d_isLoopMonomorphism_2930 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_2894 (coe v1) in
       coe
         (coe
            du_'8729''45'isMagmaHomomorphism_2430
            (coe d_isQuasigroupHomomorphism_2862 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.cong
d_cong_2958 ::
  T_IsLoopIsomorphism_2922 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2958 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2418
         (coe
            d_isQuasigroupHomomorphism_2862
            (coe
               d_isLoopHomomorphism_2894
               (coe d_isLoopMonomorphism_2930 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._._≈_
d__'8776'__2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2980 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._._⋆
d__'8902'_2984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  AgdaAny -> AgdaAny
d__'8902'_2984 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8902'_2984 v4
du__'8902'_2984 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  AgdaAny -> AgdaAny
du__'8902'_2984 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_414 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.Carrier
d_Carrier_2998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 -> ()
d_Carrier_2998 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.Homomorphic₁
d_Homomorphic'8321'_3034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_3034 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_3042 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_3044 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_3046 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-homo
d_'42''45'homo_3050 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3050 v0
  = coe
      d_'42''45'homo_810 (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3052 v7
du_'42''45'isMagmaHomomorphism_3052 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3052 v0
  = coe
      du_'42''45'isMagmaHomomorphism_824
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidHomomorphism_3054
du_'42''45'isMonoidHomomorphism_3054 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3054 v0 v1
  = coe du_'42''45'isMonoidHomomorphism_1196 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.homo
d_homo_3056 ::
  T_IsSemiringHomomorphism_1166 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3056 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3058 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3058 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3060 ::
  T_IsSemiringHomomorphism_1166 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3060 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe d_isNearSemiringHomomorphism_1174 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.ε-homo
d_ε'45'homo_3062 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_ε'45'homo_3062 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe d_isNearSemiringHomomorphism_1174 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_3064 :: T_IsSemiringHomomorphism_1166 -> AgdaAny
d_1'35''45'homo_3064 v0 = coe d_1'35''45'homo_1176 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3066 ::
  T_IsSemiringHomomorphism_1166 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3066 v0
  = coe d_isNearSemiringHomomorphism_1174 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3068 ::
  T_IsSemiringHomomorphism_1166 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3068 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe d_isNearSemiringHomomorphism_1174 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.cong
d_cong_3070 ::
  T_IsSemiringHomomorphism_1166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3070 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe d_isNearSemiringHomomorphism_1174 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-homo
d_'42''45'homo_3074 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3074 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3076 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3076 v7
du_'42''45'isMagmaHomomorphism_3076 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3076 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1208 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_824
            (coe d_isNearSemiringHomomorphism_1174 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
d_'42''45'isMagmaIsomorphism_3078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_3078 v7
du_'42''45'isMagmaIsomorphism_3078 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaIsomorphism_102
du_'42''45'isMagmaIsomorphism_3078 v0
  = coe
      du_'42''45'isMagmaIsomorphism_920
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_3080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_3080 v7
du_'42''45'isMagmaMonomorphism_3080 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_3080 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_866
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3082 v7
du_'42''45'isMonoidHomomorphism_3082 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3082 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_1208 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_3084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'42''45'isMonoidIsomorphism_3084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidIsomorphism_3084
du_'42''45'isMonoidIsomorphism_3084 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'42''45'isMonoidIsomorphism_3084 v0 v1
  = coe du_'42''45'isMonoidIsomorphism_1304 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_3086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_3086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_3086 v7
du_'42''45'isMonoidMonomorphism_3086 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_3086 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1244
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.homo
d_homo_3088 ::
  T_IsSemiringIsomorphism_1248 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3088 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3090 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3090 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3092 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3092 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_1208
            (coe d_isSemiringMonomorphism_1256 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_3094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
d_'43''45'isMonoidIsomorphism_3094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_3094 v7
du_'43''45'isMonoidIsomorphism_3094 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidIsomorphism_288
du_'43''45'isMonoidIsomorphism_3094 v0
  = coe
      du_'43''45'isMonoidIsomorphism_912
      (coe du_isNearSemiringIsomorphism_1296 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_3096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_3096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_3096 v7
du_'43''45'isMonoidMonomorphism_3096 ::
  T_IsSemiringIsomorphism_1248 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_3096 v0
  = let v1 = d_isSemiringMonomorphism_1256 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_858
         (coe du_isNearSemiringMonomorphism_1236 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.ε-homo
d_ε'45'homo_3098 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_ε'45'homo_3098 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_1208
               (coe d_isSemiringMonomorphism_1256 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.1#-homo
d_1'35''45'homo_3100 :: T_IsSemiringIsomorphism_1248 -> AgdaAny
d_1'35''45'homo_3100 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.injective
d_injective_3102 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3102 v0
  = coe d_injective_1210 (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3104 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3104 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_1208
         (coe d_isSemiringMonomorphism_1256 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_3106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
d_isNearSemiringIsomorphism_3106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringIsomorphism_3106
du_isNearSemiringIsomorphism_3106 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringIsomorphism_870
du_isNearSemiringIsomorphism_3106 v0 v1
  = coe du_isNearSemiringIsomorphism_1296 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_3108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_3108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_3108 v7
du_isNearSemiringMonomorphism_3108 ::
  T_IsSemiringIsomorphism_1248 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_3108 v0
  = coe
      du_isNearSemiringMonomorphism_1236
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3110 ::
  T_IsSemiringIsomorphism_1248 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3110 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_1208
                  (coe d_isSemiringMonomorphism_1256 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3112 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_3112 v0
  = coe
      d_isSemiringHomomorphism_1208
      (coe d_isSemiringMonomorphism_1256 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_3114 ::
  T_IsSemiringIsomorphism_1248 -> T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_3114 v0
  = coe d_isSemiringMonomorphism_1256 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.surjective
d_surjective_3116 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3116 v0 = coe d_surjective_1258 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.cong
d_cong_3118 ::
  T_IsSemiringIsomorphism_1248 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_1208
                     (coe d_isSemiringMonomorphism_1256 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-homo
d_'42''45'homo_3122 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3122 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3124 v7
du_'42''45'isMagmaHomomorphism_3124 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3124 v0
  = let v1 = d_isSemiringHomomorphism_1208 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_3126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
d_'42''45'isMagmaMonomorphism_3126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_3126 v7
du_'42''45'isMagmaMonomorphism_3126 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaMonomorphism_78
du_'42''45'isMagmaMonomorphism_3126 v0
  = coe
      du_'42''45'isMagmaMonomorphism_866
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3128 v7
du_'42''45'isMonoidHomomorphism_3128 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3128 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1196
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_3130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'42''45'isMonoidMonomorphism_3130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidMonomorphism_3130
du_'42''45'isMonoidMonomorphism_3130 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'42''45'isMonoidMonomorphism_3130 v0 v1
  = coe du_'42''45'isMonoidMonomorphism_1244 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.homo
d_homo_3132 ::
  T_IsSemiringMonomorphism_1200 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3132 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3134 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3134 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3136 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3136 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_1208 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_3138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
d_'43''45'isMonoidMonomorphism_3138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_3138 v7
du_'43''45'isMonoidMonomorphism_3138 ::
  T_IsSemiringMonomorphism_1200 -> T_IsMonoidMonomorphism_256
du_'43''45'isMonoidMonomorphism_3138 v0
  = coe
      du_'43''45'isMonoidMonomorphism_858
      (coe du_isNearSemiringMonomorphism_1236 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.ε-homo
d_ε'45'homo_3140 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_ε'45'homo_3140 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_1208 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.1#-homo
d_1'35''45'homo_3142 :: T_IsSemiringMonomorphism_1200 -> AgdaAny
d_1'35''45'homo_3142 v0
  = coe
      d_1'35''45'homo_1176 (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.injective
d_injective_3144 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3144 v0 = coe d_injective_1210 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3146 ::
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3146 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe d_isSemiringHomomorphism_1208 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_3148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_3148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringMonomorphism_3148
du_isNearSemiringMonomorphism_3148 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1200 -> T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_3148 v0 v1
  = coe du_isNearSemiringMonomorphism_1236 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3150 ::
  T_IsSemiringMonomorphism_1200 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3150 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_1208 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3152 ::
  T_IsSemiringMonomorphism_1200 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_3152 v0
  = coe d_isSemiringHomomorphism_1208 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.cong
d_cong_3154 ::
  T_IsSemiringMonomorphism_1200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3154 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe d_isSemiringHomomorphism_1208 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_3158 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraHomomorphism_3158
  = C_IsKleeneAlgebraHomomorphism'46'constructor_59175 T_IsSemiringHomomorphism_1166
                                                       (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3166 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_3166 v0
  = case coe v0 of
      C_IsKleeneAlgebraHomomorphism'46'constructor_59175 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism.⋆-homo
d_'8902''45'homo_3168 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3168 v0
  = case coe v0 of
      C_IsKleeneAlgebraHomomorphism'46'constructor_59175 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_3172 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3172 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_3166 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3174 v7
du_'42''45'isMagmaHomomorphism_3174 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3174 v0
  = let v1 = d_isSemiringHomomorphism_3166 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_824
         (coe d_isNearSemiringHomomorphism_1174 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3176 v7
du_'42''45'isMonoidHomomorphism_3176 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3176 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1196
      (coe d_isSemiringHomomorphism_3166 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.homo
d_homo_3178 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3178 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_3166 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3180 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3180 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_3166 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3182 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3182 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe d_isSemiringHomomorphism_3166 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_3184 :: T_IsKleeneAlgebraHomomorphism_3158 -> AgdaAny
d_ε'45'homo_3184 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe d_isSemiringHomomorphism_3166 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_3186 ::
  T_IsKleeneAlgebraHomomorphism_3158 -> AgdaAny
d_1'35''45'homo_3186 v0
  = coe
      d_1'35''45'homo_1176 (coe d_isSemiringHomomorphism_3166 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3188 ::
  T_IsKleeneAlgebraHomomorphism_3158 ->
  T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3188 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe d_isSemiringHomomorphism_3166 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_3190 ::
  T_IsKleeneAlgebraHomomorphism_3158 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3190 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe d_isSemiringHomomorphism_3166 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.cong
d_cong_3192 ::
  T_IsKleeneAlgebraHomomorphism_3158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe d_isSemiringHomomorphism_3166 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_3196 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraMonomorphism_3196
  = C_IsKleeneAlgebraMonomorphism'46'constructor_60477 T_IsKleeneAlgebraHomomorphism_3158
                                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_3204 ::
  T_IsKleeneAlgebraMonomorphism_3196 ->
  T_IsKleeneAlgebraHomomorphism_3158
d_isKleeneAlgebraHomomorphism_3204 v0
  = case coe v0 of
      C_IsKleeneAlgebraMonomorphism'46'constructor_60477 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism.injective
d_injective_3206 ::
  T_IsKleeneAlgebraMonomorphism_3196 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3206 v0
  = case coe v0 of
      C_IsKleeneAlgebraMonomorphism'46'constructor_60477 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-homo
d_'42''45'homo_3210 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3210 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_3166
            (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3212 v7
du_'42''45'isMagmaHomomorphism_3212 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3212 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_3204 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_3166 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_824
            (coe d_isNearSemiringHomomorphism_1174 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3214 v7
du_'42''45'isMonoidHomomorphism_3214 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3214 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_3204 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1196
         (coe d_isSemiringHomomorphism_3166 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.homo
d_homo_3216 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3216 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_3166
                  (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3218 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3218 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_3166
               (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3220 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3220 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_3166
            (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.ε-homo
d_ε'45'homo_3222 :: T_IsKleeneAlgebraMonomorphism_3196 -> AgdaAny
d_ε'45'homo_3222 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_3166
               (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.1#-homo
d_1'35''45'homo_3224 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> AgdaAny
d_1'35''45'homo_3224 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_3166
         (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3226 ::
  T_IsKleeneAlgebraMonomorphism_3196 ->
  T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3226 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_3166
         (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_3228 ::
  T_IsKleeneAlgebraMonomorphism_3196 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3228 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_3166
                  (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_3230 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_3230 v0
  = coe
      d_isSemiringHomomorphism_3166
      (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.⋆-homo
d_'8902''45'homo_3232 ::
  T_IsKleeneAlgebraMonomorphism_3196 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3232 v0
  = coe
      d_'8902''45'homo_3168
      (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.cong
d_cong_3234 ::
  T_IsKleeneAlgebraMonomorphism_3196 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_3166
                     (coe d_isKleeneAlgebraHomomorphism_3204 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_3238 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraIsomorphism_3238
  = C_IsKleeneAlgebraIsomorphism'46'constructor_61915 T_IsKleeneAlgebraMonomorphism_3196
                                                      (AgdaAny ->
                                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_3246 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  T_IsKleeneAlgebraMonomorphism_3196
d_isKleeneAlgebraMonomorphism_3246 v0
  = case coe v0 of
      C_IsKleeneAlgebraIsomorphism'46'constructor_61915 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism.surjective
d_surjective_3248 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3248 v0
  = case coe v0 of
      C_IsKleeneAlgebraIsomorphism'46'constructor_61915 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-homo
d_'42''45'homo_3252 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3252 v0
  = coe
      d_'42''45'homo_810
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_3166
            (coe
               d_isKleeneAlgebraHomomorphism_3204
               (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMagmaHomomorphism_60
d_'42''45'isMagmaHomomorphism_3254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3254 v7
du_'42''45'isMagmaHomomorphism_3254 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMagmaHomomorphism_60
du_'42''45'isMagmaHomomorphism_3254 v0
  = let v1 = d_isKleeneAlgebraMonomorphism_3246 (coe v0) in
    coe
      (let v2 = d_isKleeneAlgebraHomomorphism_3204 (coe v1) in
       coe
         (let v3 = d_isSemiringHomomorphism_3166 (coe v2) in
          coe
            (coe
               du_'42''45'isMagmaHomomorphism_824
               (coe d_isNearSemiringHomomorphism_1174 (coe v3)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMonoidHomomorphism_234
d_'42''45'isMonoidHomomorphism_3256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3256 v7
du_'42''45'isMonoidHomomorphism_3256 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMonoidHomomorphism_234
du_'42''45'isMonoidHomomorphism_3256 v0
  = let v1 = d_isKleeneAlgebraMonomorphism_3246 (coe v0) in
    coe
      (let v2 = d_isKleeneAlgebraHomomorphism_3204 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoidHomomorphism_1196
            (coe d_isSemiringHomomorphism_3166 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.homo
d_homo_3258 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3258 v0
  = coe
      d_homo_70
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_3166
                  (coe
                     d_isKleeneAlgebraHomomorphism_3204
                     (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3260 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_3260 v0
  = coe
      d_isMagmaHomomorphism_242
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_3166
               (coe
                  d_isKleeneAlgebraHomomorphism_3204
                  (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3262 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsMonoidHomomorphism_234
d_'43''45'isMonoidHomomorphism_3262 v0
  = coe
      d_'43''45'isMonoidHomomorphism_808
      (coe
         d_isNearSemiringHomomorphism_1174
         (coe
            d_isSemiringHomomorphism_3166
            (coe
               d_isKleeneAlgebraHomomorphism_3204
               (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.ε-homo
d_ε'45'homo_3264 :: T_IsKleeneAlgebraIsomorphism_3238 -> AgdaAny
d_ε'45'homo_3264 v0
  = coe
      d_ε'45'homo_244
      (coe
         d_'43''45'isMonoidHomomorphism_808
         (coe
            d_isNearSemiringHomomorphism_1174
            (coe
               d_isSemiringHomomorphism_3166
               (coe
                  d_isKleeneAlgebraHomomorphism_3204
                  (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.1#-homo
d_1'35''45'homo_3266 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> AgdaAny
d_1'35''45'homo_3266 v0
  = coe
      d_1'35''45'homo_1176
      (coe
         d_isSemiringHomomorphism_3166
         (coe
            d_isKleeneAlgebraHomomorphism_3204
            (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.injective
d_injective_3268 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3268 v0
  = coe
      d_injective_3206 (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_3270 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  T_IsKleeneAlgebraHomomorphism_3158
d_isKleeneAlgebraHomomorphism_3270 v0
  = coe
      d_isKleeneAlgebraHomomorphism_3204
      (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3272 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_3272 v0
  = coe
      d_isNearSemiringHomomorphism_1174
      (coe
         d_isSemiringHomomorphism_3166
         (coe
            d_isKleeneAlgebraHomomorphism_3204
            (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_3274 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3274 v0
  = coe
      d_isRelHomomorphism_68
      (coe
         d_isMagmaHomomorphism_242
         (coe
            d_'43''45'isMonoidHomomorphism_808
            (coe
               d_isNearSemiringHomomorphism_1174
               (coe
                  d_isSemiringHomomorphism_3166
                  (coe
                     d_isKleeneAlgebraHomomorphism_3204
                     (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_3276 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_3276 v0
  = coe
      d_isSemiringHomomorphism_3166
      (coe
         d_isKleeneAlgebraHomomorphism_3204
         (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.⋆-homo
d_'8902''45'homo_3278 ::
  T_IsKleeneAlgebraIsomorphism_3238 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3278 v0
  = coe
      d_'8902''45'homo_3168
      (coe
         d_isKleeneAlgebraHomomorphism_3204
         (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.cong
d_cong_3280 ::
  T_IsKleeneAlgebraIsomorphism_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3280 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_68
         (coe
            d_isMagmaHomomorphism_242
            (coe
               d_'43''45'isMonoidHomomorphism_808
               (coe
                  d_isNearSemiringHomomorphism_1174
                  (coe
                     d_isSemiringHomomorphism_3166
                     (coe
                        d_isKleeneAlgebraHomomorphism_3204
                        (coe d_isKleeneAlgebraMonomorphism_3246 (coe v0))))))))
