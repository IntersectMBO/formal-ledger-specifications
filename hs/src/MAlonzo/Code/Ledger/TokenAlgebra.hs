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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Ledger.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_6 :: () -> ()
d_MemoryEstimate_6 = erased
-- Ledger.TokenAlgebra.TokenAlgebra
d_TokenAlgebra_8 a0 = ()
data T_TokenAlgebra_8
  = C_TokenAlgebra'46'constructor_1259 MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
                                       (AgdaAny -> Integer) (Integer -> AgdaAny)
                                       (AgdaAny -> [AgdaAny]) (AgdaAny -> Integer)
                                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.TokenAlgebra._.rawMonoid
d_rawMonoid_22 ::
  () ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_22 ~v0 ~v1 v2 = du_rawMonoid_22 v2
du_rawMonoid_22 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_22 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_28 a0 a1 a2 a3 = ()
-- Ledger.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_38 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_38 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_42 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_42 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.Value
d_Value_108 :: T_TokenAlgebra_8 -> ()
d_Value_108 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_110 ::
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_110 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra._._∙_
d__'8729'__114 :: T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__114 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe d_Value'45'CommutativeMonoid_110 (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._._≈_
d__'8776'__116 :: T_TokenAlgebra_8 -> AgdaAny -> AgdaAny -> ()
d__'8776'__116 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.monoid
d_monoid_118 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_118 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe d_Value'45'CommutativeMonoid_110 (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.rawMonoid
d_rawMonoid_120 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_120 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe d_Value'45'CommutativeMonoid_110 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.TokenAlgebra.TokenAlgebra._.ε
d_ε_122 :: T_TokenAlgebra_8 -> AgdaAny
d_ε_122 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe d_Value'45'CommutativeMonoid_110 (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_126 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_128 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_130 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_134 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_138 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_140 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_142 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_146 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_152 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_152 ~v0 = du_isMagmaIsomorphism_152
du_isMagmaIsomorphism_152 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_152 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_154 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_154 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_154 v2
du_isMagmaMonomorphism_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_162 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_162 ~v0 ~v1 v2 = du_isRelIsomorphism_162 v2
du_isRelIsomorphism_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_164 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_164 ~v0 ~v1 v2 = du_isRelMonomorphism_164 v2
du_isRelMonomorphism_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_164 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_168 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_170 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_174 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_180 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_180 ~v0 = du_isMagmaMonomorphism_180
du_isMagmaMonomorphism_180 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_180 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_186 ::
  T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_186 ~v0 ~v1 v2 = du_isRelMonomorphism_186 v2
du_isRelMonomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_188 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_190 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coin
d_coin_192 :: T_TokenAlgebra_8 -> AgdaAny -> Integer
d_coin_192 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.inject
d_inject_194 :: T_TokenAlgebra_8 -> Integer -> AgdaAny
d_inject_194 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.policies
d_policies_196 :: T_TokenAlgebra_8 -> AgdaAny -> [AgdaAny]
d_policies_196 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.size
d_size_198 :: T_TokenAlgebra_8 -> AgdaAny -> Integer
d_size_198 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_200 ::
  T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_200 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_202 ::
  T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_202 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_204 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_204 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1259 v2 v3 v4 v5 v6 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.addValue
d_addValue_206 ::
  () ->
  T_TokenAlgebra_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_206 ~v0 v1 = du_addValue_206 v1
du_addValue_206 ::
  T_TokenAlgebra_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_206 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_25
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe d_Value'45'CommutativeMonoid_110 (coe v0))))
-- Ledger.TokenAlgebra.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_212 ::
  () ->
  T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_212 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.sumᵛ
d_sum'7515'_224 :: () -> T_TokenAlgebra_8 -> [AgdaAny] -> AgdaAny
d_sum'7515'_224 ~v0 v1 v2 = du_sum'7515'_224 v1 v2
du_sum'7515'_224 :: T_TokenAlgebra_8 -> [AgdaAny] -> AgdaAny
du_sum'7515'_224 v0 v1
  = case coe v1 of
      [] -> coe d_inject_194 v0 (0 :: Integer)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
             (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                (coe d_Value'45'CommutativeMonoid_110 (coe v0)))
             v2 (coe du_sum'7515'_224 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
