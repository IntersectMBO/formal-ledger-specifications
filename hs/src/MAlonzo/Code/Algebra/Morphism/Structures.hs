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

-- Algebra.Morphism.Structures.SuccessorSetMorphisms._._≈_
d__'8776'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__30 = erased
-- Algebra.Morphism.Structures.SuccessorSetMorphisms._.Carrier
d_Carrier_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 -> ()
d_Carrier_34 = erased
-- Algebra.Morphism.Structures.SuccessorSetMorphisms._.suc#
d_suc'35'_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  AgdaAny -> AgdaAny
d_suc'35'_38 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_suc'35'_38 v4
du_suc'35'_38 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  AgdaAny -> AgdaAny
du_suc'35'_38 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_suc'35'_28 (coe v0)
-- Algebra.Morphism.Structures.SuccessorSetMorphisms._.zero#
d_zero'35'_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 -> AgdaAny
d_zero'35'_40 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_zero'35'_40 v4
du_zero'35'_40 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 -> AgdaAny
du_zero'35'_40 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_zero'35'_30 (coe v0)
-- Algebra.Morphism.Structures.SuccessorSetMorphisms._.Homomorphic₀
d_Homomorphic'8320'_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_58 = erased
-- Algebra.Morphism.Structures.SuccessorSetMorphisms._.Homomorphic₁
d_Homomorphic'8321'_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_60 = erased
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetHomomorphism
d_IsSuccessorSetHomomorphism_68 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSuccessorSetHomomorphism_68
  = C_IsSuccessorSetHomomorphism'46'constructor_777 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                                    (AgdaAny -> AgdaAny) AgdaAny
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetHomomorphism.isRelHomomorphism
d_isRelHomomorphism_78 ::
  T_IsSuccessorSetHomomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_78 v0
  = case coe v0 of
      C_IsSuccessorSetHomomorphism'46'constructor_777 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetHomomorphism.suc#-homo
d_suc'35''45'homo_80 ::
  T_IsSuccessorSetHomomorphism_68 -> AgdaAny -> AgdaAny
d_suc'35''45'homo_80 v0
  = case coe v0 of
      C_IsSuccessorSetHomomorphism'46'constructor_777 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetHomomorphism.zero#-homo
d_zero'35''45'homo_82 :: T_IsSuccessorSetHomomorphism_68 -> AgdaAny
d_zero'35''45'homo_82 v0
  = case coe v0 of
      C_IsSuccessorSetHomomorphism'46'constructor_777 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism
d_IsSuccessorSetMonomorphism_86 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSuccessorSetMonomorphism_86
  = C_IsSuccessorSetMonomorphism'46'constructor_1407 T_IsSuccessorSetHomomorphism_68
                                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism.isSuccessorSetHomomorphism
d_isSuccessorSetHomomorphism_94 ::
  T_IsSuccessorSetMonomorphism_86 -> T_IsSuccessorSetHomomorphism_68
d_isSuccessorSetHomomorphism_94 v0
  = case coe v0 of
      C_IsSuccessorSetMonomorphism'46'constructor_1407 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism.injective
