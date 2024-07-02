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

module MAlonzo.Code.Ledger.TokenAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Ledger.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_6 :: () -> ()
d_MemoryEstimate_6 = erased
-- Ledger.TokenAlgebra.TokenAlgebra
d_TokenAlgebra_8 a0 = ()
data T_TokenAlgebra_8
  = C_TokenAlgebra'46'constructor_2011 MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
                                       (AgdaAny -> Integer) (Integer -> AgdaAny)
                                       (AgdaAny -> [AgdaAny]) (AgdaAny -> Integer) AgdaAny
                                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       (AgdaAny ->
                                        AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.TokenAlgebra._.rawMonoid
d_rawMonoid_24 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_24 ~v0 ~v1 v2 = du_rawMonoid_24 v2
du_rawMonoid_24 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_24 v0
  = let v1
          = coe
              MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_30 a0 a1 a2 a3 = ()
-- Ledger.TokenAlgebra.TokenAlgebra.Value
d_Value_118 :: T_TokenAlgebra_8 -> ()
d_Value_118 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_120 ::
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_120 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_122 ::
  () ->
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_122 ~v0 v1
  = du_Value'45'CommutativeMonoid_122 v1
du_Value'45'CommutativeMonoid_122 ::
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_122 v0
  = coe
      MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
      (coe d_Value'45'IsCommutativeMonoid''_120 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._._∙_
d__'8729'__126 ::
  () -> T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__126 ~v0 v1 = du__'8729'__126 v1
du__'8729'__126 ::
  T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__126 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe du_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._._≈_
d__'8776'__128 ::
  () -> T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> ()
d__'8776'__128 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.monoid
d_monoid_130 ::
  () -> T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_130 ~v0 v1 = du_monoid_130 v1
du_monoid_130 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_130 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe du_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.rawMonoid
d_rawMonoid_132 ::
  () ->
  T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_132 ~v0 v1 = du_rawMonoid_132 v1
du_rawMonoid_132 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_132 v0
  = let v1 = coe du_Value'45'CommutativeMonoid_122 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.TokenAlgebra.TokenAlgebra._.ε
d_ε_134 :: () -> T_TokenAlgebra_8 -> AgdaAny
d_ε_134 ~v0 v1 = du_ε_134 v1
du_ε_134 :: T_TokenAlgebra_8 -> AgdaAny
du_ε_134 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe du_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_138 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_140 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_142 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_146 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_152 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_154 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_158 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_164 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_164 ~v0 ~v1 = du_isMagmaIsomorphism_164
du_isMagmaIsomorphism_164 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_164 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_166 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_166 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_166 v3
du_isMagmaMonomorphism_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_174 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_174 ~v0 ~v1 ~v2 v3 = du_isRelIsomorphism_174 v3
du_isRelIsomorphism_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_176 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_176 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_176 v3
du_isRelMonomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_176 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_180 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_182 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_186 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_192 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_192 ~v0 ~v1 = du_isMagmaMonomorphism_192
du_isMagmaMonomorphism_192 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_192 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_196 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_198 ::
  () ->
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_198 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_198 v3
du_isRelMonomorphism_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_198 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_200 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_202 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coin
d_coin_204 :: T_TokenAlgebra_8 -> AgdaAny -> Integer
d_coin_204 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.inject
d_inject_206 :: T_TokenAlgebra_8 -> Integer -> AgdaAny
d_inject_206 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.policies
d_policies_208 :: T_TokenAlgebra_8 -> AgdaAny -> [AgdaAny]
d_policies_208 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.size
d_size_210 :: T_TokenAlgebra_8 -> AgdaAny -> Integer
d_size_210 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra._≤ᵗ_
d__'8804''7511'__212 ::
  T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__212 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.AssetName
d_AssetName_214 :: T_TokenAlgebra_8 -> ()
d_AssetName_214 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.specialAsset
d_specialAsset_216 :: T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_216 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.property
d_property_218 ::
  T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_218 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_220 ::
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_220 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_222 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_222 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_224 ::
  T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_224 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.addValue
d_addValue_226 ::
  () -> T_TokenAlgebra_8 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_226 ~v0 v1 = du_addValue_226 v1
du_addValue_226 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_226 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe du_Value'45'CommutativeMonoid_122 (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_232 ::
  () ->
  T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_232 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.sumᵛ
d_sum'7515'_244 :: () -> T_TokenAlgebra_8 -> [AgdaAny] -> AgdaAny
d_sum'7515'_244 ~v0 v1 v2 = du_sum'7515'_244 v1 v2
du_sum'7515'_244 :: T_TokenAlgebra_8 -> [AgdaAny] -> AgdaAny
du_sum'7515'_244 v0 v1
  = case coe v1 of
      [] -> coe d_inject_206 v0 (0 :: Integer)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Algebra.Bundles.d__'8729'__840
             (coe du_Value'45'CommutativeMonoid_122 (coe v0)) v2
             (coe du_sum'7515'_244 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
