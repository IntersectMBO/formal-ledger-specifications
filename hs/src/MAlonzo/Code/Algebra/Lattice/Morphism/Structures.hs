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

module MAlonzo.Code.Algebra.Lattice.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Lattice.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms._._∧_
d__'8743'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__32 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8743'__32 v4
du__'8743'__32 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8743'__32 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.Raw.d__'8743'__30 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms._._∨_
d__'8744'__34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__34 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8744'__34 v4
du__'8744'__34 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8744'__34 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.Raw.d__'8744'__32 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms._._≈_
d__'8776'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__36 = erased
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms._.Carrier
d_Carrier_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 -> ()
d_Carrier_40 = erased
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism
d_IsMagmaHomomorphism_64 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism
d_IsMagmaIsomorphism_68 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism
d_IsMagmaMonomorphism_72 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.homo
d_homo_78 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_78 v0
  = coe MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_80 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_80 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.cong
d_cong_82 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_82 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.homo
d_homo_86 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_86 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.injective
d_injective_88 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_88 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_224
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_90 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_90 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_92 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_92 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_94 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_94 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_96
du_isRelIsomorphism_96 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266 v1
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_98 v7
du_isRelMonomorphism_98 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_98 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.surjective
d_surjective_100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_100 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_250 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.cong
d_cong_102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
               (coe v0))))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.homo
d_homo_106 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_106 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.injective
d_injective_108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_108 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_224 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_114
du_isRelMonomorphism_114 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_114 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      v1
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.cong
d_cong_116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_116 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism
d_IsMagmaHomomorphism_120 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism
d_IsMagmaIsomorphism_124 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism
d_IsMagmaMonomorphism_128 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.homo
d_homo_134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_134 v0
  = coe MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.cong
d_cong_138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.homo
d_homo_142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.injective
d_injective_144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_224
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_152
du_isRelIsomorphism_152 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_152 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266 v1
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_154 v7
du_isRelMonomorphism_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.surjective
d_surjective_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_250 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.cong
d_cong_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
               (coe v0))))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.homo