d_injective_96 ::
  T_IsSuccessorSetMonomorphism_86 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_96 v0
  = case coe v0 of
      C_IsSuccessorSetMonomorphism'46'constructor_1407 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_100 ::
  T_IsSuccessorSetMonomorphism_86 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_100 v0
  = coe
      d_isRelHomomorphism_78
      (coe d_isSuccessorSetHomomorphism_94 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism._.suc#-homo
d_suc'35''45'homo_102 ::
  T_IsSuccessorSetMonomorphism_86 -> AgdaAny -> AgdaAny
d_suc'35''45'homo_102 v0
  = coe
      d_suc'35''45'homo_80 (coe d_isSuccessorSetHomomorphism_94 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism._.zero#-homo
d_zero'35''45'homo_104 ::
  T_IsSuccessorSetMonomorphism_86 -> AgdaAny
d_zero'35''45'homo_104 v0
  = coe
      d_zero'35''45'homo_82
      (coe d_isSuccessorSetHomomorphism_94 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetMonomorphism.isRelMonomorphism
d_isRelMonomorphism_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSuccessorSetMonomorphism_86 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_106 v7
du_isRelMonomorphism_106 ::
  T_IsSuccessorSetMonomorphism_86 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_106 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1563
      (coe
         d_isRelHomomorphism_78
         (coe d_isSuccessorSetHomomorphism_94 (coe v0)))
      (coe d_injective_96 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism
d_IsSuccessorSetIsomorphism_110 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSuccessorSetIsomorphism_110
  = C_IsSuccessorSetIsomorphism'46'constructor_2827 T_IsSuccessorSetMonomorphism_86
                                                    (AgdaAny ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism.isSuccessorSetMonomorphism
d_isSuccessorSetMonomorphism_118 ::
  T_IsSuccessorSetIsomorphism_110 -> T_IsSuccessorSetMonomorphism_86
d_isSuccessorSetMonomorphism_118 v0
  = case coe v0 of
      C_IsSuccessorSetIsomorphism'46'constructor_2827 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism.surjective
d_surjective_120 ::
  T_IsSuccessorSetIsomorphism_110 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_120 v0
  = case coe v0 of
      C_IsSuccessorSetIsomorphism'46'constructor_2827 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.injective
d_injective_124 ::
  T_IsSuccessorSetIsomorphism_110 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_124 v0
  = coe
      d_injective_96 (coe d_isSuccessorSetMonomorphism_118 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_126 ::
  T_IsSuccessorSetIsomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_126 v0
  = coe
      d_isRelHomomorphism_78
      (coe
         d_isSuccessorSetHomomorphism_94
         (coe d_isSuccessorSetMonomorphism_118 (coe v0)))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSuccessorSetIsomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_128 v7
du_isRelMonomorphism_128 ::
  T_IsSuccessorSetIsomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_128 v0
  = coe
      du_isRelMonomorphism_106
      (coe d_isSuccessorSetMonomorphism_118 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.isSuccessorSetHomomorphism
d_isSuccessorSetHomomorphism_130 ::
  T_IsSuccessorSetIsomorphism_110 -> T_IsSuccessorSetHomomorphism_68
d_isSuccessorSetHomomorphism_130 v0
  = coe
      d_isSuccessorSetHomomorphism_94
      (coe d_isSuccessorSetMonomorphism_118 (coe v0))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.suc#-homo
d_suc'35''45'homo_132 ::
  T_IsSuccessorSetIsomorphism_110 -> AgdaAny -> AgdaAny
d_suc'35''45'homo_132 v0
  = coe
      d_suc'35''45'homo_80
      (coe
         d_isSuccessorSetHomomorphism_94
         (coe d_isSuccessorSetMonomorphism_118 (coe v0)))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism._.zero#-homo
d_zero'35''45'homo_134 ::
  T_IsSuccessorSetIsomorphism_110 -> AgdaAny
d_zero'35''45'homo_134 v0
  = coe
      d_zero'35''45'homo_82
      (coe
         d_isSuccessorSetHomomorphism_94
         (coe d_isSuccessorSetMonomorphism_118 (coe v0)))
-- Algebra.Morphism.Structures.SuccessorSetMorphisms.IsSuccessorSetIsomorphism.isRelIsomorphism
d_isRelIsomorphism_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSuccessorSet_10 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSuccessorSetIsomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_136 v7
du_isRelIsomorphism_136 ::
  T_IsSuccessorSetIsomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelIsomorphism'46'constructor_3019
      (coe
         du_isRelMonomorphism_106
         (coe d_isSuccessorSetMonomorphism_118 (coe v0)))
      (coe d_surjective_120 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms._._∙_
d__'8729'__154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__154 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__154 v4
du__'8729'__154 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__154 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__58 (coe v0)
-- Algebra.Morphism.Structures.MagmaMorphisms._._≈_
d__'8776'__156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__156 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Carrier
d_Carrier_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 -> ()
d_Carrier_160 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Homomorphic₂
d_Homomorphic'8322'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_182 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism
d_IsMagmaHomomorphism_188 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaHomomorphism_188
  = C_IsMagmaHomomorphism'46'constructor_4629 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                              (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_196 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_196 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_4629 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.homo
d_homo_198 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_198 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_4629 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism._.cong
d_cong_202 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism
d_IsMagmaMonomorphism_206 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaMonomorphism_206
  = C_IsMagmaMonomorphism'46'constructor_5763 T_IsMagmaHomomorphism_188
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_214 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_214 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_5763 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.injective
d_injective_216 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_216 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_5763 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.homo
d_homo_220 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_220 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_222 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_222 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.cong
d_cong_224 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_224 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_226 v7
du_isRelMonomorphism_226 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_226 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1563
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
      (coe d_injective_216 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism
d_IsMagmaIsomorphism_230 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaIsomorphism_230
  = C_IsMagmaIsomorphism'46'constructor_7199 T_IsMagmaMonomorphism_206
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_238 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_238 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_7199 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.surjective
d_surjective_240 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_240 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_7199 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.homo
d_homo_244 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_244 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.injective
d_injective_246 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_246 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_248 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_248 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_250 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_250 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_252 v7
du_isRelMonomorphism_252 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_252 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.cong
d_cong_254 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_254 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_256 v7
du_isRelIsomorphism_256 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_256 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelIsomorphism'46'constructor_3019
      (coe
         du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0)))
      (coe d_surjective_240 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._._≈_
d__'8776'__276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__276 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.Carrier
d_Carrier_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 -> ()
d_Carrier_280 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.ε
d_ε_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 -> AgdaAny
d_ε_284 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_284 v4
du_ε_284 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 -> AgdaAny
du_ε_284 v0 = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.Homomorphic₀
d_Homomorphic'8320'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_302 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_312 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_314 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_316 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.homo
d_homo_320 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_320 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_322 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_322 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.cong
d_cong_324 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.homo
d_homo_328 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_328 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.injective
d_injective_330 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_330 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_332 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_332 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_334 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_334 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_336 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_336 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_338
du_isRelIsomorphism_338 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_338 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_340 v7
du_isRelMonomorphism_340 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_340 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_342 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_342 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.cong
d_cong_344 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_344 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.homo
d_homo_348 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_348 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.injective
d_injective_350 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_350 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_352 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_352 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_354 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_354 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_356
du_isRelMonomorphism_356 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_356 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.cong
d_cong_358 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism
d_IsMonoidHomomorphism_362 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidHomomorphism_362
  = C_IsMonoidHomomorphism'46'constructor_9411 T_IsMagmaHomomorphism_188
                                               AgdaAny
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_370 ::
  T_IsMonoidHomomorphism_362 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_370 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_9411 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_372 :: T_IsMonoidHomomorphism_362 -> AgdaAny
d_ε'45'homo_372 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_9411 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.homo
d_homo_376 ::
  T_IsMonoidHomomorphism_362 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_376 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_378 ::
  T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_378 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.cong
d_cong_380 ::
  T_IsMonoidHomomorphism_362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_380 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism
d_IsMonoidMonomorphism_384 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidMonomorphism_384
  = C_IsMonoidMonomorphism'46'constructor_10237 T_IsMonoidHomomorphism_362
                                                (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_392 ::
  T_IsMonoidMonomorphism_384 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_392 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_10237 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.injective
d_injective_394 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_394 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_10237 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.homo
d_homo_398 ::
  T_IsMonoidMonomorphism_384 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_398 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_400 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_400 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_402 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_402 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.ε-homo
d_ε'45'homo_404 :: T_IsMonoidMonomorphism_384 -> AgdaAny
d_ε'45'homo_404 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.cong
d_cong_406 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_392 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_408 v7
du_isMagmaMonomorphism_408 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_408 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
      (coe d_injective_394 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_412 v7
du_isRelMonomorphism_412 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_412 v0
  = coe
      du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism
d_IsMonoidIsomorphism_416 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidIsomorphism_416
  = C_IsMonoidIsomorphism'46'constructor_11597 T_IsMonoidMonomorphism_384
                                               (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_424 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_424 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_11597 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.surjective
d_surjective_426 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_426 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_11597 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.homo
d_homo_430 ::
  T_IsMonoidIsomorphism_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_430 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.injective
d_injective_432 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_432 v0
  = coe d_injective_394 (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_434 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_434 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_436 v7
du_isMagmaMonomorphism_436 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_436 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_438 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_438 v0
  = coe
      d_isMonoidHomomorphism_392
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_440 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_440 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_442 v7
du_isRelMonomorphism_442 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_442 v0
  = let v1 = d_isMonoidMonomorphism_424 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.ε-homo
d_ε'45'homo_444 :: T_IsMonoidIsomorphism_416 -> AgdaAny
d_ε'45'homo_444 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.cong
d_cong_446 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_392
               (coe d_isMonoidMonomorphism_424 (coe v0)))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_448 v7
du_isMagmaIsomorphism_448 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_448 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_isMagmaMonomorphism_408
         (coe d_isMonoidMonomorphism_424 (coe v0)))
      (coe d_surjective_426 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_452 v7
du_isRelIsomorphism_452 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_452 v0
  = coe
      du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._._⁻¹
d__'8315''185'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  AgdaAny -> AgdaAny
d__'8315''185'_470 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8315''185'_470 v4
du__'8315''185'_470 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  AgdaAny -> AgdaAny
du__'8315''185'_470 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_126 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._._≈_
d__'8776'__474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__474 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Carrier
d_Carrier_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 -> ()
d_Carrier_478 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Homomorphic₁
d_Homomorphic'8321'_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_508 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_516 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_518 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_520 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.homo
d_homo_524 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_524 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_526 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_526 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.cong
d_cong_528 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_528 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.homo
d_homo_532 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_532 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.injective
d_injective_534 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_534 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_536 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_536 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_538 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_538 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_540 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_540 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_542
du_isRelIsomorphism_542 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_542 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_544 v7
du_isRelMonomorphism_544 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_544 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_546 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_546 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.cong
d_cong_548 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_548 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.homo
d_homo_552 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_552 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.injective
d_injective_554 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_554 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_556 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_556 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_558 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_558 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_560
du_isRelMonomorphism_560 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_560 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.cong
d_cong_562 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_562 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_566 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_568 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_570 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.homo
d_homo_574 ::
  T_IsMonoidHomomorphism_362 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_574 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_576 ::
  T_IsMonoidHomomorphism_362 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_576 v0
  = coe d_isMagmaHomomorphism_370 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_578 ::
  T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_578 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_580 :: T_IsMonoidHomomorphism_362 -> AgdaAny
d_ε'45'homo_580 v0 = coe d_ε'45'homo_372 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.cong
d_cong_582 ::
  T_IsMonoidHomomorphism_362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_582 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.homo
d_homo_586 ::
  T_IsMonoidIsomorphism_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_586 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.injective
d_injective_588 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_588 v0
  = coe d_injective_394 (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_590 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_590 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_592
du_isMagmaIsomorphism_592 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_592 v0 v1 = coe du_isMagmaIsomorphism_448 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_594 v7
du_isMagmaMonomorphism_594 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_594 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_596 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_596 v0
  = coe
      d_isMonoidHomomorphism_392
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_598 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_598 v0
  = coe d_isMonoidMonomorphism_424 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_600 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_600 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_602 v7
du_isRelIsomorphism_602 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_602 v0
  = coe
      du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_604 v7
du_isRelMonomorphism_604 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_604 v0
  = let v1 = d_isMonoidMonomorphism_424 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.surjective
d_surjective_606 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_606 v0 = coe d_surjective_426 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_608 :: T_IsMonoidIsomorphism_416 -> AgdaAny
d_ε'45'homo_608 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.cong
d_cong_610 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_392
               (coe d_isMonoidMonomorphism_424 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.homo
d_homo_614 ::
  T_IsMonoidMonomorphism_384 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_614 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.injective
d_injective_616 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_616 v0 = coe d_injective_394 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_618 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_618 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_620
du_isMagmaMonomorphism_620 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_620 v0 v1
  = coe du_isMagmaMonomorphism_408 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_622 ::
  T_IsMonoidMonomorphism_384 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_622 v0
  = coe d_isMonoidHomomorphism_392 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_624 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_624 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_626 v7
du_isRelMonomorphism_626 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_626 v0
  = coe
      du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_628 :: T_IsMonoidMonomorphism_384 -> AgdaAny
d_ε'45'homo_628 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.cong
d_cong_630 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_630 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_392 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism
d_IsGroupHomomorphism_634 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupHomomorphism_634
  = C_IsGroupHomomorphism'46'constructor_14585 T_IsMonoidHomomorphism_362
                                               (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_642 ::
  T_IsGroupHomomorphism_634 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_642 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_14585 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_644 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_644 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_14585 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.homo
d_homo_648 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_648 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_650 ::
  T_IsGroupHomomorphism_634 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_650 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_652 ::
  T_IsGroupHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_652 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.ε-homo
d_ε'45'homo_654 :: T_IsGroupHomomorphism_634 -> AgdaAny
d_ε'45'homo_654 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.cong
d_cong_656 ::
  T_IsGroupHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_656 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_642 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism
d_IsGroupMonomorphism_660 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupMonomorphism_660
  = C_IsGroupMonomorphism'46'constructor_15537 T_IsGroupHomomorphism_634
                                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_668 ::
  T_IsGroupMonomorphism_660 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_668 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_15537 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.injective
d_injective_670 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_670 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_15537 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_674 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_674 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_676 ::
  T_IsGroupMonomorphism_660 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_676 v0
  = coe
      d_isMonoidHomomorphism_642 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_678 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_678 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.ε-homo
d_ε'45'homo_680 :: T_IsGroupMonomorphism_660 -> AgdaAny
d_ε'45'homo_680 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_682 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_682 v0
  = coe
      d_'8315''185''45'homo_644 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.homo
d_homo_684 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_684 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.cong
d_cong_686 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_686 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_isGroupHomomorphism_668 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_688 v7
du_isMonoidMonomorphism_688 ::
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_688 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_10237
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
      (coe d_injective_670 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_692 v7
du_isMagmaMonomorphism_692 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_692 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_isMonoidMonomorphism_688 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_694 v7
du_isRelMonomorphism_694 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_694 v0
  = let v1 = coe du_isMonoidMonomorphism_688 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism
d_IsGroupIsomorphism_698 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupIsomorphism_698
  = C_IsGroupIsomorphism'46'constructor_17073 T_IsGroupMonomorphism_660
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_706 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupMonomorphism_660
d_isGroupMonomorphism_706 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_17073 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.surjective
d_surjective_708 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_708 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_17073 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.injective
d_injective_712 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_712 v0
  = coe d_injective_670 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isGroupHomomorphism
d_isGroupHomomorphism_714 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_714 v0
  = coe
      d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_716 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_716 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_718 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_718 v7
du_isMagmaMonomorphism_718 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_718 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_720 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_720 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_722 v7
du_isMonoidMonomorphism_722 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_722 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_724 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_724 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_726 v7
du_isRelMonomorphism_726 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_726 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.ε-homo
d_ε'45'homo_728 :: T_IsGroupIsomorphism_698 -> AgdaAny
d_ε'45'homo_728 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.⁻¹-homo
d_'8315''185''45'homo_730 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_730 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.homo
d_homo_732 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_732 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.cong
d_cong_734 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_734 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_isGroupHomomorphism_668
                  (coe d_isGroupMonomorphism_706 (coe v0))))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_736 v7
du_isMonoidIsomorphism_736 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_736 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_11597
      (coe
         du_isMonoidMonomorphism_688
         (coe d_isGroupMonomorphism_706 (coe v0)))
      (coe d_surjective_708 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_740 v7
du_isMagmaIsomorphism_740 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_740 v0
  = coe
      du_isMagmaIsomorphism_448 (coe du_isMonoidIsomorphism_736 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_742 v7
du_isRelIsomorphism_742 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_742 v0
  = let v1 = coe du_isMonoidIsomorphism_736 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._._*_
d__'42'__760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__760 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__760 v4
du__'42'__760 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__760 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__162 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms._._≈_
d__'8776'__764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__764 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Carrier
d_Carrier_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 -> ()
d_Carrier_776 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism
d_IsMonoidHomomorphism_800 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism
d_IsMonoidIsomorphism_802 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism
d_IsMonoidMonomorphism_804 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.homo
d_homo_808 ::
  T_IsMonoidHomomorphism_362 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_808 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_810 ::
  T_IsMonoidHomomorphism_362 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_810 v0
  = coe d_isMagmaHomomorphism_370 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_812 ::
  T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_812 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_814 :: T_IsMonoidHomomorphism_362 -> AgdaAny
d_ε'45'homo_814 v0 = coe d_ε'45'homo_372 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.cong
d_cong_816 ::
  T_IsMonoidHomomorphism_362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_816 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.homo
d_homo_820 ::
  T_IsMonoidIsomorphism_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_820 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.injective
d_injective_822 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_822 v0
  = coe d_injective_394 (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_824 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_824 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_826
du_isMagmaIsomorphism_826 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_826 v0 v1 = coe du_isMagmaIsomorphism_448 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_828 v7
du_isMagmaMonomorphism_828 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_828 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_830 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_830 v0
  = coe
      d_isMonoidHomomorphism_392
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_832 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_832 v0
  = coe d_isMonoidMonomorphism_424 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_834 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_834 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_836 v7
du_isRelIsomorphism_836 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_836 v0
  = coe
      du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_838 v7
du_isRelMonomorphism_838 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_838 v0
  = let v1 = d_isMonoidMonomorphism_424 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.surjective
d_surjective_840 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_840 v0 = coe d_surjective_426 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_842 :: T_IsMonoidIsomorphism_416 -> AgdaAny
d_ε'45'homo_842 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.cong
d_cong_844 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_392
               (coe d_isMonoidMonomorphism_424 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.homo
d_homo_848 ::
  T_IsMonoidMonomorphism_384 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_848 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.injective
d_injective_850 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_850 v0 = coe d_injective_394 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_852 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_852 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_854
du_isMagmaMonomorphism_854 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_854 v0 v1
  = coe du_isMagmaMonomorphism_408 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_856 ::
  T_IsMonoidMonomorphism_384 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_856 v0
  = coe d_isMonoidHomomorphism_392 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_858 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_858 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_860 v7
du_isRelMonomorphism_860 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_860 v0
  = coe
      du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_862 :: T_IsMonoidMonomorphism_384 -> AgdaAny
d_ε'45'homo_862 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.cong
d_cong_864 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_392 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism
d_IsMagmaHomomorphism_868 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism
d_IsMagmaIsomorphism_870 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism
d_IsMagmaMonomorphism_872 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.homo
d_homo_876 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_876 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_878 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_878 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.cong
d_cong_880 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_880 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.homo
d_homo_884 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_884 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.injective
d_injective_886 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_886 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_888 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_888 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_890 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_890 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_892 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_892 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_894 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_894
du_isRelIsomorphism_894 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_894 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_896 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_896 v7
du_isRelMonomorphism_896 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_896 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.surjective
d_surjective_898 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_898 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.cong
d_cong_900 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_900 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.homo
d_homo_904 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_904 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.injective
d_injective_906 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_906 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_908 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_908 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_910 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_910 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_912
du_isRelMonomorphism_912 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_912 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.cong
d_cong_914 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_914 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Homomorphic₂
d_Homomorphic'8322'_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_922 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_928 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringHomomorphism_928
  = C_IsNearSemiringHomomorphism'46'constructor_19989 T_IsMonoidHomomorphism_362
                                                      (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_936 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_936 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_19989 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_938 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_938 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_19989 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.homo
d_homo_942 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_942 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_944 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_944 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.ε-homo
d_ε'45'homo_946 :: T_IsNearSemiringHomomorphism_928 -> AgdaAny
d_ε'45'homo_946 v0
  = coe
      d_ε'45'homo_372 (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_948 ::
  T_IsNearSemiringHomomorphism_928 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_948 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.cong
d_cong_950 ::
  T_IsNearSemiringHomomorphism_928 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_950 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_952 v7
du_'42''45'isMagmaHomomorphism_952 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_952 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_4629
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))))
      (coe d_'42''45'homo_938 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_956 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringMonomorphism_956
  = C_IsNearSemiringMonomorphism'46'constructor_21119 T_IsNearSemiringHomomorphism_928
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_964 ::
  T_IsNearSemiringMonomorphism_956 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_964 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_21119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.injective
d_injective_966 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_966 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_21119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.*-homo
d_'42''45'homo_970 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_970 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_972 v7
du_'42''45'isMagmaHomomorphism_972 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_972 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.homo
d_homo_974 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_974 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_976 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_976 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_978 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_978 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.ε-homo
d_ε'45'homo_980 :: T_IsNearSemiringMonomorphism_956 -> AgdaAny
d_ε'45'homo_980 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_982 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_982 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.cong
d_cong_984 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_984 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_964 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_986 v7
du_'43''45'isMonoidMonomorphism_986 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_986 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_10237
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
      (coe d_injective_966 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_990 v7
du_isMagmaMonomorphism_990 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_990 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_'43''45'isMonoidMonomorphism_986 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_992 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_992 v7
du_isRelMonomorphism_992 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_992 v0
  = let v1 = coe du_'43''45'isMonoidMonomorphism_986 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_994 v7
du_'42''45'isMagmaMonomorphism_994 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_994 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
      (coe d_injective_966 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_998 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringIsomorphism_998
  = C_IsNearSemiringIsomorphism'46'constructor_23007 T_IsNearSemiringMonomorphism_956
                                                     (AgdaAny ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1006 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_1006 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_23007 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.surjective
d_surjective_1008 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1008 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_23007 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-homo
d_'42''45'homo_1012 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1012 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1014 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1014 v7
du_'42''45'isMagmaHomomorphism_1014 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1014 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_964 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1016 v7
du_'42''45'isMagmaMonomorphism_1016 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1016 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.homo
d_homo_1018 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1018 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1020 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1020 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1022 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1022 v7
du_isMagmaMonomorphism_1022 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1022 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_'43''45'isMonoidMonomorphism_986 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1024 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1024 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1026 v7
du_'43''45'isMonoidMonomorphism_1026 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1026 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.ε-homo
d_ε'45'homo_1028 :: T_IsNearSemiringIsomorphism_998 -> AgdaAny
d_ε'45'homo_1028 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.injective
d_injective_1030 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1030 v0
  = coe
      d_injective_966 (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1032 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1032 v0
  = coe
      d_isNearSemiringHomomorphism_964
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1034 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1034 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1036 v7
du_isRelMonomorphism_1036 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1036 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isMonoidMonomorphism_986 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.cong
d_cong_1038 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1038 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_964
                  (coe d_isNearSemiringMonomorphism_1006 (coe v0))))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_1040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_1040 v7
du_'43''45'isMonoidIsomorphism_1040 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_1040 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_11597
      (coe
         du_'43''45'isMonoidMonomorphism_986
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
      (coe d_surjective_1008 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1044 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1044 v7
du_isMagmaIsomorphism_1044 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1044 v0
  = coe
      du_isMagmaIsomorphism_448
      (coe du_'43''45'isMonoidIsomorphism_1040 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1046 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1046 v7
du_isRelIsomorphism_1046 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1046 v0
  = let v1 = coe du_'43''45'isMonoidIsomorphism_1040 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_1048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1048 v7
du_'42''45'isMagmaIsomorphism_1048 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_1048 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_'42''45'isMagmaMonomorphism_994
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
      (coe d_surjective_1008 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._._≈_
d__'8776'__1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1070 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms._.1#
d_1'35'_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 -> AgdaAny
d_1'35'_1084 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_1084 v4
du_1'35'_1084 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 -> AgdaAny
du_1'35'_1084 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_208 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.Carrier
d_Carrier_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 -> ()
d_Carrier_1086 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1118 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1120 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1122 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.homo
d_homo_1126 ::
  T_IsMonoidHomomorphism_362 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1126 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1128 ::
  T_IsMonoidHomomorphism_362 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1128 v0
  = coe d_isMagmaHomomorphism_370 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1130 ::
  T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1130 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1132 :: T_IsMonoidHomomorphism_362 -> AgdaAny
d_ε'45'homo_1132 v0 = coe d_ε'45'homo_372 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.cong
d_cong_1134 ::
  T_IsMonoidHomomorphism_362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.homo
d_homo_1138 ::
  T_IsMonoidIsomorphism_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1138 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.injective
d_injective_1140 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1140 v0
  = coe d_injective_394 (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1142 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1142 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1144
du_isMagmaIsomorphism_1144 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1144 v0 v1 = coe du_isMagmaIsomorphism_448 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1146 v7
du_isMagmaMonomorphism_1146 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1146 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1148 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1148 v0
  = coe
      d_isMonoidHomomorphism_392
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1150 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1150 v0
  = coe d_isMonoidMonomorphism_424 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1152 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1152 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1154 v7
du_isRelIsomorphism_1154 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1154 v0
  = coe
      du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1156 v7
du_isRelMonomorphism_1156 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1156 v0
  = let v1 = d_isMonoidMonomorphism_424 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_1158 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1158 v0 = coe d_surjective_426 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1160 :: T_IsMonoidIsomorphism_416 -> AgdaAny
d_ε'45'homo_1160 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.cong
d_cong_1162 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_392
               (coe d_isMonoidMonomorphism_424 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.homo
d_homo_1166 ::
  T_IsMonoidMonomorphism_384 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1166 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.injective
d_injective_1168 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1168 v0 = coe d_injective_394 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1170 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1170 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1172
du_isMagmaMonomorphism_1172 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1172 v0 v1
  = coe du_isMagmaMonomorphism_408 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1174 ::
  T_IsMonoidMonomorphism_384 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1174 v0
  = coe d_isMonoidHomomorphism_392 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1176 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1176 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1178 v7
du_isRelMonomorphism_1178 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1178 v0
  = coe
      du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1180 :: T_IsMonoidMonomorphism_384 -> AgdaAny
d_ε'45'homo_1180 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.cong
d_cong_1182 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_392 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.Homomorphic₀
d_Homomorphic'8320'_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_1186 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_1196 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_1198 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_1200 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_1204 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1204 v0 = coe d_'42''45'homo_938 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaHomomorphism_1206
du_'42''45'isMagmaHomomorphism_1206 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1206 v0 v1
  = coe du_'42''45'isMagmaHomomorphism_952 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.homo
d_homo_1208 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1208 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1210 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1210 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1212 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1212 v0
  = coe d_'43''45'isMonoidHomomorphism_936 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.ε-homo
d_ε'45'homo_1214 :: T_IsNearSemiringHomomorphism_928 -> AgdaAny
d_ε'45'homo_1214 v0
  = coe
      d_ε'45'homo_372 (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1216 ::
  T_IsNearSemiringHomomorphism_928 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1216 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringHomomorphism.cong
d_cong_1218 ::
  T_IsNearSemiringHomomorphism_928 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1218 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-homo
d_'42''45'homo_1222 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1222 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1224 v7
du_'42''45'isMagmaHomomorphism_1224 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1224 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_964 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_1226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaIsomorphism_1226
du_'42''45'isMagmaIsomorphism_1226 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_1226 v0 v1
  = coe du_'42''45'isMagmaIsomorphism_1048 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1228 v7
du_'42''45'isMagmaMonomorphism_1228 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1228 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.homo
d_homo_1230 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1230 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1232 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1232 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1234 v7
du_isMagmaIsomorphism_1234 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1234 v0
  = coe
      du_isMagmaIsomorphism_448
      (coe du_'43''45'isMonoidIsomorphism_1040 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1236 v7
du_isMagmaMonomorphism_1236 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1236 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_'43''45'isMonoidMonomorphism_986 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1238 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1238 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_1240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidIsomorphism_1240
du_'43''45'isMonoidIsomorphism_1240 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_1240 v0 v1
  = coe du_'43''45'isMonoidIsomorphism_1040 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1242 v7
du_'43''45'isMonoidMonomorphism_1242 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1242 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.ε-homo
d_ε'45'homo_1244 :: T_IsNearSemiringIsomorphism_998 -> AgdaAny
d_ε'45'homo_1244 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.injective
d_injective_1246 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1246 v0
  = coe
      d_injective_966 (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1248 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1248 v0
  = coe
      d_isNearSemiringHomomorphism_964
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1250 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_1250 v0
  = coe d_isNearSemiringMonomorphism_1006 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1252 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1252 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1254 v7
du_isRelIsomorphism_1254 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1254 v0
  = let v1 = coe du_'43''45'isMonoidIsomorphism_1040 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1256 v7
du_isRelMonomorphism_1256 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1256 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isMonoidMonomorphism_986 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.surjective
d_surjective_1258 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1258 v0 = coe d_surjective_1008 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringIsomorphism.cong
d_cong_1260 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1260 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_964
                  (coe d_isNearSemiringMonomorphism_1006 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-homo
d_'42''45'homo_1264 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1264 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1266 v7
du_'42''45'isMagmaHomomorphism_1266 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1266 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaMonomorphism_1268
du_'42''45'isMagmaMonomorphism_1268 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1268 v0 v1
  = coe du_'42''45'isMagmaMonomorphism_994 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.homo
d_homo_1270 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1270 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1272 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1272 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1274 v7
du_isMagmaMonomorphism_1274 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1274 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_'43''45'isMonoidMonomorphism_986 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1276 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1276 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidMonomorphism_1278
du_'43''45'isMonoidMonomorphism_1278 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1278 v0 v1
  = coe du_'43''45'isMonoidMonomorphism_986 v1
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.ε-homo
d_ε'45'homo_1280 :: T_IsNearSemiringMonomorphism_956 -> AgdaAny
d_ε'45'homo_1280 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.injective
d_injective_1282 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1282 v0 = coe d_injective_966 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1284 ::
  T_IsNearSemiringMonomorphism_956 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1284 v0
  = coe d_isNearSemiringHomomorphism_964 (coe v0)
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1286 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1286 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1288 v7
du_isRelMonomorphism_1288 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1288 v0
  = let v1 = coe du_'43''45'isMonoidMonomorphism_986 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms._.IsNearSemiringMonomorphism.cong
d_cong_1290 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_964 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism
d_IsSemiringHomomorphism_1294 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringHomomorphism_1294
  = C_IsSemiringHomomorphism'46'constructor_26561 T_IsNearSemiringHomomorphism_928
                                                  AgdaAny
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1302 ::
  T_IsSemiringHomomorphism_1294 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1302 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_26561 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_1304 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_1'35''45'homo_1304 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_26561 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.*-homo
d_'42''45'homo_1308 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1308 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1310 v7
du_'42''45'isMagmaHomomorphism_1310 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1310 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.homo
d_homo_1312 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1312 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1314 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1314 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1316 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1316 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.ε-homo
d_ε'45'homo_1318 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_ε'45'homo_1318 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1320 ::
  T_IsSemiringHomomorphism_1294 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1320 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.cong
d_cong_1322 ::
  T_IsSemiringHomomorphism_1294 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_1302 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_1324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1324 v7
du_'42''45'isMonoidHomomorphism_1324 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_1324 v0
  = coe
      C_IsMonoidHomomorphism'46'constructor_9411
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
      (coe d_1'35''45'homo_1304 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism
d_IsSemiringMonomorphism_1328 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringMonomorphism_1328
  = C_IsSemiringMonomorphism'46'constructor_27871 T_IsSemiringHomomorphism_1294
                                                  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1336 ::
  T_IsSemiringMonomorphism_1328 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_1336 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_27871 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.injective
d_injective_1338 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1338 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_27871 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-homo
d_'42''45'homo_1342 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1342 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1344 v7
du_'42''45'isMagmaHomomorphism_1344 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1344 v0
  = let v1 = d_isSemiringHomomorphism_1336 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_1346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1346 v7
du_'42''45'isMonoidHomomorphism_1346 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_1346 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.homo
d_homo_1348 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1348 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1350 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1350 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1352 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1352 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.ε-homo
d_ε'45'homo_1354 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_ε'45'homo_1354 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.1#-homo
d_1'35''45'homo_1356 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_1'35''45'homo_1356 v0
  = coe
      d_1'35''45'homo_1304 (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1358 ::
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1358 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1360 ::
  T_IsSemiringMonomorphism_1328 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1360 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.cong
d_cong_1362 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1362 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_1336 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_1364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_1364 v7
du_isNearSemiringMonomorphism_1364 ::
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_1364 v0
  = coe
      C_IsNearSemiringMonomorphism'46'constructor_21119
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
      (coe d_injective_1338 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1368 v7
du_'42''45'isMagmaMonomorphism_1368 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1368 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1370 v7
du_'43''45'isMonoidMonomorphism_1370 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1370 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_1372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1372 v7
du_'42''45'isMonoidMonomorphism_1372 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_1372 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_10237
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
      (coe d_injective_1338 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism
d_IsSemiringIsomorphism_1376 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringIsomorphism_1376
  = C_IsSemiringIsomorphism'46'constructor_29931 T_IsSemiringMonomorphism_1328
                                                 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_1384 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_1384 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_29931 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.surjective
d_surjective_1386 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1386 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_29931 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-homo
d_'42''45'homo_1390 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1390 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1392 v7
du_'42''45'isMagmaHomomorphism_1392 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1392 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1336 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_952
            (coe d_isNearSemiringHomomorphism_1302 (coe v2))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1394 v7
du_'42''45'isMagmaMonomorphism_1394 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1394 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_994
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_1396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_1396 v7
du_'42''45'isMonoidHomomorphism_1396 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_1396 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_1336 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_1398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1398 v7
du_'42''45'isMonoidMonomorphism_1398 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_1398 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1372
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.homo
d_homo_1400 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1400 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1402 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1402 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1404 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1404 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1406 v7
du_'43''45'isMonoidMonomorphism_1406 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1406 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_986
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.ε-homo
d_ε'45'homo_1408 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_ε'45'homo_1408 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.1#-homo
d_1'35''45'homo_1410 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_1'35''45'homo_1410 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.injective
d_injective_1412 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1412 v0
  = coe d_injective_1338 (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1414 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1414 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_1416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_1416 v7
du_isNearSemiringMonomorphism_1416 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_1416 v0
  = coe
      du_isNearSemiringMonomorphism_1364
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1418 ::
  T_IsSemiringIsomorphism_1376 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1418 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_1420 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_1420 v0
  = coe
      d_isSemiringHomomorphism_1336
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.cong
d_cong_1422 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1422 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_1336
                     (coe d_isSemiringMonomorphism_1384 (coe v0)))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_1424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
d_isNearSemiringIsomorphism_1424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringIsomorphism_1424 v7
du_isNearSemiringIsomorphism_1424 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
du_isNearSemiringIsomorphism_1424 v0
  = coe
      C_IsNearSemiringIsomorphism'46'constructor_23007
      (coe
         du_isNearSemiringMonomorphism_1364
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
      (coe d_surjective_1386 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_1428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1428 v7
du_'42''45'isMagmaIsomorphism_1428 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_1428 v0
  = coe
      du_'42''45'isMagmaIsomorphism_1048
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_1430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_1430 v7
du_'43''45'isMonoidIsomorphism_1430 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_1430 v0
  = coe
      du_'43''45'isMonoidIsomorphism_1040
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'42''45'isMonoidIsomorphism_1432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_1432 v7
du_'42''45'isMonoidIsomorphism_1432 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'42''45'isMonoidIsomorphism_1432 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_11597
      (coe
         du_'42''45'isMonoidMonomorphism_1372
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
      (coe d_surjective_1386 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._._*_
d__'42'__1450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1450 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__1450 v4
du__'42'__1450 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__1450 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__252 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._._≈_
d__'8776'__1454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1454 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._.Carrier
d_Carrier_1470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 -> ()
d_Carrier_1470 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism
d_IsGroupHomomorphism_1502 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism
d_IsGroupIsomorphism_1504 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism
d_IsGroupMonomorphism_1506 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.homo
d_homo_1510 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1510 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1512 ::
  T_IsGroupHomomorphism_634 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1512 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1514 ::
  T_IsGroupHomomorphism_634 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1514 v0
  = coe d_isMonoidHomomorphism_642 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1516 ::
  T_IsGroupHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1516 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.ε-homo
d_ε'45'homo_1518 :: T_IsGroupHomomorphism_634 -> AgdaAny
d_ε'45'homo_1518 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_1520 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1520 v0
  = coe d_'8315''185''45'homo_644 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupHomomorphism.cong
d_cong_1522 ::
  T_IsGroupHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1522 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_642 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.injective
d_injective_1526 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1526 v0
  = coe d_injective_670 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1528 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_1528 v0
  = coe
      d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_1530 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupMonomorphism_660
d_isGroupMonomorphism_1530 v0
  = coe d_isGroupMonomorphism_706 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1532 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1532 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1534 v7
du_isMagmaIsomorphism_1534 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1534 v0
  = coe
      du_isMagmaIsomorphism_448 (coe du_isMonoidIsomorphism_736 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1536 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1536 v7
du_isMagmaMonomorphism_1536 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1536 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1538 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1538 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_1540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_1540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidIsomorphism_1540
du_isMonoidIsomorphism_1540 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_1540 v0 v1
  = coe du_isMonoidIsomorphism_736 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1542 v7
du_isMonoidMonomorphism_1542 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_1542 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1544 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1544 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1546 v7
du_isRelIsomorphism_1546 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1546 v0
  = let v1 = coe du_isMonoidIsomorphism_736 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1548 v7
du_isRelMonomorphism_1548 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1548 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.surjective
d_surjective_1550 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1550 v0 = coe d_surjective_708 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.ε-homo
d_ε'45'homo_1552 :: T_IsGroupIsomorphism_698 -> AgdaAny
d_ε'45'homo_1552 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.⁻¹-homo
d_'8315''185''45'homo_1554 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1554 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.homo
d_homo_1556 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1556 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupIsomorphism.cong
d_cong_1558 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_isGroupHomomorphism_668
                  (coe d_isGroupMonomorphism_706 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.injective
d_injective_1562 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1562 v0 = coe d_injective_670 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1564 ::
  T_IsGroupMonomorphism_660 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_1564 v0
  = coe d_isGroupHomomorphism_668 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1566 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1566 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1568 v7
du_isMagmaMonomorphism_1568 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1568 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_isMonoidMonomorphism_688 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1570 ::
  T_IsGroupMonomorphism_660 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1570 v0
  = coe
      d_isMonoidHomomorphism_642 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidMonomorphism_1572
du_isMonoidMonomorphism_1572 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_1572 v0 v1
  = coe du_isMonoidMonomorphism_688 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1574 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1574 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1576 v7
du_isRelMonomorphism_1576 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1576 v0
  = let v1 = coe du_isMonoidMonomorphism_688 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.ε-homo
d_ε'45'homo_1578 :: T_IsGroupMonomorphism_660 -> AgdaAny
d_ε'45'homo_1578 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.⁻¹-homo
d_'8315''185''45'homo_1580 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1580 v0
  = coe
      d_'8315''185''45'homo_644 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.homo
d_homo_1582 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1582 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+.IsGroupMonomorphism.cong
d_cong_1584 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1584 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_isGroupHomomorphism_668 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism
d_IsMagmaHomomorphism_1588 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism
d_IsMagmaIsomorphism_1590 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism
d_IsMagmaMonomorphism_1592 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.homo
d_homo_1596 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1596 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1598 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1598 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaHomomorphism.cong
d_cong_1600 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1600 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.homo
d_homo_1604 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1604 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.injective
d_injective_1606 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1606 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1608 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1608 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1610 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1610 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1612 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1612 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_1614
du_isRelIsomorphism_1614 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1614 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1616 v7
du_isRelMonomorphism_1616 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1616 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.surjective
d_surjective_1618 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1618 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaIsomorphism.cong
d_cong_1620 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1620 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.homo
d_homo_1624 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1624 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.injective
d_injective_1626 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1626 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1628 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1628 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1630 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1630 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_1632
du_isRelMonomorphism_1632 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1632 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.*.IsMagmaMonomorphism.cong
d_cong_1634 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_1638 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_1640 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_1642 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_1646 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1646 v0 = coe d_'42''45'homo_938 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaHomomorphism_1648
du_'42''45'isMagmaHomomorphism_1648 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1648 v0 v1
  = coe du_'42''45'isMagmaHomomorphism_952 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.homo
d_homo_1650 ::
  T_IsNearSemiringHomomorphism_928 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1650 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1652 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1652 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1654 ::
  T_IsNearSemiringHomomorphism_928 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1654 v0
  = coe d_'43''45'isMonoidHomomorphism_936 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.ε-homo
d_ε'45'homo_1656 :: T_IsNearSemiringHomomorphism_928 -> AgdaAny
d_ε'45'homo_1656 v0
  = coe
      d_ε'45'homo_372 (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1658 ::
  T_IsNearSemiringHomomorphism_928 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1658 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_'43''45'isMonoidHomomorphism_936 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringHomomorphism.cong
d_cong_1660 ::
  T_IsNearSemiringHomomorphism_928 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_'43''45'isMonoidHomomorphism_936 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.*-homo
d_'42''45'homo_1664 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1664 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1666 v7
du_'42''45'isMagmaHomomorphism_1666 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1666 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_964 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_1668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaIsomorphism_1668
du_'42''45'isMagmaIsomorphism_1668 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_1668 v0 v1
  = coe du_'42''45'isMagmaIsomorphism_1048 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1670 v7
du_'42''45'isMagmaMonomorphism_1670 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1670 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.homo
d_homo_1672 ::
  T_IsNearSemiringIsomorphism_998 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1672 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1674 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1674 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1676 v7
du_isMagmaIsomorphism_1676 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1676 v0
  = coe
      du_isMagmaIsomorphism_448
      (coe du_'43''45'isMonoidIsomorphism_1040 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1678 v7
du_isMagmaMonomorphism_1678 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1678 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_'43''45'isMonoidMonomorphism_986 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1680 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1680 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_964
         (coe d_isNearSemiringMonomorphism_1006 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_1682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidIsomorphism_1682
du_'43''45'isMonoidIsomorphism_1682 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_1682 v0 v1
  = coe du_'43''45'isMonoidIsomorphism_1040 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1684 v7
du_'43''45'isMonoidMonomorphism_1684 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1684 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.ε-homo
d_ε'45'homo_1686 :: T_IsNearSemiringIsomorphism_998 -> AgdaAny
d_ε'45'homo_1686 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_964
            (coe d_isNearSemiringMonomorphism_1006 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.injective
d_injective_1688 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1688 v0
  = coe
      d_injective_966 (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1690 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1690 v0
  = coe
      d_isNearSemiringHomomorphism_964
      (coe d_isNearSemiringMonomorphism_1006 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_1692 ::
  T_IsNearSemiringIsomorphism_998 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_1692 v0
  = coe d_isNearSemiringMonomorphism_1006 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1694 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1694 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_964
               (coe d_isNearSemiringMonomorphism_1006 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1696 v7
du_isRelIsomorphism_1696 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1696 v0
  = let v1 = coe du_'43''45'isMonoidIsomorphism_1040 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1698 v7
du_isRelMonomorphism_1698 ::
  T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1698 v0
  = let v1 = d_isNearSemiringMonomorphism_1006 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isMonoidMonomorphism_986 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.surjective
d_surjective_1700 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1700 v0 = coe d_surjective_1008 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringIsomorphism.cong
d_cong_1702 ::
  T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1702 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_964
                  (coe d_isNearSemiringMonomorphism_1006 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.*-homo
d_'42''45'homo_1706 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1706 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1708 v7
du_'42''45'isMagmaHomomorphism_1708 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1708 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaMonomorphism_1710
du_'42''45'isMagmaMonomorphism_1710 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1710 v0 v1
  = coe du_'42''45'isMagmaMonomorphism_994 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.homo
d_homo_1712 ::
  T_IsNearSemiringMonomorphism_956 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1712 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1714 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1714 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1716 v7
du_isMagmaMonomorphism_1716 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1716 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_'43''45'isMonoidMonomorphism_986 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1718 ::
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1718 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_964 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_1720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isMonoidMonomorphism_1720
du_'43''45'isMonoidMonomorphism_1720 ::
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_1720 v0 v1
  = coe du_'43''45'isMonoidMonomorphism_986 v1
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.ε-homo
d_ε'45'homo_1722 :: T_IsNearSemiringMonomorphism_956 -> AgdaAny
d_ε'45'homo_1722 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_964 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.injective
d_injective_1724 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1724 v0 = coe d_injective_966 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1726 ::
  T_IsNearSemiringMonomorphism_956 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1726 v0
  = coe d_isNearSemiringHomomorphism_964 (coe v0)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1728 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1728 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_964 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1730 v7
du_isRelMonomorphism_1730 ::
  T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1730 v0
  = let v1 = coe du_'43''45'isMonoidMonomorphism_986 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.+*.IsNearSemiringMonomorphism.cong
d_cong_1732 ::
  T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1732 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_964 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms._.Homomorphic₂
d_Homomorphic'8322'_1740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_1740 = erased
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_1746 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneHomomorphism_1746
  = C_IsRingWithoutOneHomomorphism'46'constructor_34297 T_IsGroupHomomorphism_634
                                                        (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1754 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_1754 v0
  = case coe v0 of
      C_IsRingWithoutOneHomomorphism'46'constructor_34297 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_1756 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1756 v0
  = case coe v0 of
      C_IsRingWithoutOneHomomorphism'46'constructor_34297 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.homo
d_homo_1760 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_1760 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1762 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1762 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1764 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1764 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.ε-homo
d_ε'45'homo_1766 :: T_IsRingWithoutOneHomomorphism_1746 -> AgdaAny
d_ε'45'homo_1766 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1768 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1768 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_1770 ::
  T_IsRingWithoutOneHomomorphism_1746 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1770 v0
  = coe
      d_'8315''185''45'homo_644
      (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism._.cong
d_cong_1772 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringHomomorphism_1774 v7
du_isNearSemiringHomomorphism_1774 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_1774 v0
  = coe
      C_IsNearSemiringHomomorphism'46'constructor_19989
      (coe
         d_isMonoidHomomorphism_642
         (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))
      (coe d_'42''45'homo_1756 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1776 v7
du_'42''45'isMagmaHomomorphism_1776 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1776 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_4629
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))))
      (coe d_'42''45'homo_1756 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_1780 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneMonomorphism_1780
  = C_IsRingWithoutOneMonomorphism'46'constructor_35739 T_IsRingWithoutOneHomomorphism_1746
                                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1788 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_1788 v0
  = case coe v0 of
      C_IsRingWithoutOneMonomorphism'46'constructor_35739 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.injective
d_injective_1790 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1790 v0
  = case coe v0 of
      C_IsRingWithoutOneMonomorphism'46'constructor_35739 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.*-homo
d_'42''45'homo_1794 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1794 v0
  = coe
      d_'42''45'homo_1756
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1796 v7
du_'42''45'isMagmaHomomorphism_1796 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1796 v0
  = coe
      du_'42''45'isMagmaHomomorphism_1776
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.homo
d_homo_1798 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_1798 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1800 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_1800 v0
  = coe
      d_'43''45'isGroupHomomorphism_1754
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1802 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1802 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1804 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1804 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.ε-homo
d_ε'45'homo_1806 :: T_IsRingWithoutOneMonomorphism_1780 -> AgdaAny
d_ε'45'homo_1806 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringHomomorphism_1808 v7
du_isNearSemiringHomomorphism_1808 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_1808 v0
  = coe
      du_isNearSemiringHomomorphism_1774
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1810 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1810 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_1812 ::
  T_IsRingWithoutOneMonomorphism_1780 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1812 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.cong
d_cong_1814 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_'43''45'isGroupHomomorphism_1754
                  (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_1816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1816 v7
du_'43''45'isGroupMonomorphism_1816 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_1816 v0
  = coe
      C_IsGroupMonomorphism'46'constructor_15537
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
      (coe d_injective_1790 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1820 v7
du_isMagmaMonomorphism_1820 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1820 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1816 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_1822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1822 v7
du_isMonoidMonomorphism_1822 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_1822 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe du_'43''45'isGroupMonomorphism_1816 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1824 v7
du_isRelMonomorphism_1824 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1824 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1816 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1826 v7
du_'42''45'isMagmaMonomorphism_1826 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1826 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         du_'42''45'isMagmaHomomorphism_1776
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
      (coe d_injective_1790 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_1830 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingWithoutOneIsoMorphism_1830
  = C_IsRingWithoutOneIsoMorphism'46'constructor_37851 T_IsRingWithoutOneMonomorphism_1780
                                                       (AgdaAny ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_1838 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsRingWithoutOneMonomorphism_1780
d_isRingWithoutOneMonomorphism_1838 v0
  = case coe v0 of
      C_IsRingWithoutOneIsoMorphism'46'constructor_37851 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.surjective
d_surjective_1840 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1840 v0
  = case coe v0 of
      C_IsRingWithoutOneIsoMorphism'46'constructor_37851 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-homo
d_'42''45'homo_1844 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1844 v0
  = coe
      d_'42''45'homo_1756
      (coe
         d_isRingWithoutOneHomomorphism_1788
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_1846 v7
du_'42''45'isMagmaHomomorphism_1846 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1846 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_1776
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_1848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_1848 v7
du_'42''45'isMagmaMonomorphism_1848 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_1848 v0
  = coe
      du_'42''45'isMagmaMonomorphism_1826
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.homo
d_homo_1850 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1850 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe
                  d_isRingWithoutOneHomomorphism_1788
                  (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1852 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_1852 v0
  = coe
      d_'43''45'isGroupHomomorphism_1754
      (coe
         d_isRingWithoutOneHomomorphism_1788
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_1854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1854 v7
du_'43''45'isGroupMonomorphism_1854 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_1854 v0
  = coe
      du_'43''45'isGroupMonomorphism_1816
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1856 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1856 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe
               d_isRingWithoutOneHomomorphism_1788
               (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1858 v7
du_isMagmaMonomorphism_1858 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1858 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1816 (coe v1) in
       coe
         (coe
            du_isMagmaMonomorphism_408
            (coe du_isMonoidMonomorphism_688 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1860 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1860 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe
            d_isRingWithoutOneHomomorphism_1788
            (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_1862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1862 v7
du_isMonoidMonomorphism_1862 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_1862 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_isMonoidMonomorphism_688
         (coe du_'43''45'isGroupMonomorphism_1816 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.ε-homo
d_ε'45'homo_1864 :: T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny
d_ε'45'homo_1864 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe
               d_isRingWithoutOneHomomorphism_1788
               (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.injective
d_injective_1866 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1866 v0
  = coe
      d_injective_1790 (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringHomomorphism_1868 v7
du_isNearSemiringHomomorphism_1868 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_1868 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_isNearSemiringHomomorphism_1774
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelHomomorphism
d_isRelHomomorphism_1870 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1870 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe
                  d_isRingWithoutOneHomomorphism_1788
                  (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelMonomorphism
d_isRelMonomorphism_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1872 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1872 v7
du_isRelMonomorphism_1872 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1872 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1816 (coe v1) in
       coe
         (let v3 = coe du_isMonoidMonomorphism_688 (coe v2) in
          coe
            (coe
               du_isRelMonomorphism_226
               (coe du_isMagmaMonomorphism_408 (coe v3)))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1874 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_1874 v0
  = coe
      d_isRingWithoutOneHomomorphism_1788
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.⁻¹-homo
d_'8315''185''45'homo_1876 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1876 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe
            d_isRingWithoutOneHomomorphism_1788
            (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.cong
d_cong_1878 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1878 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_'43''45'isGroupHomomorphism_1754
                  (coe
                     d_isRingWithoutOneHomomorphism_1788
                     (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_1880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupIsomorphism_698
d_'43''45'isGroupIsomorphism_1880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupIsomorphism_1880 v7
du_'43''45'isGroupIsomorphism_1880 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupIsomorphism_698
du_'43''45'isGroupIsomorphism_1880 v0
  = coe
      C_IsGroupIsomorphism'46'constructor_17073
      (coe
         du_'43''45'isGroupMonomorphism_1816
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
      (coe d_surjective_1840 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_1884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1884 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_1884 v7
du_isMagmaIsomorphism_1884 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1884 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1880 (coe v0) in
    coe
      (coe
         du_isMagmaIsomorphism_448
         (coe du_isMonoidIsomorphism_736 (coe v1)))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isMonoidIsomorphism
d_isMonoidIsomorphism_1886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_1886 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_1886 v7
du_isMonoidIsomorphism_1886 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_1886 v0
  = coe
      du_isMonoidIsomorphism_736
      (coe du_'43''45'isGroupIsomorphism_1880 (coe v0))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism._.isRelIsomorphism
d_isRelIsomorphism_1888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1888 v7
du_isRelIsomorphism_1888 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1888 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1880 (coe v0) in
    coe
      (let v2 = coe du_isMonoidIsomorphism_736 (coe v1) in
       coe
         (coe
            du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v2))))
-- Algebra.Morphism.Structures.RingWithoutOneMorphisms.IsRingWithoutOneIsoMorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_1890 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_1890 v7
du_'42''45'isMagmaIsomorphism_1890 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_1890 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_'42''45'isMagmaMonomorphism_1826
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
      (coe d_surjective_1840 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._._≈_
d__'8776'__1912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1912 = erased
-- Algebra.Morphism.Structures.RingMorphisms._.-_
d_'45'__1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny
d_'45'__1926 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__1926 v4
du_'45'__1926 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny
du_'45'__1926 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.Carrier
d_Carrier_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 -> ()
d_Carrier_1932 = erased
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism
d_IsGroupHomomorphism_1972 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism
d_IsGroupIsomorphism_1974 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism
d_IsGroupMonomorphism_1976 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.homo
d_homo_1980 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1980 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1982 ::
  T_IsGroupHomomorphism_634 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1982 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1984 ::
  T_IsGroupHomomorphism_634 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1984 v0
  = coe d_isMonoidHomomorphism_642 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1986 ::
  T_IsGroupHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1986 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_642 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.ε-homo
d_ε'45'homo_1988 :: T_IsGroupHomomorphism_634 -> AgdaAny
d_ε'45'homo_1988 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_642 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_1990 ::
  T_IsGroupHomomorphism_634 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1990 v0
  = coe d_'8315''185''45'homo_644 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.cong
d_cong_1992 ::
  T_IsGroupHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1992 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_642 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.injective
d_injective_1996 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1996 v0
  = coe d_injective_670 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1998 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_1998 v0
  = coe
      d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_2000 ::
  T_IsGroupIsomorphism_698 -> T_IsGroupMonomorphism_660
d_isGroupMonomorphism_2000 v0
  = coe d_isGroupMonomorphism_706 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2002 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2002 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2004 v7
du_isMagmaIsomorphism_2004 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2004 v0
  = coe
      du_isMagmaIsomorphism_448 (coe du_isMonoidIsomorphism_736 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2006 v7
du_isMagmaMonomorphism_2006 ::
  T_IsGroupIsomorphism_698 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2006 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2008 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2008 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_2010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_2010 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidIsomorphism_2010
du_isMonoidIsomorphism_2010 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_2010 v0 v1
  = coe du_isMonoidIsomorphism_736 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2012 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_2012 v7
du_isMonoidMonomorphism_2012 ::
  T_IsGroupIsomorphism_698 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_2012 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe d_isGroupMonomorphism_706 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2014 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2014 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2016 v7
du_isRelIsomorphism_2016 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2016 v0
  = let v1 = coe du_isMonoidIsomorphism_736 (coe v0) in
    coe
      (coe
         du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2018 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2018 v7
du_isRelMonomorphism_2018 ::
  T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2018 v0
  = let v1 = d_isGroupMonomorphism_706 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.surjective
d_surjective_2020 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2020 v0 = coe d_surjective_708 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.ε-homo
d_ε'45'homo_2022 :: T_IsGroupIsomorphism_698 -> AgdaAny
d_ε'45'homo_2022 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_isGroupHomomorphism_668
            (coe d_isGroupMonomorphism_706 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.⁻¹-homo
d_'8315''185''45'homo_2024 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_2024 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_isGroupHomomorphism_668 (coe d_isGroupMonomorphism_706 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.homo
d_homo_2026 ::
  T_IsGroupIsomorphism_698 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2026 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_isGroupHomomorphism_668
               (coe d_isGroupMonomorphism_706 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.cong
d_cong_2028 ::
  T_IsGroupIsomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2028 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_isGroupHomomorphism_668
                  (coe d_isGroupMonomorphism_706 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.injective
d_injective_2032 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2032 v0 = coe d_injective_670 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_2034 ::
  T_IsGroupMonomorphism_660 -> T_IsGroupHomomorphism_634
d_isGroupHomomorphism_2034 v0
  = coe d_isGroupHomomorphism_668 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2036 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2036 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2038 v7
du_isMagmaMonomorphism_2038 ::
  T_IsGroupMonomorphism_660 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2038 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_isMonoidMonomorphism_688 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2040 ::
  T_IsGroupMonomorphism_660 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2040 v0
  = coe
      d_isMonoidHomomorphism_642 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidMonomorphism_2042
du_isMonoidMonomorphism_2042 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_2042 v0 v1
  = coe du_isMonoidMonomorphism_688 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2044 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2044 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2046 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2046 v7
du_isRelMonomorphism_2046 ::
  T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2046 v0
  = let v1 = coe du_isMonoidMonomorphism_688 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.ε-homo
d_ε'45'homo_2048 :: T_IsGroupMonomorphism_660 -> AgdaAny
d_ε'45'homo_2048 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_668 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.⁻¹-homo
d_'8315''185''45'homo_2050 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_2050 v0
  = coe
      d_'8315''185''45'homo_644 (coe d_isGroupHomomorphism_668 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.homo
d_homo_2052 ::
  T_IsGroupMonomorphism_660 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2052 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_668 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.cong
d_cong_2054 ::
  T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2054 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_isGroupHomomorphism_668 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2058 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2060 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2062 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.homo
d_homo_2066 ::
  T_IsMonoidHomomorphism_362 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2066 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2068 ::
  T_IsMonoidHomomorphism_362 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2068 v0
  = coe d_isMagmaHomomorphism_370 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2070 ::
  T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2070 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2072 :: T_IsMonoidHomomorphism_362 -> AgdaAny
d_ε'45'homo_2072 v0 = coe d_ε'45'homo_372 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.cong
d_cong_2074 ::
  T_IsMonoidHomomorphism_362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2074 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_370 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.homo
d_homo_2078 ::
  T_IsMonoidIsomorphism_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2078 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.injective
d_injective_2080 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2080 v0
  = coe d_injective_394 (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2082 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2082 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_2084
du_isMagmaIsomorphism_2084 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2084 v0 v1 = coe du_isMagmaIsomorphism_448 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2086 v7
du_isMagmaMonomorphism_2086 ::
  T_IsMonoidIsomorphism_416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2086 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2088 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2088 v0
  = coe
      d_isMonoidHomomorphism_392
      (coe d_isMonoidMonomorphism_424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2090 ::
  T_IsMonoidIsomorphism_416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2090 v0
  = coe d_isMonoidMonomorphism_424 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2092 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2092 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_392
            (coe d_isMonoidMonomorphism_424 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2094 v7
du_isRelIsomorphism_2094 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2094 v0
  = coe
      du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2096 v7
du_isRelMonomorphism_2096 ::
  T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2096 v0
  = let v1 = d_isMonoidMonomorphism_424 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_2098 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2098 v0 = coe d_surjective_426 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2100 :: T_IsMonoidIsomorphism_416 -> AgdaAny
d_ε'45'homo_2100 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_392
         (coe d_isMonoidMonomorphism_424 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.cong
d_cong_2102 ::
  T_IsMonoidIsomorphism_416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_392
               (coe d_isMonoidMonomorphism_424 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.homo
d_homo_2106 ::
  T_IsMonoidMonomorphism_384 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2106 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.injective
d_injective_2108 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2108 v0 = coe d_injective_394 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2110 ::
  T_IsMonoidMonomorphism_384 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2110 v0
  = coe
      d_isMagmaHomomorphism_370 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_2112
du_isMagmaMonomorphism_2112 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2112 v0 v1
  = coe du_isMagmaMonomorphism_408 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2114 ::
  T_IsMonoidMonomorphism_384 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2114 v0
  = coe d_isMonoidHomomorphism_392 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2116 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2116 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_392 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2118 v7
du_isRelMonomorphism_2118 ::
  T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2118 v0
  = coe
      du_isRelMonomorphism_226 (coe du_isMagmaMonomorphism_408 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2120 :: T_IsMonoidMonomorphism_384 -> AgdaAny
d_ε'45'homo_2120 v0
  = coe d_ε'45'homo_372 (coe d_isMonoidHomomorphism_392 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.cong
d_cong_2122 ::
  T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2122 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_392 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_2126 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_2128 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_2130 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_2134 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2134 v0 = coe d_'42''45'homo_1756 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaHomomorphism_2136
du_'42''45'isMagmaHomomorphism_2136 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2136 v0 v1
  = coe du_'42''45'isMagmaHomomorphism_1776 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.homo
d_homo_2138 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_2138 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2140 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2140 v0
  = coe d_'43''45'isGroupHomomorphism_1754 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2142 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2142 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2144 ::
  T_IsRingWithoutOneHomomorphism_1746 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2144 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.ε-homo
d_ε'45'homo_2146 :: T_IsRingWithoutOneHomomorphism_1746 -> AgdaAny
d_ε'45'homo_2146 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringHomomorphism_2148
du_isNearSemiringHomomorphism_2148 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneHomomorphism_1746 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_2148 v0 v1
  = coe du_isNearSemiringHomomorphism_1774 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2150 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2150 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.⁻¹-homo
d_'8315''185''45'homo_2152 ::
  T_IsRingWithoutOneHomomorphism_1746 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_2152 v0
  = coe
      d_'8315''185''45'homo_644
      (coe d_'43''45'isGroupHomomorphism_1754 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneHomomorphism.cong
d_cong_2154 ::
  T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2154 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe d_'43''45'isGroupHomomorphism_1754 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.*-homo
d_'42''45'homo_2158 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2158 v0
  = coe
      d_'42''45'homo_1756
      (coe
         d_isRingWithoutOneHomomorphism_1788
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2160 v7
du_'42''45'isMagmaHomomorphism_2160 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2160 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_1776
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_2162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_2162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaIsomorphism_2162
du_'42''45'isMagmaIsomorphism_2162 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_2162 v0 v1
  = coe du_'42''45'isMagmaIsomorphism_1890 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_2164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_2164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_2164 v7
du_'42''45'isMagmaMonomorphism_2164 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_2164 v0
  = coe
      du_'42''45'isMagmaMonomorphism_1826
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.homo
d_homo_2166 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2166 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe
                  d_isRingWithoutOneHomomorphism_1788
                  (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2168 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2168 v0
  = coe
      d_'43''45'isGroupHomomorphism_1754
      (coe
         d_isRingWithoutOneHomomorphism_1788
         (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_2170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupIsomorphism_698
d_'43''45'isGroupIsomorphism_2170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isGroupIsomorphism_2170
du_'43''45'isGroupIsomorphism_2170 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupIsomorphism_698
du_'43''45'isGroupIsomorphism_2170 v0 v1
  = coe du_'43''45'isGroupIsomorphism_1880 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_2172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_2172 v7
du_'43''45'isGroupMonomorphism_2172 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_2172 v0
  = coe
      du_'43''45'isGroupMonomorphism_1816
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2174 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2174 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe
               d_isRingWithoutOneHomomorphism_1788
               (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2176 v7
du_isMagmaIsomorphism_2176 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2176 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1880 (coe v0) in
    coe
      (coe
         du_isMagmaIsomorphism_448
         (coe du_isMonoidIsomorphism_736 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2178 v7
du_isMagmaMonomorphism_2178 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2178 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1816 (coe v1) in
       coe
         (coe
            du_isMagmaMonomorphism_408
            (coe du_isMonoidMonomorphism_688 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2180 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2180 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe
            d_isRingWithoutOneHomomorphism_1788
            (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_2182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_2182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_2182 v7
du_isMonoidIsomorphism_2182 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_2182 v0
  = coe
      du_isMonoidIsomorphism_736
      (coe du_'43''45'isGroupIsomorphism_1880 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_2184 v7
du_isMonoidMonomorphism_2184 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_2184 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_isMonoidMonomorphism_688
         (coe du_'43''45'isGroupMonomorphism_1816 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.ε-homo
d_ε'45'homo_2186 :: T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny
d_ε'45'homo_2186 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe
               d_isRingWithoutOneHomomorphism_1788
               (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.injective
d_injective_2188 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2188 v0
  = coe
      d_injective_1790 (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringHomomorphism_2190 v7
du_isNearSemiringHomomorphism_2190 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_2190 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (coe
         du_isNearSemiringHomomorphism_1774
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isRelHomomorphism
d_isRelHomomorphism_2192 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2192 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe
                  d_isRingWithoutOneHomomorphism_1788
                  (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isRelIsomorphism
d_isRelIsomorphism_2194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2194 v7
du_isRelIsomorphism_2194 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2194 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_1880 (coe v0) in
    coe
      (let v2 = coe du_isMonoidIsomorphism_736 (coe v1) in
       coe
         (coe
            du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isRelMonomorphism
d_isRelMonomorphism_2196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2196 v7
du_isRelMonomorphism_2196 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2196 v0
  = let v1 = d_isRingWithoutOneMonomorphism_1838 (coe v0) in
    coe
      (let v2 = coe du_'43''45'isGroupMonomorphism_1816 (coe v1) in
       coe
         (let v3 = coe du_isMonoidMonomorphism_688 (coe v2) in
          coe
            (coe
               du_isRelMonomorphism_226
               (coe du_isMagmaMonomorphism_408 (coe v3)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_2198 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_2198 v0
  = coe
      d_isRingWithoutOneHomomorphism_1788
      (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_2200 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  T_IsRingWithoutOneMonomorphism_1780
d_isRingWithoutOneMonomorphism_2200 v0
  = coe d_isRingWithoutOneMonomorphism_1838 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.surjective
d_surjective_2202 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2202 v0 = coe d_surjective_1840 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.⁻¹-homo
d_'8315''185''45'homo_2204 ::
  T_IsRingWithoutOneIsoMorphism_1830 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_2204 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe
            d_isRingWithoutOneHomomorphism_1788
            (coe d_isRingWithoutOneMonomorphism_1838 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneIsoMorphism.cong
d_cong_2206 ::
  T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_'43''45'isGroupHomomorphism_1754
                  (coe
                     d_isRingWithoutOneHomomorphism_1788
                     (coe d_isRingWithoutOneMonomorphism_1838 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.*-homo
d_'42''45'homo_2210 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2210 v0
  = coe
      d_'42''45'homo_1756
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2212 v7
du_'42''45'isMagmaHomomorphism_2212 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2212 v0
  = coe
      du_'42''45'isMagmaHomomorphism_1776
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_2214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_2214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMagmaMonomorphism_2214
du_'42''45'isMagmaMonomorphism_2214 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_2214 v0 v1
  = coe du_'42''45'isMagmaMonomorphism_1826 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.homo
d_homo_2216 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_2216 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2218 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2218 v0
  = coe
      d_'43''45'isGroupHomomorphism_1754
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_2220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'43''45'isGroupMonomorphism_2220
du_'43''45'isGroupMonomorphism_2220 ::
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_2220 v0 v1
  = coe du_'43''45'isGroupMonomorphism_1816 v1
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2222 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2222 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2224 v7
du_isMagmaMonomorphism_2224 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2224 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1816 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2226 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2226 v0
  = coe
      d_isMonoidHomomorphism_642
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_2228 v7
du_isMonoidMonomorphism_2228 ::
  T_IsRingWithoutOneMonomorphism_1780 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_2228 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe du_'43''45'isGroupMonomorphism_1816 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.ε-homo
d_ε'45'homo_2230 :: T_IsRingWithoutOneMonomorphism_1780 -> AgdaAny
d_ε'45'homo_2230 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_isMonoidHomomorphism_642
         (coe
            d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.injective
d_injective_2232 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2232 v0 = coe d_injective_1790 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringHomomorphism_2234 v7
du_isNearSemiringHomomorphism_2234 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_2234 v0
  = coe
      du_isNearSemiringHomomorphism_1774
      (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2236 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2236 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_isMonoidHomomorphism_642
            (coe
               d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2238 v7
du_isRelMonomorphism_2238 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2238 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_1816 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_2240 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_2240 v0
  = coe d_isRingWithoutOneHomomorphism_1788 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.⁻¹-homo
d_'8315''185''45'homo_2242 ::
  T_IsRingWithoutOneMonomorphism_1780 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_2242 v0
  = coe
      d_'8315''185''45'homo_644
      (coe
         d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_1788 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*+0.IsRingWithoutOneMonomorphism.cong
d_cong_2244 ::
  T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_isMonoidHomomorphism_642
               (coe
                  d_'43''45'isGroupHomomorphism_1754
                  (coe d_isRingWithoutOneHomomorphism_1788 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms._.Homomorphic₁
d_Homomorphic'8321'_2250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_2250 = erased
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_2258 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_2260 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_2262 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-homo
d_'42''45'homo_2266 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2266 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2268 v7
du_'42''45'isMagmaHomomorphism_2268 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2268 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidHomomorphism_2270
du_'42''45'isMonoidHomomorphism_2270 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2270 v0 v1
  = coe du_'42''45'isMonoidHomomorphism_1324 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.homo
d_homo_2272 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2272 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2274 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2274 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2276 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2276 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.ε-homo
d_ε'45'homo_2278 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_ε'45'homo_2278 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_2280 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_1'35''45'homo_2280 v0 = coe d_1'35''45'homo_1304 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2282 ::
  T_IsSemiringHomomorphism_1294 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2282 v0
  = coe d_isNearSemiringHomomorphism_1302 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2284 ::
  T_IsSemiringHomomorphism_1294 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2284 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringHomomorphism.cong
d_cong_2286 ::
  T_IsSemiringHomomorphism_1294 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2286 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_1302 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-homo
d_'42''45'homo_2290 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2290 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2292 v7
du_'42''45'isMagmaHomomorphism_2292 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2292 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1336 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_952
            (coe d_isNearSemiringHomomorphism_1302 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_2294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_2294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_2294 v7
du_'42''45'isMagmaIsomorphism_2294 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_2294 v0
  = coe
      du_'42''45'isMagmaIsomorphism_1048
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_2296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_2296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_2296 v7
du_'42''45'isMagmaMonomorphism_2296 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_2296 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_994
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2298 v7
du_'42''45'isMonoidHomomorphism_2298 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2298 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_1336 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_2300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'42''45'isMonoidIsomorphism_2300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidIsomorphism_2300
du_'42''45'isMonoidIsomorphism_2300 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'42''45'isMonoidIsomorphism_2300 v0 v1
  = coe du_'42''45'isMonoidIsomorphism_1432 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_2302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_2302 v7
du_'42''45'isMonoidMonomorphism_2302 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_2302 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1372
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.homo
d_homo_2304 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2304 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2306 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2306 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2308 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2308 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_2310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_2310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_2310 v7
du_'43''45'isMonoidIsomorphism_2310 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_2310 v0
  = coe
      du_'43''45'isMonoidIsomorphism_1040
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_2312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_2312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_2312 v7
du_'43''45'isMonoidMonomorphism_2312 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_2312 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_986
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.ε-homo
d_ε'45'homo_2314 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_ε'45'homo_2314 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.1#-homo
d_1'35''45'homo_2316 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_1'35''45'homo_2316 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.injective
d_injective_2318 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2318 v0
  = coe d_injective_1338 (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2320 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2320 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_2322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
d_isNearSemiringIsomorphism_2322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringIsomorphism_2322
du_isNearSemiringIsomorphism_2322 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
du_isNearSemiringIsomorphism_2322 v0 v1
  = coe du_isNearSemiringIsomorphism_1424 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_2324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_2324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_2324 v7
du_isNearSemiringMonomorphism_2324 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_2324 v0
  = coe
      du_isNearSemiringMonomorphism_1364
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2326 ::
  T_IsSemiringIsomorphism_1376 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2326 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_2328 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_2328 v0
  = coe
      d_isSemiringHomomorphism_1336
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_2330 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_2330 v0
  = coe d_isSemiringMonomorphism_1384 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.surjective
d_surjective_2332 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2332 v0 = coe d_surjective_1386 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringIsomorphism.cong
d_cong_2334 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2334 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_1336
                     (coe d_isSemiringMonomorphism_1384 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-homo
d_'42''45'homo_2338 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2338 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2340 v7
du_'42''45'isMagmaHomomorphism_2340 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2340 v0
  = let v1 = d_isSemiringHomomorphism_1336 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_2342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_2342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_2342 v7
du_'42''45'isMagmaMonomorphism_2342 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_2342 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2344 v7
du_'42''45'isMonoidHomomorphism_2344 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2344 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_2346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidMonomorphism_2346
du_'42''45'isMonoidMonomorphism_2346 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_2346 v0 v1
  = coe du_'42''45'isMonoidMonomorphism_1372 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.homo
d_homo_2348 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2348 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2350 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2350 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2352 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2352 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_2354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_2354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_2354 v7
du_'43''45'isMonoidMonomorphism_2354 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_2354 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.ε-homo
d_ε'45'homo_2356 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_ε'45'homo_2356 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.1#-homo
d_1'35''45'homo_2358 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_1'35''45'homo_2358 v0
  = coe
      d_1'35''45'homo_1304 (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.injective
d_injective_2360 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2360 v0 = coe d_injective_1338 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2362 ::
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2362 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_2364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_2364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringMonomorphism_2364
du_isNearSemiringMonomorphism_2364 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_2364 v0 v1
  = coe du_isNearSemiringMonomorphism_1364 v1
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2366 ::
  T_IsSemiringMonomorphism_1328 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2366 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_2368 ::
  T_IsSemiringMonomorphism_1328 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_2368 v0
  = coe d_isSemiringHomomorphism_1336 (coe v0)
-- Algebra.Morphism.Structures.RingMorphisms._.IsSemiringMonomorphism.cong
d_cong_2370 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_1336 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism
d_IsRingHomomorphism_2374 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingHomomorphism_2374
  = C_IsRingHomomorphism'46'constructor_43635 T_IsSemiringHomomorphism_1294
                                              (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_2382 ::
  T_IsRingHomomorphism_2374 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_2382 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_43635 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.-‿homo
d_'45''8255'homo_2384 ::
  T_IsRingHomomorphism_2374 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2384 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_43635 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-homo
d_'42''45'homo_2388 ::
  T_IsRingHomomorphism_2374 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2388 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_2382 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2374 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2390 v7
du_'42''45'isMagmaHomomorphism_2390 ::
  T_IsRingHomomorphism_2374 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2390 v0
  = let v1 = d_isSemiringHomomorphism_2382 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2374 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2392 v7
du_'42''45'isMonoidHomomorphism_2392 ::
  T_IsRingHomomorphism_2374 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2392 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_2382 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo
d_homo_2394 ::
  T_IsRingHomomorphism_2374 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2394 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_2382 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2396 ::
  T_IsRingHomomorphism_2374 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2396 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_2382 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2398 ::
  T_IsRingHomomorphism_2374 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2398 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_2382 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo
d_ε'45'homo_2400 :: T_IsRingHomomorphism_2374 -> AgdaAny
d_ε'45'homo_2400 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_2382 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.1#-homo
d_1'35''45'homo_2402 :: T_IsRingHomomorphism_2374 -> AgdaAny
d_1'35''45'homo_2402 v0
  = coe
      d_1'35''45'homo_1304 (coe d_isSemiringHomomorphism_2382 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2404 ::
  T_IsRingHomomorphism_2374 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2404 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_2382 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_2406 ::
  T_IsRingHomomorphism_2374 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2406 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_2382 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong
d_cong_2408 ::
  T_IsRingHomomorphism_2374 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2408 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_2382 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2374 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2410 v7
du_'43''45'isGroupHomomorphism_2410 ::
  T_IsRingHomomorphism_2374 -> T_IsGroupHomomorphism_634
du_'43''45'isGroupHomomorphism_2410 v0
  = coe
      C_IsGroupHomomorphism'46'constructor_14585
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_2382 (coe v0))))
      (coe d_'45''8255'homo_2384 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_2412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingHomomorphism_2374 -> T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_2412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRingWithoutOneHomomorphism_2412 v7
du_isRingWithoutOneHomomorphism_2412 ::
  T_IsRingHomomorphism_2374 -> T_IsRingWithoutOneHomomorphism_1746
du_isRingWithoutOneHomomorphism_2412 v0
  = coe
      C_IsRingWithoutOneHomomorphism'46'constructor_34297
      (coe du_'43''45'isGroupHomomorphism_2410 (coe v0))
      (coe
         d_'42''45'homo_938
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_2382 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism
d_IsRingMonomorphism_2416 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingMonomorphism_2416
  = C_IsRingMonomorphism'46'constructor_45289 T_IsRingHomomorphism_2374
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_2424 ::
  T_IsRingMonomorphism_2416 -> T_IsRingHomomorphism_2374
d_isRingHomomorphism_2424 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_45289 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.injective
d_injective_2426 ::
  T_IsRingMonomorphism_2416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2426 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_45289 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-homo
d_'42''45'homo_2430 ::
  T_IsRingMonomorphism_2416 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2430 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_2382
            (coe d_isRingHomomorphism_2424 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2432 v7
du_'42''45'isMagmaHomomorphism_2432 ::
  T_IsRingMonomorphism_2416 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2432 v0
  = let v1 = d_isRingHomomorphism_2424 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_2382 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_952
            (coe d_isNearSemiringHomomorphism_1302 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2434 v7
du_'42''45'isMonoidHomomorphism_2434 ::
  T_IsRingMonomorphism_2416 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2434 v0
  = let v1 = d_isRingHomomorphism_2424 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_2382 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo
d_homo_2436 ::
  T_IsRingMonomorphism_2416 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2436 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_2382
                  (coe d_isRingHomomorphism_2424 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2438 v7
du_'43''45'isGroupHomomorphism_2438 ::
  T_IsRingMonomorphism_2416 -> T_IsGroupHomomorphism_634
du_'43''45'isGroupHomomorphism_2438 v0
  = coe
      du_'43''45'isGroupHomomorphism_2410
      (coe d_isRingHomomorphism_2424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2440 ::
  T_IsRingMonomorphism_2416 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2440 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_2382
               (coe d_isRingHomomorphism_2424 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2442 ::
  T_IsRingMonomorphism_2416 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2442 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_2382
            (coe d_isRingHomomorphism_2424 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.-‿homo
d_'45''8255'homo_2444 ::
  T_IsRingMonomorphism_2416 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2444 v0
  = coe
      d_'45''8255'homo_2384 (coe d_isRingHomomorphism_2424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo
d_ε'45'homo_2446 :: T_IsRingMonomorphism_2416 -> AgdaAny
d_ε'45'homo_2446 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_2382
               (coe d_isRingHomomorphism_2424 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.1#-homo
d_1'35''45'homo_2448 :: T_IsRingMonomorphism_2416 -> AgdaAny
d_1'35''45'homo_2448 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_2424 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2450 ::
  T_IsRingMonomorphism_2416 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2450 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_2424 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_2452 ::
  T_IsRingMonomorphism_2416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2452 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_2382
                  (coe d_isRingHomomorphism_2424 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_2454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_2454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRingWithoutOneHomomorphism_2454 v7
du_isRingWithoutOneHomomorphism_2454 ::
  T_IsRingMonomorphism_2416 -> T_IsRingWithoutOneHomomorphism_1746
du_isRingWithoutOneHomomorphism_2454 v0
  = coe
      du_isRingWithoutOneHomomorphism_2412
      (coe d_isRingHomomorphism_2424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_2456 ::
  T_IsRingMonomorphism_2416 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_2456 v0
  = coe
      d_isSemiringHomomorphism_2382
      (coe d_isRingHomomorphism_2424 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong
d_cong_2458 ::
  T_IsRingMonomorphism_2416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2458 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_2382
                     (coe d_isRingHomomorphism_2424 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_2460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_2460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringMonomorphism_2460 v7
du_isSemiringMonomorphism_2460 ::
  T_IsRingMonomorphism_2416 -> T_IsSemiringMonomorphism_1328
du_isSemiringMonomorphism_2460 v0
  = coe
      C_IsSemiringMonomorphism'46'constructor_27871
      (coe
         d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_2424 (coe v0)))
      (coe d_injective_2426 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_2462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_2462 v7
du_'43''45'isGroupMonomorphism_2462 ::
  T_IsRingMonomorphism_2416 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_2462 v0
  = coe
      C_IsGroupMonomorphism'46'constructor_15537
      (coe
         du_'43''45'isGroupHomomorphism_2410
         (coe d_isRingHomomorphism_2424 (coe v0)))
      (coe d_injective_2426 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2466 v7
du_isMagmaMonomorphism_2466 ::
  T_IsRingMonomorphism_2416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2466 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_2462 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_isMonoidMonomorphism_688 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_2468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2468 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_2468 v7
du_isMonoidMonomorphism_2468 ::
  T_IsRingMonomorphism_2416 -> T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_2468 v0
  = coe
      du_isMonoidMonomorphism_688
      (coe du_'43''45'isGroupMonomorphism_2462 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_2470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2470 v7
du_isRelMonomorphism_2470 ::
  T_IsRingMonomorphism_2416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2470 v0
  = let v1 = coe du_'43''45'isGroupMonomorphism_2462 (coe v0) in
    coe
      (let v2 = coe du_isMonoidMonomorphism_688 (coe v1) in
       coe
         (coe
            du_isRelMonomorphism_226
            (coe du_isMagmaMonomorphism_408 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_2472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_2472 v7
du_'42''45'isMonoidMonomorphism_2472 ::
  T_IsRingMonomorphism_2416 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_2472 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_10237
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe
            d_isSemiringHomomorphism_2382
            (coe d_isRingHomomorphism_2424 (coe v0))))
      (coe d_injective_2426 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_2416 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2476 v7
du_isMagmaMonomorphism_2476 ::
  T_IsRingMonomorphism_2416 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2476 v0
  = coe
      du_isMagmaMonomorphism_408
      (coe du_'42''45'isMonoidMonomorphism_2472 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism
d_IsRingIsomorphism_2480 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingIsomorphism_2480
  = C_IsRingIsomorphism'46'constructor_48021 T_IsRingMonomorphism_2416
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_2488 ::
  T_IsRingIsomorphism_2480 -> T_IsRingMonomorphism_2416
d_isRingMonomorphism_2488 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_48021 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.surjective
d_surjective_2490 ::
  T_IsRingIsomorphism_2480 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2490 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_48021 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-homo
d_'42''45'homo_2494 ::
  T_IsRingIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_2494 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_2382
            (coe
               d_isRingHomomorphism_2424
               (coe d_isRingMonomorphism_2488 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_2496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_2496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_2496 v7
du_'42''45'isMagmaHomomorphism_2496 ::
  T_IsRingIsomorphism_2480 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_2496 v0
  = let v1 = d_isRingMonomorphism_2488 (coe v0) in
    coe
      (let v2 = d_isRingHomomorphism_2424 (coe v1) in
       coe
         (let v3 = d_isSemiringHomomorphism_2382 (coe v2) in
          coe
            (coe
               du_'42''45'isMagmaHomomorphism_952
               (coe d_isNearSemiringHomomorphism_1302 (coe v3)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_2498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_2498 v7
du_isMagmaMonomorphism_2498 ::
  T_IsRingIsomorphism_2480 -> T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2498 v0
  = let v1 = d_isRingMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_isMagmaMonomorphism_408
         (coe du_'42''45'isMonoidMonomorphism_2472 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_2500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_2500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_2500 v7
du_'42''45'isMonoidHomomorphism_2500 ::
  T_IsRingIsomorphism_2480 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_2500 v0
  = let v1 = d_isRingMonomorphism_2488 (coe v0) in
    coe
      (let v2 = d_isRingHomomorphism_2424 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoidHomomorphism_1324
            (coe d_isSemiringHomomorphism_2382 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_2502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_2502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_2502 v7
du_'42''45'isMonoidMonomorphism_2502 ::
  T_IsRingIsomorphism_2480 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_2502 v0
  = coe
      du_'42''45'isMonoidMonomorphism_2472
      (coe d_isRingMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo
d_homo_2504 ::
  T_IsRingIsomorphism_2480 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2504 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_2382
                  (coe
                     d_isRingHomomorphism_2424
                     (coe d_isRingMonomorphism_2488 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_2506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_2506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupHomomorphism_2506 v7
du_'43''45'isGroupHomomorphism_2506 ::
  T_IsRingIsomorphism_2480 -> T_IsGroupHomomorphism_634
du_'43''45'isGroupHomomorphism_2506 v0
  = let v1 = d_isRingMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_'43''45'isGroupHomomorphism_2410
         (coe d_isRingHomomorphism_2424 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_2508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsGroupMonomorphism_660
d_'43''45'isGroupMonomorphism_2508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_2508 v7
du_'43''45'isGroupMonomorphism_2508 ::
  T_IsRingIsomorphism_2480 -> T_IsGroupMonomorphism_660
du_'43''45'isGroupMonomorphism_2508 v0
  = coe
      du_'43''45'isGroupMonomorphism_2462
      (coe d_isRingMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_2510 ::
  T_IsRingIsomorphism_2480 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2510 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_2382
               (coe
                  d_isRingHomomorphism_2424
                  (coe d_isRingMonomorphism_2488 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_2512 ::
  T_IsRingIsomorphism_2480 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_2512 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_2382
            (coe
               d_isRingHomomorphism_2424
               (coe d_isRingMonomorphism_2488 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.-‿homo
d_'45''8255'homo_2514 ::
  T_IsRingIsomorphism_2480 -> AgdaAny -> AgdaAny
d_'45''8255'homo_2514 v0
  = coe
      d_'45''8255'homo_2384
      (coe
         d_isRingHomomorphism_2424 (coe d_isRingMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo
d_ε'45'homo_2516 :: T_IsRingIsomorphism_2480 -> AgdaAny
d_ε'45'homo_2516 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_2382
               (coe
                  d_isRingHomomorphism_2424
                  (coe d_isRingMonomorphism_2488 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.1#-homo
d_1'35''45'homo_2518 :: T_IsRingIsomorphism_2480 -> AgdaAny
d_1'35''45'homo_2518 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_2382
         (coe
            d_isRingHomomorphism_2424
            (coe d_isRingMonomorphism_2488 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.injective
d_injective_2520 ::
  T_IsRingIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2520 v0
  = coe d_injective_2426 (coe d_isRingMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_2522 ::
  T_IsRingIsomorphism_2480 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_2522 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_2382
         (coe
            d_isRingHomomorphism_2424
            (coe d_isRingMonomorphism_2488 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2524 ::
  T_IsRingIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2524 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_2382
                  (coe
                     d_isRingHomomorphism_2424
                     (coe d_isRingMonomorphism_2488 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRingHomomorphism
d_isRingHomomorphism_2526 ::
  T_IsRingIsomorphism_2480 -> T_IsRingHomomorphism_2374
d_isRingHomomorphism_2526 v0
  = coe
      d_isRingHomomorphism_2424 (coe d_isRingMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_2528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_2528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRingWithoutOneHomomorphism_2528 v7
du_isRingWithoutOneHomomorphism_2528 ::
  T_IsRingIsomorphism_2480 -> T_IsRingWithoutOneHomomorphism_1746
du_isRingWithoutOneHomomorphism_2528 v0
  = let v1 = d_isRingMonomorphism_2488 (coe v0) in
    coe
      (coe
         du_isRingWithoutOneHomomorphism_2412
         (coe d_isRingHomomorphism_2424 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_2530 ::
  T_IsRingIsomorphism_2480 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_2530 v0
  = coe
      d_isSemiringHomomorphism_2382
      (coe
         d_isRingHomomorphism_2424 (coe d_isRingMonomorphism_2488 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isSemiringMonomorphism
d_isSemiringMonomorphism_2532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_2532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringMonomorphism_2532 v7
du_isSemiringMonomorphism_2532 ::
  T_IsRingIsomorphism_2480 -> T_IsSemiringMonomorphism_1328
du_isSemiringMonomorphism_2532 v0
  = coe
      du_isSemiringMonomorphism_2460
      (coe d_isRingMonomorphism_2488 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong
d_cong_2534 ::
  T_IsRingIsomorphism_2480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2534 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_2382
                     (coe
                        d_isRingHomomorphism_2424
                        (coe d_isRingMonomorphism_2488 (coe v0))))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isSemiringIsomorphism
d_isSemiringIsomorphism_2536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsSemiringIsomorphism_1376
d_isSemiringIsomorphism_2536 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringIsomorphism_2536 v7
du_isSemiringIsomorphism_2536 ::
  T_IsRingIsomorphism_2480 -> T_IsSemiringIsomorphism_1376
du_isSemiringIsomorphism_2536 v0
  = coe
      C_IsSemiringIsomorphism'46'constructor_29931
      (coe
         du_isSemiringMonomorphism_2460
         (coe d_isRingMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_2538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsGroupIsomorphism_698
d_'43''45'isGroupIsomorphism_2538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupIsomorphism_2538 v7
du_'43''45'isGroupIsomorphism_2538 ::
  T_IsRingIsomorphism_2480 -> T_IsGroupIsomorphism_698
du_'43''45'isGroupIsomorphism_2538 v0
  = coe
      C_IsGroupIsomorphism'46'constructor_17073
      (coe
         du_'43''45'isGroupMonomorphism_2462
         (coe d_isRingMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_2542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2542 v7
du_isMagmaIsomorphism_2542 ::
  T_IsRingIsomorphism_2480 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2542 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_2538 (coe v0) in
    coe
      (coe
         du_isMagmaIsomorphism_448
         (coe du_isMonoidIsomorphism_736 (coe v1)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMonoidIsomorphism
d_isMonoidIsomorphism_2544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_2544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_2544 v7
du_isMonoidIsomorphism_2544 ::
  T_IsRingIsomorphism_2480 -> T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_2544 v0
  = coe
      du_isMonoidIsomorphism_736
      (coe du_'43''45'isGroupIsomorphism_2538 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_2546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2546 v7
du_isRelIsomorphism_2546 ::
  T_IsRingIsomorphism_2480 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2546 v0
  = let v1 = coe du_'43''45'isGroupIsomorphism_2538 (coe v0) in
    coe
      (let v2 = coe du_isMonoidIsomorphism_736 (coe v1) in
       coe
         (coe
            du_isRelIsomorphism_256 (coe du_isMagmaIsomorphism_448 (coe v2))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_2548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMonoidIsomorphism_416
d_'42''45'isMonoidIsomorphism_2548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_2548 v7
du_'42''45'isMonoidIsomorphism_2548 ::
  T_IsRingIsomorphism_2480 -> T_IsMonoidIsomorphism_416
du_'42''45'isMonoidIsomorphism_2548 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_11597
      (coe
         du_'42''45'isMonoidMonomorphism_2472
         (coe d_isRingMonomorphism_2488 (coe v0)))
      (coe d_surjective_2490 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaIsomorphism
d_isMagmaIsomorphism_2552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_2480 -> T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_2552 v7
du_isMagmaIsomorphism_2552 ::
  T_IsRingIsomorphism_2480 -> T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2552 v0
  = coe
      du_isMagmaIsomorphism_448
      (coe du_'42''45'isMonoidIsomorphism_2548 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._//_
d__'47''47'__2570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__2570 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'47''47'__2570 v4
du__'47''47'__2570 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__2570 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__358 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._\\_
d__'92''92'__2572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__2572 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'92''92'__2572 v4
du__'92''92'__2572 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'92''92'__2572 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__356 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._∙_
d__'8729'__2574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2574 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__2574 v4
du__'8729'__2574 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__2574 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__354 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms._._≈_
d__'8776'__2576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2576 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms._.Carrier
d_Carrier_2582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 -> ()
d_Carrier_2582 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2610 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2612 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2614 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.homo
d_homo_2618 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2618 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2620 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2620 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaHomomorphism.cong
d_cong_2622 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2622 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.homo
d_homo_2626 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2626 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.injective
d_injective_2628 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2628 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2630 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2630 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2632 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2632 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2634 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2634 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2636
du_isRelIsomorphism_2636 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2636 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2638 v7
du_isRelMonomorphism_2638 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2638 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.surjective
d_surjective_2640 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2640 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaIsomorphism.cong
d_cong_2642 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.homo
d_homo_2646 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2646 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.injective
d_injective_2648 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2648 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2650 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2650 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2652 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2652 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2654
du_isRelMonomorphism_2654 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2654 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.∙.IsMagmaMonomorphism.cong
d_cong_2656 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2656 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2660 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2662 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2664 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.homo
d_homo_2668 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2668 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2670 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2670 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaHomomorphism.cong
d_cong_2672 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.homo
d_homo_2676 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2676 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.injective
d_injective_2678 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2678 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2680 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2680 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2682 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2682 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2684 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2684 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2686
du_isRelIsomorphism_2686 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2686 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2688 v7
du_isRelMonomorphism_2688 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2688 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.surjective
d_surjective_2690 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2690 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaIsomorphism.cong
d_cong_2692 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.homo
d_homo_2696 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2696 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.injective
d_injective_2698 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2698 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2700 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2700 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2702 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2702 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2704
du_isRelMonomorphism_2704 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2704 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.\\.IsMagmaMonomorphism.cong
d_cong_2706 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2710 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2712 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2714 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.homo
d_homo_2718 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2718 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2720 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2720 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaHomomorphism.cong
d_cong_2722 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2722 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.homo
d_homo_2726 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2726 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.injective
d_injective_2728 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2728 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2730 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2730 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2732 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2732 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2734 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2734 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_2736
du_isRelIsomorphism_2736 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2736 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2738 v7
du_isRelMonomorphism_2738 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2738 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.surjective
d_surjective_2740 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2740 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaIsomorphism.cong
d_cong_2742 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2742 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.homo
d_homo_2746 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2746 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.injective
d_injective_2748 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2748 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2750 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2750 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2752 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2752 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_2754
du_isRelMonomorphism_2754 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2754 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.QuasigroupMorphisms.//.IsMagmaMonomorphism.cong
d_cong_2756 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms._.Homomorphic₂
d_Homomorphic'8322'_2764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_2764 = erased
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_2770 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupHomomorphism_2770
  = C_IsQuasigroupHomomorphism'46'constructor_52623 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2782 ::
  T_IsQuasigroupHomomorphism_2770 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2782 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_52623 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_2784 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2784 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_52623 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_2786 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2786 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_52623 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_2788 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2788 v0
  = case coe v0 of
      C_IsQuasigroupHomomorphism'46'constructor_52623 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism._.cong
d_cong_2792 ::
  T_IsQuasigroupHomomorphism_2770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2792 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_2782 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_2794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2794 v7
du_'8729''45'isMagmaHomomorphism_2794 ::
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_2794 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_isRelHomomorphism_2782 (coe v0))
      (coe d_'8729''45'homo_2784 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_2796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2796 v7
du_'92''92''45'isMagmaHomomorphism_2796 ::
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_2796 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_isRelHomomorphism_2782 (coe v0))
      (coe d_'92''92''45'homo_2786 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupHomomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2798 v7
du_'47''47''45'isMagmaHomomorphism_2798 ::
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_2798 v0
  = coe
      C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_isRelHomomorphism_2782 (coe v0))
      (coe d_'47''47''45'homo_2788 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_2802 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupMonomorphism_2802
  = C_IsQuasigroupMonomorphism'46'constructor_54419 T_IsQuasigroupHomomorphism_2770
                                                    (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2810 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_2810 v0
  = case coe v0 of
      C_IsQuasigroupMonomorphism'46'constructor_54419 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.injective
d_injective_2812 ::
  T_IsQuasigroupMonomorphism_2802 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2812 v0
  = case coe v0 of
      C_IsQuasigroupMonomorphism'46'constructor_54419 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.//-homo
d_'47''47''45'homo_2816 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2816 v0
  = coe
      d_'47''47''45'homo_2788
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_2818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2818 v7
du_'47''47''45'isMagmaHomomorphism_2818 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_2818 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2798
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.\\-homo
d_'92''92''45'homo_2820 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2820 v0
  = coe
      d_'92''92''45'homo_2786
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_2822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2822 v7
du_'92''92''45'isMagmaHomomorphism_2822 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_2822 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2796
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_2824 ::
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2824 v0
  = coe
      d_isRelHomomorphism_2782
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.∙-homo
d_'8729''45'homo_2826 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2826 v0
  = coe
      d_'8729''45'homo_2784
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_2828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2828 v7
du_'8729''45'isMagmaHomomorphism_2828 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_2828 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2794
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.cong
d_cong_2830 ::
  T_IsQuasigroupMonomorphism_2802 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe d_isQuasigroupHomomorphism_2810 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'8729''45'isMagmaMonomorphism_2832 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_2832 v7
du_'8729''45'isMagmaMonomorphism_2832 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'8729''45'isMagmaMonomorphism_2832 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         du_'8729''45'isMagmaHomomorphism_2794
         (coe d_isQuasigroupHomomorphism_2810 (coe v0)))
      (coe d_injective_2812 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'92''92''45'isMagmaMonomorphism_2834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_2834 v7
du_'92''92''45'isMagmaMonomorphism_2834 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'92''92''45'isMagmaMonomorphism_2834 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         du_'92''92''45'isMagmaHomomorphism_2796
         (coe d_isQuasigroupHomomorphism_2810 (coe v0)))
      (coe d_injective_2812 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'47''47''45'isMagmaMonomorphism_2836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_2836 v7
du_'47''47''45'isMagmaMonomorphism_2836 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'47''47''45'isMagmaMonomorphism_2836 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_5763
      (coe
         du_'47''47''45'isMagmaHomomorphism_2798
         (coe d_isQuasigroupHomomorphism_2810 (coe v0)))
      (coe d_injective_2812 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2840 v7
du_isRelMonomorphism_2840 ::
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2840 v0
  = coe
      du_isRelMonomorphism_226
      (coe du_'47''47''45'isMagmaMonomorphism_2836 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_2844 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroupIsomorphism_2844
  = C_IsQuasigroupIsomorphism'46'constructor_56539 T_IsQuasigroupMonomorphism_2802
                                                   (AgdaAny ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_2852 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsQuasigroupMonomorphism_2802
d_isQuasigroupMonomorphism_2852 v0
  = case coe v0 of
      C_IsQuasigroupIsomorphism'46'constructor_56539 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.surjective
d_surjective_2854 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2854 v0
  = case coe v0 of
      C_IsQuasigroupIsomorphism'46'constructor_56539 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-homo
d_'47''47''45'homo_2858 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_2858 v0
  = coe
      d_'47''47''45'homo_2788
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_2860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_2860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_2860 v7
du_'47''47''45'isMagmaHomomorphism_2860 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_2860 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2798
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_2862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'47''47''45'isMagmaMonomorphism_2862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_2862 v7
du_'47''47''45'isMagmaMonomorphism_2862 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'47''47''45'isMagmaMonomorphism_2862 v0
  = coe
      du_'47''47''45'isMagmaMonomorphism_2836
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-homo
d_'92''92''45'homo_2864 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_2864 v0
  = coe
      d_'92''92''45'homo_2786
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_2866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_2866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_2866 v7
du_'92''92''45'isMagmaHomomorphism_2866 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_2866 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2796
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_2868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'92''92''45'isMagmaMonomorphism_2868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_2868 v7
du_'92''92''45'isMagmaMonomorphism_2868 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'92''92''45'isMagmaMonomorphism_2868 v0
  = coe
      du_'92''92''45'isMagmaMonomorphism_2834
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.injective
d_injective_2870 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2870 v0
  = coe
      d_injective_2812 (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_2872 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_2872 v0
  = coe
      d_isQuasigroupHomomorphism_2810
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2874 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2874 v0
  = coe
      d_isRelHomomorphism_2782
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_2876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2876 v7
du_isRelMonomorphism_2876 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2876 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226
         (coe du_'47''47''45'isMagmaMonomorphism_2836 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-homo
d_'8729''45'homo_2878 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_2878 v0
  = coe
      d_'8729''45'homo_2784
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_2880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_2880 v7
du_'8729''45'isMagmaHomomorphism_2880 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_2880 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2794
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_2882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'8729''45'isMagmaMonomorphism_2882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_2882 v7
du_'8729''45'isMagmaMonomorphism_2882 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'8729''45'isMagmaMonomorphism_2882 v0
  = coe
      du_'8729''45'isMagmaMonomorphism_2832
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.cong
d_cong_2884 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2884 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe
            d_isQuasigroupHomomorphism_2810
            (coe d_isQuasigroupMonomorphism_2852 (coe v0))))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.∙-isMagmaIsomorphism
d_'8729''45'isMagmaIsomorphism_2886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'8729''45'isMagmaIsomorphism_2886 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaIsomorphism_2886 v7
du_'8729''45'isMagmaIsomorphism_2886 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'8729''45'isMagmaIsomorphism_2886 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_'8729''45'isMagmaMonomorphism_2832
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
      (coe d_surjective_2854 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.\\-isMagmaIsomorphism
d_'92''92''45'isMagmaIsomorphism_2888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'92''92''45'isMagmaIsomorphism_2888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'92''92''45'isMagmaIsomorphism_2888 v7
du_'92''92''45'isMagmaIsomorphism_2888 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'92''92''45'isMagmaIsomorphism_2888 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_'92''92''45'isMagmaMonomorphism_2834
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
      (coe d_surjective_2854 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism.//-isMagmaIsomorphism
d_'47''47''45'isMagmaIsomorphism_2890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'47''47''45'isMagmaIsomorphism_2890 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'47''47''45'isMagmaIsomorphism_2890 v7
du_'47''47''45'isMagmaIsomorphism_2890 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'47''47''45'isMagmaIsomorphism_2890 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_7199
      (coe
         du_'47''47''45'isMagmaMonomorphism_2836
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
      (coe d_surjective_2854 (coe v0))
-- Algebra.Morphism.Structures.QuasigroupMorphisms.IsQuasigroupIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_2894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2894 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2894 v7
du_isRelIsomorphism_2894 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2894 v0
  = coe
      du_isRelIsomorphism_256
      (coe du_'47''47''45'isMagmaIsomorphism_2890 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._._≈_
d__'8776'__2918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2918 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.Carrier
d_Carrier_2924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 -> ()
d_Carrier_2924 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.ε
d_ε_2930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 -> AgdaAny
d_ε_2930 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_2930 v4
du_ε_2930 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 -> AgdaAny
du_ε_2930 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_402 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.Homomorphic₀
d_Homomorphic'8320'_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_2960 = erased
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_2970 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_2972 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_2974 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism
d_IsMagmaHomomorphism_2978 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism
d_IsMagmaIsomorphism_2980 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism
d_IsMagmaMonomorphism_2982 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.homo
d_homo_2986 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2986 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2988 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2988 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaHomomorphism.cong
d_cong_2990 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2990 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.homo
d_homo_2994 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2994 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.injective
d_injective_2996 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2996 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2998 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2998 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3000 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_3000 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3002 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3002 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_3004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_3004
du_isRelIsomorphism_3004 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_3004 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_3006 v7
du_isRelMonomorphism_3006 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3006 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.surjective
d_surjective_3008 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3008 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaIsomorphism.cong
d_cong_3010 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3010 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.homo
d_homo_3014 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3014 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.injective
d_injective_3016 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3016 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3018 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3018 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3020 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3020 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3022 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_3022
du_isRelMonomorphism_3022 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3022 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.//.IsMagmaMonomorphism.cong
d_cong_3024 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3024 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_3028 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3028 v0 = coe d_'47''47''45'homo_2788 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaHomomorphism_3030
du_'47''47''45'isMagmaHomomorphism_3030 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3030 v0 v1
  = coe du_'47''47''45'isMagmaHomomorphism_2798 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_3032 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3032 v0 = coe d_'92''92''45'homo_2786 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaHomomorphism_3034
du_'92''92''45'isMagmaHomomorphism_3034 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3034 v0 v1
  = coe du_'92''92''45'isMagmaHomomorphism_2796 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3036 ::
  T_IsQuasigroupHomomorphism_2770 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3036 v0 = coe d_isRelHomomorphism_2782 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_3038 ::
  T_IsQuasigroupHomomorphism_2770 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3038 v0 = coe d_'8729''45'homo_2784 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaHomomorphism_3040
du_'8729''45'isMagmaHomomorphism_3040 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupHomomorphism_2770 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3040 v0 v1
  = coe du_'8729''45'isMagmaHomomorphism_2794 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupHomomorphism.cong
d_cong_3042 ::
  T_IsQuasigroupHomomorphism_2770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3042 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_2782 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-homo
d_'47''47''45'homo_3046 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3046 v0
  = coe
      d_'47''47''45'homo_2788
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_3048 v7
du_'47''47''45'isMagmaHomomorphism_3048 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3048 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2798
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaIsomorphism
d_'47''47''45'isMagmaIsomorphism_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'47''47''45'isMagmaIsomorphism_3050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaIsomorphism_3050
du_'47''47''45'isMagmaIsomorphism_3050 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'47''47''45'isMagmaIsomorphism_3050 v0 v1
  = coe du_'47''47''45'isMagmaIsomorphism_2890 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_3052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'47''47''45'isMagmaMonomorphism_3052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaMonomorphism_3052 v7
du_'47''47''45'isMagmaMonomorphism_3052 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'47''47''45'isMagmaMonomorphism_3052 v0
  = coe
      du_'47''47''45'isMagmaMonomorphism_2836
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-homo
d_'92''92''45'homo_3054 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3054 v0
  = coe
      d_'92''92''45'homo_2786
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_3056 v7
du_'92''92''45'isMagmaHomomorphism_3056 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3056 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2796
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaIsomorphism
d_'92''92''45'isMagmaIsomorphism_3058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'92''92''45'isMagmaIsomorphism_3058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaIsomorphism_3058
du_'92''92''45'isMagmaIsomorphism_3058 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'92''92''45'isMagmaIsomorphism_3058 v0 v1
  = coe du_'92''92''45'isMagmaIsomorphism_2888 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_3060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'92''92''45'isMagmaMonomorphism_3060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaMonomorphism_3060 v7
du_'92''92''45'isMagmaMonomorphism_3060 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'92''92''45'isMagmaMonomorphism_3060 v0
  = coe
      du_'92''92''45'isMagmaMonomorphism_2834
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.injective
d_injective_3062 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3062 v0
  = coe
      d_injective_2812 (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_3064 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_3064 v0
  = coe
      d_isQuasigroupHomomorphism_2810
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_3066 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsQuasigroupMonomorphism_2802
d_isQuasigroupMonomorphism_3066 v0
  = coe d_isQuasigroupMonomorphism_2852 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3068 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3068 v0
  = coe
      d_isRelHomomorphism_2782
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_3070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_3070 v7
du_isRelIsomorphism_3070 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_3070 v0
  = coe
      du_isRelIsomorphism_256
      (coe du_'47''47''45'isMagmaIsomorphism_2890 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_3072 v7
du_isRelMonomorphism_3072 ::
  T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3072 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_isRelMonomorphism_226
         (coe du_'47''47''45'isMagmaMonomorphism_2836 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.surjective
d_surjective_3074 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3074 v0 = coe d_surjective_2854 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-homo
d_'8729''45'homo_3076 ::
  T_IsQuasigroupIsomorphism_2844 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3076 v0
  = coe
      d_'8729''45'homo_2784
      (coe
         d_isQuasigroupHomomorphism_2810
         (coe d_isQuasigroupMonomorphism_2852 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_3078 v7
du_'8729''45'isMagmaHomomorphism_3078 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3078 v0
  = let v1 = d_isQuasigroupMonomorphism_2852 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2794
         (coe d_isQuasigroupHomomorphism_2810 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaIsomorphism
d_'8729''45'isMagmaIsomorphism_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
d_'8729''45'isMagmaIsomorphism_3080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaIsomorphism_3080
du_'8729''45'isMagmaIsomorphism_3080 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaIsomorphism_230
du_'8729''45'isMagmaIsomorphism_3080 v0 v1
  = coe du_'8729''45'isMagmaIsomorphism_2886 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_3082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
d_'8729''45'isMagmaMonomorphism_3082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaMonomorphism_3082 v7
du_'8729''45'isMagmaMonomorphism_3082 ::
  T_IsQuasigroupIsomorphism_2844 -> T_IsMagmaMonomorphism_206
du_'8729''45'isMagmaMonomorphism_3082 v0
  = coe
      du_'8729''45'isMagmaMonomorphism_2832
      (coe d_isQuasigroupMonomorphism_2852 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupIsomorphism.cong
d_cong_3084 ::
  T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3084 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe
            d_isQuasigroupHomomorphism_2810
            (coe d_isQuasigroupMonomorphism_2852 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-homo
d_'47''47''45'homo_3088 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3088 v0
  = coe
      d_'47''47''45'homo_2788
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_3090 v7
du_'47''47''45'isMagmaHomomorphism_3090 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3090 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2798
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.//-isMagmaMonomorphism
d_'47''47''45'isMagmaMonomorphism_3092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'47''47''45'isMagmaMonomorphism_3092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'47''47''45'isMagmaMonomorphism_3092
du_'47''47''45'isMagmaMonomorphism_3092 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'47''47''45'isMagmaMonomorphism_3092 v0 v1
  = coe du_'47''47''45'isMagmaMonomorphism_2836 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-homo
d_'92''92''45'homo_3094 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3094 v0
  = coe
      d_'92''92''45'homo_2786
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_3096 v7
du_'92''92''45'isMagmaHomomorphism_3096 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3096 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2796
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.\\-isMagmaMonomorphism
d_'92''92''45'isMagmaMonomorphism_3098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'92''92''45'isMagmaMonomorphism_3098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'92''92''45'isMagmaMonomorphism_3098
du_'92''92''45'isMagmaMonomorphism_3098 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'92''92''45'isMagmaMonomorphism_3098 v0 v1
  = coe du_'92''92''45'isMagmaMonomorphism_2834 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.injective
d_injective_3100 ::
  T_IsQuasigroupMonomorphism_2802 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3100 v0 = coe d_injective_2812 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_3102 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_3102 v0
  = coe d_isQuasigroupHomomorphism_2810 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3104 ::
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3104 v0
  = coe
      d_isRelHomomorphism_2782
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_3106 v7
du_isRelMonomorphism_3106 ::
  T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3106 v0
  = coe
      du_isRelMonomorphism_226
      (coe du_'47''47''45'isMagmaMonomorphism_2836 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-homo
d_'8729''45'homo_3108 ::
  T_IsQuasigroupMonomorphism_2802 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3108 v0
  = coe
      d_'8729''45'homo_2784
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_3110 v7
du_'8729''45'isMagmaHomomorphism_3110 ::
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3110 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2794
      (coe d_isQuasigroupHomomorphism_2810 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.∙-isMagmaMonomorphism
d_'8729''45'isMagmaMonomorphism_3112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
d_'8729''45'isMagmaMonomorphism_3112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8729''45'isMagmaMonomorphism_3112
du_'8729''45'isMagmaMonomorphism_3112 ::
  (AgdaAny -> AgdaAny) ->
  T_IsQuasigroupMonomorphism_2802 -> T_IsMagmaMonomorphism_206
du_'8729''45'isMagmaMonomorphism_3112 v0 v1
  = coe du_'8729''45'isMagmaMonomorphism_2832 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.IsQuasigroupMonomorphism.cong
d_cong_3114 ::
  T_IsQuasigroupMonomorphism_2802 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3114 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe d_isQuasigroupHomomorphism_2810 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism
d_IsMagmaHomomorphism_3118 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism
d_IsMagmaIsomorphism_3120 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism
d_IsMagmaMonomorphism_3122 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.homo
d_homo_3126 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3126 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3128 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3128 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaHomomorphism.cong
d_cong_3130 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3130 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.homo
d_homo_3134 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3134 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.injective
d_injective_3136 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3136 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3138 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3138 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3140 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_3140 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3142 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3142 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_3144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_3144
du_isRelIsomorphism_3144 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_3144 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_3146 v7
du_isRelMonomorphism_3146 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3146 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.surjective
d_surjective_3148 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3148 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaIsomorphism.cong
d_cong_3150 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3150 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.homo
d_homo_3154 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3154 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.injective
d_injective_3156 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3156 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3158 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3158 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3160 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3160 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_3162
du_isRelMonomorphism_3162 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3162 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.\\.IsMagmaMonomorphism.cong
d_cong_3164 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism
d_IsMagmaHomomorphism_3168 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism
d_IsMagmaIsomorphism_3170 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism
d_IsMagmaMonomorphism_3172 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.homo
d_homo_3176 ::
  T_IsMagmaHomomorphism_188 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3176 v0 = coe d_homo_198 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3178 ::
  T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3178 v0 = coe d_isRelHomomorphism_196 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaHomomorphism.cong
d_cong_3180 ::
  T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.homo
d_homo_3184 ::
  T_IsMagmaIsomorphism_230 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3184 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.injective
d_injective_3186 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3186 v0
  = coe d_injective_216 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3188 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3188 v0
  = coe
      d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3190 ::
  T_IsMagmaIsomorphism_230 -> T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_3190 v0
  = coe d_isMagmaMonomorphism_238 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3192 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3192 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_214 (coe d_isMagmaMonomorphism_238 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_3194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_3194
du_isRelIsomorphism_3194 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_3194 v0 v1 = coe du_isRelIsomorphism_256 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_3196 v7
du_isRelMonomorphism_3196 ::
  T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3196 v0
  = coe
      du_isRelMonomorphism_226 (coe d_isMagmaMonomorphism_238 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.surjective
d_surjective_3198 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3198 v0 = coe d_surjective_240 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaIsomorphism.cong
d_cong_3200 ::
  T_IsMagmaIsomorphism_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_214
            (coe d_isMagmaMonomorphism_238 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.homo
d_homo_3204 ::
  T_IsMagmaMonomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3204 v0
  = coe d_homo_198 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.injective
d_injective_3206 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3206 v0 = coe d_injective_216 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3208 ::
  T_IsMagmaMonomorphism_206 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3208 v0
  = coe d_isMagmaHomomorphism_214 (coe v0)
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3210 ::
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3210 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_3212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_3212
du_isRelMonomorphism_3212 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_3212 v0 v1 = coe du_isRelMonomorphism_226 v1
-- Algebra.Morphism.Structures.LoopMorphisms._.∙.IsMagmaMonomorphism.cong
d_cong_3214 ::
  T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isMagmaHomomorphism_214 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism
d_IsLoopHomomorphism_3218 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopHomomorphism_3218
  = C_IsLoopHomomorphism'46'constructor_60801 T_IsQuasigroupHomomorphism_2770
                                              AgdaAny
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_3226 ::
  T_IsLoopHomomorphism_3218 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_3226 v0
  = case coe v0 of
      C_IsLoopHomomorphism'46'constructor_60801 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism.ε-homo
d_ε'45'homo_3228 :: T_IsLoopHomomorphism_3218 -> AgdaAny
d_ε'45'homo_3228 v0
  = case coe v0 of
      C_IsLoopHomomorphism'46'constructor_60801 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.//-homo
d_'47''47''45'homo_3232 ::
  T_IsLoopHomomorphism_3218 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3232 v0
  = coe
      d_'47''47''45'homo_2788
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_3234 v7
du_'47''47''45'isMagmaHomomorphism_3234 ::
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3234 v0
  = coe
      du_'47''47''45'isMagmaHomomorphism_2798
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.\\-homo
d_'92''92''45'homo_3236 ::
  T_IsLoopHomomorphism_3218 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3236 v0
  = coe
      d_'92''92''45'homo_2786
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_3238 v7
du_'92''92''45'isMagmaHomomorphism_3238 ::
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3238 v0
  = coe
      du_'92''92''45'isMagmaHomomorphism_2796
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_3240 ::
  T_IsLoopHomomorphism_3218 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3240 v0
  = coe
      d_isRelHomomorphism_2782
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.∙-homo
d_'8729''45'homo_3242 ::
  T_IsLoopHomomorphism_3218 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3242 v0
  = coe
      d_'8729''45'homo_2784
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_3244 v7
du_'8729''45'isMagmaHomomorphism_3244 ::
  T_IsLoopHomomorphism_3218 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3244 v0
  = coe
      du_'8729''45'isMagmaHomomorphism_2794
      (coe d_isQuasigroupHomomorphism_3226 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopHomomorphism._.cong
d_cong_3246 ::
  T_IsLoopHomomorphism_3218 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3246 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe d_isQuasigroupHomomorphism_3226 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism
d_IsLoopMonomorphism_3250 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopMonomorphism_3250
  = C_IsLoopMonomorphism'46'constructor_61911 T_IsLoopHomomorphism_3218
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism.isLoopHomomorphism
d_isLoopHomomorphism_3258 ::
  T_IsLoopMonomorphism_3250 -> T_IsLoopHomomorphism_3218
d_isLoopHomomorphism_3258 v0
  = case coe v0 of
      C_IsLoopMonomorphism'46'constructor_61911 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism.injective
d_injective_3260 ::
  T_IsLoopMonomorphism_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3260 v0
  = case coe v0 of
      C_IsLoopMonomorphism'46'constructor_61911 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.//-homo
d_'47''47''45'homo_3264 ::
  T_IsLoopMonomorphism_3250 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3264 v0
  = coe
      d_'47''47''45'homo_2788
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_3258 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_3266 v7
du_'47''47''45'isMagmaHomomorphism_3266 ::
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3266 v0
  = let v1 = d_isLoopHomomorphism_3258 (coe v0) in
    coe
      (coe
         du_'47''47''45'isMagmaHomomorphism_2798
         (coe d_isQuasigroupHomomorphism_3226 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.\\-homo
d_'92''92''45'homo_3268 ::
  T_IsLoopMonomorphism_3250 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3268 v0
  = coe
      d_'92''92''45'homo_2786
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_3258 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_3270 v7
du_'92''92''45'isMagmaHomomorphism_3270 ::
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3270 v0
  = let v1 = d_isLoopHomomorphism_3258 (coe v0) in
    coe
      (coe
         du_'92''92''45'isMagmaHomomorphism_2796
         (coe d_isQuasigroupHomomorphism_3226 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_3272 ::
  T_IsLoopMonomorphism_3250 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_3272 v0
  = coe
      d_isQuasigroupHomomorphism_3226
      (coe d_isLoopHomomorphism_3258 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_3274 ::
  T_IsLoopMonomorphism_3250 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3274 v0
  = coe
      d_isRelHomomorphism_2782
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_3258 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.ε-homo
d_ε'45'homo_3276 :: T_IsLoopMonomorphism_3250 -> AgdaAny
d_ε'45'homo_3276 v0
  = coe d_ε'45'homo_3228 (coe d_isLoopHomomorphism_3258 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.∙-homo
d_'8729''45'homo_3278 ::
  T_IsLoopMonomorphism_3250 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3278 v0
  = coe
      d_'8729''45'homo_2784
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_3258 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_3280 v7
du_'8729''45'isMagmaHomomorphism_3280 ::
  T_IsLoopMonomorphism_3250 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3280 v0
  = let v1 = d_isLoopHomomorphism_3258 (coe v0) in
    coe
      (coe
         du_'8729''45'isMagmaHomomorphism_2794
         (coe d_isQuasigroupHomomorphism_3226 (coe v1)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopMonomorphism._.cong
d_cong_3282 ::
  T_IsLoopMonomorphism_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe
            d_isQuasigroupHomomorphism_3226
            (coe d_isLoopHomomorphism_3258 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism
d_IsLoopIsomorphism_3286 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLoopIsomorphism_3286
  = C_IsLoopIsomorphism'46'constructor_63155 T_IsLoopMonomorphism_3250
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism.isLoopMonomorphism
d_isLoopMonomorphism_3294 ::
  T_IsLoopIsomorphism_3286 -> T_IsLoopMonomorphism_3250
d_isLoopMonomorphism_3294 v0
  = case coe v0 of
      C_IsLoopIsomorphism'46'constructor_63155 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism.surjective
d_surjective_3296 ::
  T_IsLoopIsomorphism_3286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3296 v0
  = case coe v0 of
      C_IsLoopIsomorphism'46'constructor_63155 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.//-homo
d_'47''47''45'homo_3300 ::
  T_IsLoopIsomorphism_3286 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_3300 v0
  = coe
      d_'47''47''45'homo_2788
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe
            d_isLoopHomomorphism_3258
            (coe d_isLoopMonomorphism_3294 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_3302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_3302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'47''47''45'isMagmaHomomorphism_3302 v7
du_'47''47''45'isMagmaHomomorphism_3302 ::
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_3302 v0
  = let v1 = d_isLoopMonomorphism_3294 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_3258 (coe v1) in
       coe
         (coe
            du_'47''47''45'isMagmaHomomorphism_2798
            (coe d_isQuasigroupHomomorphism_3226 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.\\-homo
d_'92''92''45'homo_3304 ::
  T_IsLoopIsomorphism_3286 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_3304 v0
  = coe
      d_'92''92''45'homo_2786
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe
            d_isLoopHomomorphism_3258
            (coe d_isLoopMonomorphism_3294 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_3306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_3306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       v7
  = du_'92''92''45'isMagmaHomomorphism_3306 v7
du_'92''92''45'isMagmaHomomorphism_3306 ::
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_3306 v0
  = let v1 = d_isLoopMonomorphism_3294 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_3258 (coe v1) in
       coe
         (coe
            du_'92''92''45'isMagmaHomomorphism_2796
            (coe d_isQuasigroupHomomorphism_3226 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.injective
d_injective_3308 ::
  T_IsLoopIsomorphism_3286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3308 v0
  = coe d_injective_3260 (coe d_isLoopMonomorphism_3294 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isLoopHomomorphism
d_isLoopHomomorphism_3310 ::
  T_IsLoopIsomorphism_3286 -> T_IsLoopHomomorphism_3218
d_isLoopHomomorphism_3310 v0
  = coe
      d_isLoopHomomorphism_3258 (coe d_isLoopMonomorphism_3294 (coe v0))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_3312 ::
  T_IsLoopIsomorphism_3286 -> T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_3312 v0
  = coe
      d_isQuasigroupHomomorphism_3226
      (coe
         d_isLoopHomomorphism_3258 (coe d_isLoopMonomorphism_3294 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_3314 ::
  T_IsLoopIsomorphism_3286 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3314 v0
  = coe
      d_isRelHomomorphism_2782
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe
            d_isLoopHomomorphism_3258
            (coe d_isLoopMonomorphism_3294 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.ε-homo
d_ε'45'homo_3316 :: T_IsLoopIsomorphism_3286 -> AgdaAny
d_ε'45'homo_3316 v0
  = coe
      d_ε'45'homo_3228
      (coe
         d_isLoopHomomorphism_3258 (coe d_isLoopMonomorphism_3294 (coe v0)))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.∙-homo
d_'8729''45'homo_3318 ::
  T_IsLoopIsomorphism_3286 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_3318 v0
  = coe
      d_'8729''45'homo_2784
      (coe
         d_isQuasigroupHomomorphism_3226
         (coe
            d_isLoopHomomorphism_3258
            (coe d_isLoopMonomorphism_3294 (coe v0))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_3320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_3320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'isMagmaHomomorphism_3320 v7
du_'8729''45'isMagmaHomomorphism_3320 ::
  T_IsLoopIsomorphism_3286 -> T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_3320 v0
  = let v1 = d_isLoopMonomorphism_3294 (coe v0) in
    coe
      (let v2 = d_isLoopHomomorphism_3258 (coe v1) in
       coe
         (coe
            du_'8729''45'isMagmaHomomorphism_2794
            (coe d_isQuasigroupHomomorphism_3226 (coe v2))))
-- Algebra.Morphism.Structures.LoopMorphisms.IsLoopIsomorphism._.cong
d_cong_3322 ::
  T_IsLoopIsomorphism_3286 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_2782
         (coe
            d_isQuasigroupHomomorphism_3226
            (coe
               d_isLoopHomomorphism_3258
               (coe d_isLoopMonomorphism_3294 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._._≈_
d__'8776'__3344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3344 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._._⋆
d__'8902'_3348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  AgdaAny -> AgdaAny
d__'8902'_3348 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8902'_3348 v4
du__'8902'_3348 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  AgdaAny -> AgdaAny
du__'8902'_3348 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_448 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.Carrier
d_Carrier_3362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 -> ()
d_Carrier_3362 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.Homomorphic₁
d_Homomorphic'8321'_3398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_3398 = erased
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_3406 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_3408 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_3410 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-homo
d_'42''45'homo_3414 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3414 v0
  = coe
      d_'42''45'homo_938 (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3416 v7
du_'42''45'isMagmaHomomorphism_3416 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3416 v0
  = coe
      du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidHomomorphism_3418
du_'42''45'isMonoidHomomorphism_3418 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3418 v0 v1
  = coe du_'42''45'isMonoidHomomorphism_1324 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.homo
d_homo_3420 ::
  T_IsSemiringHomomorphism_1294 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3420 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3422 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3422 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3424 ::
  T_IsSemiringHomomorphism_1294 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3424 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_1302 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.ε-homo
d_ε'45'homo_3426 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_ε'45'homo_3426 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_1302 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_3428 :: T_IsSemiringHomomorphism_1294 -> AgdaAny
d_1'35''45'homo_3428 v0 = coe d_1'35''45'homo_1304 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3430 ::
  T_IsSemiringHomomorphism_1294 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3430 v0
  = coe d_isNearSemiringHomomorphism_1302 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3432 ::
  T_IsSemiringHomomorphism_1294 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3432 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_1302 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringHomomorphism.cong
d_cong_3434 ::
  T_IsSemiringHomomorphism_1294 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_1302 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-homo
d_'42''45'homo_3438 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3438 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3440 v7
du_'42''45'isMagmaHomomorphism_3440 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3440 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_1336 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_952
            (coe d_isNearSemiringHomomorphism_1302 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
d_'42''45'isMagmaIsomorphism_3442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_3442 v7
du_'42''45'isMagmaIsomorphism_3442 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaIsomorphism_230
du_'42''45'isMagmaIsomorphism_3442 v0
  = coe
      du_'42''45'isMagmaIsomorphism_1048
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_3444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_3444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_3444 v7
du_'42''45'isMagmaMonomorphism_3444 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_3444 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaMonomorphism_994
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3446 v7
du_'42''45'isMonoidHomomorphism_3446 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3446 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_1336 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_3448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'42''45'isMonoidIsomorphism_3448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidIsomorphism_3448
du_'42''45'isMonoidIsomorphism_3448 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'42''45'isMonoidIsomorphism_3448 v0 v1
  = coe du_'42''45'isMonoidIsomorphism_1432 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_3450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_3450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_3450 v7
du_'42''45'isMonoidMonomorphism_3450 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_3450 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1372
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.homo
d_homo_3452 ::
  T_IsSemiringIsomorphism_1376 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3452 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3454 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3454 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3456 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3456 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_1336
            (coe d_isSemiringMonomorphism_1384 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
d_'43''45'isMonoidIsomorphism_3458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_3458 v7
du_'43''45'isMonoidIsomorphism_3458 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidIsomorphism_416
du_'43''45'isMonoidIsomorphism_3458 v0
  = coe
      du_'43''45'isMonoidIsomorphism_1040
      (coe du_isNearSemiringIsomorphism_1424 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_3460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_3460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_3460 v7
du_'43''45'isMonoidMonomorphism_3460 ::
  T_IsSemiringIsomorphism_1376 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_3460 v0
  = let v1 = d_isSemiringMonomorphism_1384 (coe v0) in
    coe
      (coe
         du_'43''45'isMonoidMonomorphism_986
         (coe du_isNearSemiringMonomorphism_1364 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.ε-homo
d_ε'45'homo_3462 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_ε'45'homo_3462 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_1336
               (coe d_isSemiringMonomorphism_1384 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.1#-homo
d_1'35''45'homo_3464 :: T_IsSemiringIsomorphism_1376 -> AgdaAny
d_1'35''45'homo_3464 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.injective
d_injective_3466 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3466 v0
  = coe d_injective_1338 (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3468 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3468 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_1336
         (coe d_isSemiringMonomorphism_1384 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_3470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
d_isNearSemiringIsomorphism_3470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringIsomorphism_3470
du_isNearSemiringIsomorphism_3470 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringIsomorphism_998
du_isNearSemiringIsomorphism_3470 v0 v1
  = coe du_isNearSemiringIsomorphism_1424 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_3472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_3472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiringMonomorphism_3472 v7
du_isNearSemiringMonomorphism_3472 ::
  T_IsSemiringIsomorphism_1376 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_3472 v0
  = coe
      du_isNearSemiringMonomorphism_1364
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3474 ::
  T_IsSemiringIsomorphism_1376 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3474 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_1336
                  (coe d_isSemiringMonomorphism_1384 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3476 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_3476 v0
  = coe
      d_isSemiringHomomorphism_1336
      (coe d_isSemiringMonomorphism_1384 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_3478 ::
  T_IsSemiringIsomorphism_1376 -> T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_3478 v0
  = coe d_isSemiringMonomorphism_1384 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.surjective
d_surjective_3480 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3480 v0 = coe d_surjective_1386 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringIsomorphism.cong
d_cong_3482 ::
  T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_1336
                     (coe d_isSemiringMonomorphism_1384 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-homo
d_'42''45'homo_3486 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3486 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3488 v7
du_'42''45'isMagmaHomomorphism_3488 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3488 v0
  = let v1 = d_isSemiringHomomorphism_1336 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_3490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
d_'42''45'isMagmaMonomorphism_3490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_3490 v7
du_'42''45'isMagmaMonomorphism_3490 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaMonomorphism_206
du_'42''45'isMagmaMonomorphism_3490 v0
  = coe
      du_'42''45'isMagmaMonomorphism_994
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3492 v7
du_'42''45'isMonoidHomomorphism_3492 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3492 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_3494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'42''45'isMonoidMonomorphism_3494 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'42''45'isMonoidMonomorphism_3494
du_'42''45'isMonoidMonomorphism_3494 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'42''45'isMonoidMonomorphism_3494 v0 v1
  = coe du_'42''45'isMonoidMonomorphism_1372 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.homo
d_homo_3496 ::
  T_IsSemiringMonomorphism_1328 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3496 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3498 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3498 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3500 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3500 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_1336 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_3502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
d_'43''45'isMonoidMonomorphism_3502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_3502 v7
du_'43''45'isMonoidMonomorphism_3502 ::
  T_IsSemiringMonomorphism_1328 -> T_IsMonoidMonomorphism_384
du_'43''45'isMonoidMonomorphism_3502 v0
  = coe
      du_'43''45'isMonoidMonomorphism_986
      (coe du_isNearSemiringMonomorphism_1364 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.ε-homo
d_ε'45'homo_3504 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_ε'45'homo_3504 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_1336 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.1#-homo
d_1'35''45'homo_3506 :: T_IsSemiringMonomorphism_1328 -> AgdaAny
d_1'35''45'homo_3506 v0
  = coe
      d_1'35''45'homo_1304 (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.injective
d_injective_3508 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3508 v0 = coe d_injective_1338 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3510 ::
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3510 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_1336 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_3512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_3512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isNearSemiringMonomorphism_3512
du_isNearSemiringMonomorphism_3512 ::
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1328 -> T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_3512 v0 v1
  = coe du_isNearSemiringMonomorphism_1364 v1
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3514 ::
  T_IsSemiringMonomorphism_1328 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3514 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_1336 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3516 ::
  T_IsSemiringMonomorphism_1328 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_3516 v0
  = coe d_isSemiringHomomorphism_1336 (coe v0)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms._.IsSemiringMonomorphism.cong
d_cong_3518 ::
  T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3518 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_1336 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_3522 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraHomomorphism_3522
  = C_IsKleeneAlgebraHomomorphism'46'constructor_65639 T_IsSemiringHomomorphism_1294
                                                       (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_3530 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_3530 v0
  = case coe v0 of
      C_IsKleeneAlgebraHomomorphism'46'constructor_65639 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism.⋆-homo
d_'8902''45'homo_3532 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3532 v0
  = case coe v0 of
      C_IsKleeneAlgebraHomomorphism'46'constructor_65639 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_3536 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3536 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_3530 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3538 v7
du_'42''45'isMagmaHomomorphism_3538 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3538 v0
  = let v1 = d_isSemiringHomomorphism_3530 (coe v0) in
    coe
      (coe
         du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_1302 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3540 v7
du_'42''45'isMonoidHomomorphism_3540 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3540 v0
  = coe
      du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_3530 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.homo
d_homo_3542 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3542 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_3530 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3544 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3544 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_3530 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3546 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3546 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_3530 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_3548 :: T_IsKleeneAlgebraHomomorphism_3522 -> AgdaAny
d_ε'45'homo_3548 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_3530 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_3550 ::
  T_IsKleeneAlgebraHomomorphism_3522 -> AgdaAny
d_1'35''45'homo_3550 v0
  = coe
      d_1'35''45'homo_1304 (coe d_isSemiringHomomorphism_3530 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3552 ::
  T_IsKleeneAlgebraHomomorphism_3522 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3552 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_3530 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_3554 ::
  T_IsKleeneAlgebraHomomorphism_3522 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3554 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_3530 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraHomomorphism._.cong
d_cong_3556 ::
  T_IsKleeneAlgebraHomomorphism_3522 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3556 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_3530 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_3560 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraMonomorphism_3560
  = C_IsKleeneAlgebraMonomorphism'46'constructor_66943 T_IsKleeneAlgebraHomomorphism_3522
                                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_3568 ::
  T_IsKleeneAlgebraMonomorphism_3560 ->
  T_IsKleeneAlgebraHomomorphism_3522
d_isKleeneAlgebraHomomorphism_3568 v0
  = case coe v0 of
      C_IsKleeneAlgebraMonomorphism'46'constructor_66943 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism.injective
d_injective_3570 ::
  T_IsKleeneAlgebraMonomorphism_3560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3570 v0
  = case coe v0 of
      C_IsKleeneAlgebraMonomorphism'46'constructor_66943 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-homo
d_'42''45'homo_3574 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3574 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3576 v7
du_'42''45'isMagmaHomomorphism_3576 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3576 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_3568 (coe v0) in
    coe
      (let v2 = d_isSemiringHomomorphism_3530 (coe v1) in
       coe
         (coe
            du_'42''45'isMagmaHomomorphism_952
            (coe d_isNearSemiringHomomorphism_1302 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3578 v7
du_'42''45'isMonoidHomomorphism_3578 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3578 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_3568 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_3530 (coe v1)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.homo
d_homo_3580 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3580 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3582 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3582 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3584 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3584 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.ε-homo
d_ε'45'homo_3586 :: T_IsKleeneAlgebraMonomorphism_3560 -> AgdaAny
d_ε'45'homo_3586 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.1#-homo
d_1'35''45'homo_3588 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> AgdaAny
d_1'35''45'homo_3588 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3590 ::
  T_IsKleeneAlgebraMonomorphism_3560 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3590 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_3592 ::
  T_IsKleeneAlgebraMonomorphism_3560 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3592 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_3594 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_3594 v0
  = coe
      d_isSemiringHomomorphism_3530
      (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.⋆-homo
d_'8902''45'homo_3596 ::
  T_IsKleeneAlgebraMonomorphism_3560 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3596 v0
  = coe
      d_'8902''45'homo_3532
      (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraMonomorphism._.cong
d_cong_3598 ::
  T_IsKleeneAlgebraMonomorphism_3560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3598 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_3530
                     (coe d_isKleeneAlgebraHomomorphism_3568 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_3602 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKleeneAlgebraIsomorphism_3602
  = C_IsKleeneAlgebraIsomorphism'46'constructor_68383 T_IsKleeneAlgebraMonomorphism_3560
                                                      (AgdaAny ->
                                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_3610 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  T_IsKleeneAlgebraMonomorphism_3560
d_isKleeneAlgebraMonomorphism_3610 v0
  = case coe v0 of
      C_IsKleeneAlgebraIsomorphism'46'constructor_68383 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism.surjective
d_surjective_3612 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3612 v0
  = case coe v0 of
      C_IsKleeneAlgebraIsomorphism'46'constructor_68383 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-homo
d_'42''45'homo_3616 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_3616 v0
  = coe
      d_'42''45'homo_938
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_3530
            (coe
               d_isKleeneAlgebraHomomorphism_3568
               (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_3618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_3618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaHomomorphism_3618 v7
du_'42''45'isMagmaHomomorphism_3618 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_3618 v0
  = let v1 = d_isKleeneAlgebraMonomorphism_3610 (coe v0) in
    coe
      (let v2 = d_isKleeneAlgebraHomomorphism_3568 (coe v1) in
       coe
         (let v3 = d_isSemiringHomomorphism_3530 (coe v2) in
          coe
            (coe
               du_'42''45'isMagmaHomomorphism_952
               (coe d_isNearSemiringHomomorphism_1302 (coe v3)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_3620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_3620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidHomomorphism_3620 v7
du_'42''45'isMonoidHomomorphism_3620 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_3620 v0
  = let v1 = d_isKleeneAlgebraMonomorphism_3610 (coe v0) in
    coe
      (let v2 = d_isKleeneAlgebraHomomorphism_3568 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoidHomomorphism_1324
            (coe d_isSemiringHomomorphism_3530 (coe v2))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.homo
d_homo_3622 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_3622 v0
  = coe
      d_homo_198
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_3530
                  (coe
                     d_isKleeneAlgebraHomomorphism_3568
                     (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_3624 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_3624 v0
  = coe
      d_isMagmaHomomorphism_370
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_3530
               (coe
                  d_isKleeneAlgebraHomomorphism_3568
                  (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_3626 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_3626 v0
  = coe
      d_'43''45'isMonoidHomomorphism_936
      (coe
         d_isNearSemiringHomomorphism_1302
         (coe
            d_isSemiringHomomorphism_3530
            (coe
               d_isKleeneAlgebraHomomorphism_3568
               (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.ε-homo
d_ε'45'homo_3628 :: T_IsKleeneAlgebraIsomorphism_3602 -> AgdaAny
d_ε'45'homo_3628 v0
  = coe
      d_ε'45'homo_372
      (coe
         d_'43''45'isMonoidHomomorphism_936
         (coe
            d_isNearSemiringHomomorphism_1302
            (coe
               d_isSemiringHomomorphism_3530
               (coe
                  d_isKleeneAlgebraHomomorphism_3568
                  (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.1#-homo
d_1'35''45'homo_3630 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> AgdaAny
d_1'35''45'homo_3630 v0
  = coe
      d_1'35''45'homo_1304
      (coe
         d_isSemiringHomomorphism_3530
         (coe
            d_isKleeneAlgebraHomomorphism_3568
            (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.injective
d_injective_3632 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_3632 v0
  = coe
      d_injective_3570 (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_3634 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  T_IsKleeneAlgebraHomomorphism_3522
d_isKleeneAlgebraHomomorphism_3634 v0
  = coe
      d_isKleeneAlgebraHomomorphism_3568
      (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_3636 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_3636 v0
  = coe
      d_isNearSemiringHomomorphism_1302
      (coe
         d_isSemiringHomomorphism_3530
         (coe
            d_isKleeneAlgebraHomomorphism_3568
            (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_3638 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3638 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isMagmaHomomorphism_370
         (coe
            d_'43''45'isMonoidHomomorphism_936
            (coe
               d_isNearSemiringHomomorphism_1302
               (coe
                  d_isSemiringHomomorphism_3530
                  (coe
                     d_isKleeneAlgebraHomomorphism_3568
                     (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))))))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_3640 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_3640 v0
  = coe
      d_isSemiringHomomorphism_3530
      (coe
         d_isKleeneAlgebraHomomorphism_3568
         (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.⋆-homo
d_'8902''45'homo_3642 ::
  T_IsKleeneAlgebraIsomorphism_3602 -> AgdaAny -> AgdaAny
d_'8902''45'homo_3642 v0
  = coe
      d_'8902''45'homo_3532
      (coe
         d_isKleeneAlgebraHomomorphism_3568
         (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0)))
-- Algebra.Morphism.Structures.KleeneAlgebraMorphisms.IsKleeneAlgebraIsomorphism._.cong
d_cong_3644 ::
  T_IsKleeneAlgebraIsomorphism_3602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_3644 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isMagmaHomomorphism_370
            (coe
               d_'43''45'isMonoidHomomorphism_936
               (coe
                  d_isNearSemiringHomomorphism_1302
                  (coe
                     d_isSemiringHomomorphism_3530
                     (coe
                        d_isKleeneAlgebraHomomorphism_3568
                        (coe d_isKleeneAlgebraMonomorphism_3610 (coe v0))))))))
