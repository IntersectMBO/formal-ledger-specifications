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

module MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base where

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
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Ledger.Conway.TokenAlgebra.Base.MemoryEstimate
d_MemoryEstimate_10 :: () -> ()
d_MemoryEstimate_10 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra
d_TokenAlgebra_12 a0 = ()
data T_TokenAlgebra_12
  = C_TokenAlgebra'46'constructor_1735 MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
                                       (AgdaAny -> Integer) (Integer -> AgdaAny)
                                       (AgdaAny -> [AgdaAny]) (AgdaAny -> Integer)
                                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       (AgdaAny ->
                                        AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.TokenAlgebra.Base._.rawMonoid
d_rawMonoid_26 ::
  () ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_26 ~v0 ~v1 v2 = du_rawMonoid_26 v2
du_rawMonoid_26 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_26 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.TokenAlgebra.Base._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_32 a0 a1 a2 a3 = ()
-- Ledger.Conway.TokenAlgebra.Base._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_42 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_42 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Base._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_46 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_46 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.Value
d_Value_116 :: T_TokenAlgebra_12 -> ()
d_Value_116 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_118 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_118 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._._∙_
d__'8729'__122 ::
  T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__122 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe d_Value'45'CommutativeMonoid_118 (coe v0)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._._≈_
d__'8776'__124 :: T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__124 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.monoid
d_monoid_126 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_126 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe d_Value'45'CommutativeMonoid_118 (coe v0)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.rawMonoid
d_rawMonoid_128 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_128 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe d_Value'45'CommutativeMonoid_118 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.ε
d_ε_130 :: T_TokenAlgebra_12 -> AgdaAny
d_ε_130 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe d_Value'45'CommutativeMonoid_118 (coe v0)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_134 a0 a1 a2 = ()
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_136 a0 a1 a2 = ()
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_138 a0 a1 a2 = ()
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_142 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_148 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_150 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_154 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_160 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_160 ~v0 = du_isMagmaIsomorphism_160
du_isMagmaIsomorphism_160 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_160 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_162 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_162 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_162 v2
du_isMagmaMonomorphism_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_170 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_170 ~v0 ~v1 v2 = du_isRelIsomorphism_170 v2
du_isRelIsomorphism_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_172 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_172 ~v0 ~v1 v2 = du_isRelMonomorphism_172 v2
du_isRelMonomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_172 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_176 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_178 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_182 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_188 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_188 ~v0 = du_isMagmaMonomorphism_188
du_isMagmaMonomorphism_188 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_188 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_194 ::
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_194 ~v0 ~v1 v2 = du_isRelMonomorphism_194 v2
du_isRelMonomorphism_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_196 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_198 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.coin
d_coin_200 :: T_TokenAlgebra_12 -> AgdaAny -> Integer
d_coin_200 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.inject
d_inject_202 :: T_TokenAlgebra_12 -> Integer -> AgdaAny
d_inject_202 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.policies
d_policies_204 :: T_TokenAlgebra_12 -> AgdaAny -> [AgdaAny]
d_policies_204 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.size
d_size_206 :: T_TokenAlgebra_12 -> AgdaAny -> Integer
d_size_206 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra._≤ᵗ_
d__'8804''7511'__208 ::
  T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__208 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_210 ::
  T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_210 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_212 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_212 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_214 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_214 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_216 ::
  T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_216 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1735 v2 v3 v4 v5 v6 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.addValue
d_addValue_218 ::
  () ->
  T_TokenAlgebra_12 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_218 ~v0 v1 = du_addValue_218 v1
du_addValue_218 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_218 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_25
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe d_Value'45'CommutativeMonoid_118 (coe v0))))
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_224 ::
  () ->
  T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_224 = erased
-- Ledger.Conway.TokenAlgebra.Base.TokenAlgebra.sumᵛ
d_sum'7515'_236 :: () -> T_TokenAlgebra_12 -> [AgdaAny] -> AgdaAny
d_sum'7515'_236 ~v0 v1 v2 = du_sum'7515'_236 v1 v2
du_sum'7515'_236 :: T_TokenAlgebra_12 -> [AgdaAny] -> AgdaAny
du_sum'7515'_236 v0 v1
  = case coe v1 of
      [] -> coe d_inject_202 v0 (0 :: Integer)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
             (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                (coe d_Value'45'CommutativeMonoid_118 (coe v0)))
             v2 (coe du_sum'7515'_236 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