d_homo_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.injective
d_injective_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_224 (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
      (coe v0)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
         (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_170
du_isRelMonomorphism_170 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_170 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      v1
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.cong
d_cong_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
            (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms._.Homomorphic₂
d_Homomorphic'8322'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_180 = erased
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism
d_IsLatticeHomomorphism_186 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeHomomorphism_186
  = C_constructor_210 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.isRelHomomorphism
d_isRelHomomorphism_196 ::
  T_IsLatticeHomomorphism_186 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_196 v0
  = case coe v0 of
      C_constructor_210 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∧-homo
d_'8743''45'homo_198 ::
  T_IsLatticeHomomorphism_186 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'homo_198 v0
  = case coe v0 of
      C_constructor_210 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∨-homo
d_'8744''45'homo_200 ::
  T_IsLatticeHomomorphism_186 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'homo_200 v0
  = case coe v0 of
      C_constructor_210 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.cong
d_cong_204 ::
  T_IsLatticeHomomorphism_186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_196 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeHomomorphism_186 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8743''45'isMagmaHomomorphism_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaHomomorphism_206 v7
du_'8743''45'isMagmaHomomorphism_206 ::
  T_IsLatticeHomomorphism_186 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8743''45'isMagmaHomomorphism_206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_210
      (coe d_isRelHomomorphism_196 (coe v0))
      (coe d_'8743''45'homo_198 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeHomomorphism_186 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8744''45'isMagmaHomomorphism_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaHomomorphism_208 v7
du_'8744''45'isMagmaHomomorphism_208 ::
  T_IsLatticeHomomorphism_186 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8744''45'isMagmaHomomorphism_208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_210
      (coe d_isRelHomomorphism_196 (coe v0))
      (coe d_'8744''45'homo_200 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism
d_IsLatticeMonomorphism_214 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeMonomorphism_214
  = C_constructor_248 T_IsLatticeHomomorphism_186
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.isLatticeHomomorphism
d_isLatticeHomomorphism_222 ::
  T_IsLatticeMonomorphism_214 -> T_IsLatticeHomomorphism_186
d_isLatticeHomomorphism_222 v0
  = case coe v0 of
      C_constructor_248 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.injective
d_injective_224 ::
  T_IsLatticeMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_224 v0
  = case coe v0 of
      C_constructor_248 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_228 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_228 v0
  = coe
      d_isRelHomomorphism_196 (coe d_isLatticeHomomorphism_222 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∧-homo
d_'8743''45'homo_230 ::
  T_IsLatticeMonomorphism_214 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'homo_230 v0
  = coe
      d_'8743''45'homo_198 (coe d_isLatticeHomomorphism_222 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8743''45'isMagmaHomomorphism_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaHomomorphism_232 v7
du_'8743''45'isMagmaHomomorphism_232 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8743''45'isMagmaHomomorphism_232 v0
  = coe
      du_'8743''45'isMagmaHomomorphism_206
      (coe d_isLatticeHomomorphism_222 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∨-homo
d_'8744''45'homo_234 ::
  T_IsLatticeMonomorphism_214 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'homo_234 v0
  = coe
      d_'8744''45'homo_200 (coe d_isLatticeHomomorphism_222 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8744''45'isMagmaHomomorphism_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaHomomorphism_236 v7
du_'8744''45'isMagmaHomomorphism_236 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8744''45'isMagmaHomomorphism_236 v0
  = coe
      du_'8744''45'isMagmaHomomorphism_208
      (coe d_isLatticeHomomorphism_222 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.cong
d_cong_238 ::
  T_IsLatticeMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196 (coe d_isLatticeHomomorphism_222 (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.∨-isMagmaMonomorphism
d_'8744''45'isMagmaMonomorphism_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_'8744''45'isMagmaMonomorphism_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaMonomorphism_240 v7
du_'8744''45'isMagmaMonomorphism_240 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_'8744''45'isMagmaMonomorphism_240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_236
      (coe
         du_'8744''45'isMagmaHomomorphism_208
         (coe d_isLatticeHomomorphism_222 (coe v0)))
      (coe d_injective_224 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.∧-isMagmaMonomorphism
d_'8743''45'isMagmaMonomorphism_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_'8743''45'isMagmaMonomorphism_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaMonomorphism_242 v7
du_'8743''45'isMagmaMonomorphism_242 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_'8743''45'isMagmaMonomorphism_242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_236
      (coe
         du_'8743''45'isMagmaHomomorphism_206
         (coe d_isLatticeHomomorphism_222 (coe v0)))
      (coe d_injective_224 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_246 v7
du_isRelMonomorphism_246 ::
  T_IsLatticeMonomorphism_214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe du_'8743''45'isMagmaMonomorphism_242 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism
d_IsLatticeIsomorphism_252 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeIsomorphism_252
  = C_constructor_296 T_IsLatticeMonomorphism_214
                      (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.isLatticeMonomorphism
d_isLatticeMonomorphism_260 ::
  T_IsLatticeIsomorphism_252 -> T_IsLatticeMonomorphism_214
d_isLatticeMonomorphism_260 v0
  = case coe v0 of
      C_constructor_296 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.surjective
d_surjective_262 ::
  T_IsLatticeIsomorphism_252 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_262 v0
  = case coe v0 of
      C_constructor_296 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.injective
d_injective_266 ::
  T_IsLatticeIsomorphism_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_266 v0
  = coe d_injective_224 (coe d_isLatticeMonomorphism_260 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isLatticeHomomorphism
d_isLatticeHomomorphism_268 ::
  T_IsLatticeIsomorphism_252 -> T_IsLatticeHomomorphism_186
d_isLatticeHomomorphism_268 v0
  = coe
      d_isLatticeHomomorphism_222
      (coe d_isLatticeMonomorphism_260 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_270 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_270 v0
  = coe
      d_isRelHomomorphism_196
      (coe
         d_isLatticeHomomorphism_222
         (coe d_isLatticeMonomorphism_260 (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_272 v7
du_isRelMonomorphism_272 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_272 v0
  = let v1 = d_isLatticeMonomorphism_260 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe du_'8743''45'isMagmaMonomorphism_242 (coe v1)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∧-homo
d_'8743''45'homo_274 ::
  T_IsLatticeIsomorphism_252 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'homo_274 v0
  = coe
      d_'8743''45'homo_198
      (coe
         d_isLatticeHomomorphism_222
         (coe d_isLatticeMonomorphism_260 (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8743''45'isMagmaHomomorphism_276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaHomomorphism_276 v7
du_'8743''45'isMagmaHomomorphism_276 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8743''45'isMagmaHomomorphism_276 v0
  = let v1 = d_isLatticeMonomorphism_260 (coe v0) in
    coe
      (coe
         du_'8743''45'isMagmaHomomorphism_206
         (coe d_isLatticeHomomorphism_222 (coe v1)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∧-isMagmaMonomorphism
d_'8743''45'isMagmaMonomorphism_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_'8743''45'isMagmaMonomorphism_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaMonomorphism_278 v7
du_'8743''45'isMagmaMonomorphism_278 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_'8743''45'isMagmaMonomorphism_278 v0
  = coe
      du_'8743''45'isMagmaMonomorphism_242
      (coe d_isLatticeMonomorphism_260 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∨-homo
d_'8744''45'homo_280 ::
  T_IsLatticeIsomorphism_252 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'homo_280 v0
  = coe
      d_'8744''45'homo_200
      (coe
         d_isLatticeHomomorphism_222
         (coe d_isLatticeMonomorphism_260 (coe v0)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8744''45'isMagmaHomomorphism_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaHomomorphism_282 v7
du_'8744''45'isMagmaHomomorphism_282 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8744''45'isMagmaHomomorphism_282 v0
  = let v1 = d_isLatticeMonomorphism_260 (coe v0) in
    coe
      (coe
         du_'8744''45'isMagmaHomomorphism_208
         (coe d_isLatticeHomomorphism_222 (coe v1)))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∨-isMagmaMonomorphism
d_'8744''45'isMagmaMonomorphism_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_'8744''45'isMagmaMonomorphism_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaMonomorphism_284 v7
du_'8744''45'isMagmaMonomorphism_284 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_'8744''45'isMagmaMonomorphism_284 v0
  = coe
      du_'8744''45'isMagmaMonomorphism_240
      (coe d_isLatticeMonomorphism_260 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.cong
d_cong_286 ::
  T_IsLatticeIsomorphism_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_286 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_196
         (coe
            d_isLatticeHomomorphism_222
            (coe d_isLatticeMonomorphism_260 (coe v0))))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.∨-isMagmaIsomorphism
d_'8744''45'isMagmaIsomorphism_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_'8744''45'isMagmaIsomorphism_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaIsomorphism_288 v7
du_'8744''45'isMagmaIsomorphism_288 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_'8744''45'isMagmaIsomorphism_288 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_268
      (coe
         du_'8744''45'isMagmaMonomorphism_240
         (coe d_isLatticeMonomorphism_260 (coe v0)))
      (coe d_surjective_262 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.∧-isMagmaIsomorphism
d_'8743''45'isMagmaIsomorphism_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_'8743''45'isMagmaIsomorphism_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaIsomorphism_290 v7
du_'8743''45'isMagmaIsomorphism_290 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_'8743''45'isMagmaIsomorphism_290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_268
      (coe
         du_'8743''45'isMagmaMonomorphism_242
         (coe d_isLatticeMonomorphism_260 (coe v0)))
      (coe d_surjective_262 (coe v0))
-- Algebra.Lattice.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_294 v7
du_isRelIsomorphism_294 ::
  T_IsLatticeIsomorphism_252 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe du_'8743''45'isMagmaIsomorphism_290 (coe v0))
