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

module MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base where

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

-- Ledger.Conway.Specification.TokenAlgebra.Base.MemoryEstimate
d_MemoryEstimate_12 :: () -> ()
d_MemoryEstimate_12 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra
d_TokenAlgebra_14 a0 = ()
data T_TokenAlgebra_14
  = C_constructor_256 MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
                      (AgdaAny -> Integer) (Integer -> AgdaAny) (AgdaAny -> [AgdaAny])
                      (AgdaAny -> Integer)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.Specification.TokenAlgebra.Base._.rawMonoid
d_rawMonoid_28 ::
  () ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_28 ~v0 ~v1 v2 = du_rawMonoid_28 v2
du_rawMonoid_28 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_rawMonoid_28 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Specification.TokenAlgebra.Base._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_34 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.TokenAlgebra.Base._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_50 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_50 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_54 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_54 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.Value
d_Value_124 :: T_TokenAlgebra_14 -> ()
d_Value_124 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_126 ::
  T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_126 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._._∙_
d__'8729'__130 ::
  T_TokenAlgebra_14 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__130 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe d_Value'45'CommutativeMonoid_126 (coe v0)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._._≈_
d__'8776'__132 :: T_TokenAlgebra_14 -> AgdaAny -> AgdaAny -> ()
d__'8776'__132 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.monoid
d_monoid_134 ::
  T_TokenAlgebra_14 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_134 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe d_Value'45'CommutativeMonoid_126 (coe v0)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.rawMonoid
d_rawMonoid_136 ::
  T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_136 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe d_Value'45'CommutativeMonoid_126 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.ε
d_ε_138 :: T_TokenAlgebra_14 -> AgdaAny
d_ε_138 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe d_Value'45'CommutativeMonoid_126 (coe v0)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_142 a0 a1 a2 = ()
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_146 a0 a1 a2 = ()
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_150 a0 a1 a2 = ()
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_156 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_162 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_164 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_168 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_174 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_174 ~v0 = du_isMagmaIsomorphism_174
du_isMagmaIsomorphism_174 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_174 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_176 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_176 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_176 v2
du_isMagmaMonomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_184 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_184 ~v0 ~v1 v2 = du_isRelIsomorphism_184 v2
du_isRelIsomorphism_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_186 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_186 ~v0 ~v1 v2 = du_isRelMonomorphism_186 v2
du_isRelMonomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_186 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_190 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_192 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_196 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_198 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_202 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_202 ~v0 = du_isMagmaMonomorphism_202
du_isMagmaMonomorphism_202 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_202 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_208 ::
  T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_208 ~v0 ~v1 v2 = du_isRelMonomorphism_208 v2
du_isRelMonomorphism_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_210 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_212 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coin
d_coin_214 :: T_TokenAlgebra_14 -> AgdaAny -> Integer
d_coin_214 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.inject
d_inject_216 :: T_TokenAlgebra_14 -> Integer -> AgdaAny
d_inject_216 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.policies
d_policies_218 :: T_TokenAlgebra_14 -> AgdaAny -> [AgdaAny]
d_policies_218 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.size
d_size_220 :: T_TokenAlgebra_14 -> AgdaAny -> Integer
d_size_220 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra._≤ᵗ_
d__'8804''7511'__222 ::
  T_TokenAlgebra_14 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__222 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_224 ::
  T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_224 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_226 ::
  T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_226 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_228 ::
  T_TokenAlgebra_14 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_228 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_230 ::
  T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_230 v0
  = case coe v0 of
      C_constructor_256 v2 v3 v4 v5 v6 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.addValue
d_addValue_232 ::
  () ->
  T_TokenAlgebra_14 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_232 ~v0 v1 = du_addValue_232 v1
du_addValue_232 ::
  T_TokenAlgebra_14 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_232 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe d_Value'45'CommutativeMonoid_126 (coe v0))))
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_238 ::
  () ->
  T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_238 = erased
-- Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.sumᵛ
d_sum'7515'_250 :: () -> T_TokenAlgebra_14 -> [AgdaAny] -> AgdaAny
d_sum'7515'_250 ~v0 v1 v2 = du_sum'7515'_250 v1 v2
du_sum'7515'_250 :: T_TokenAlgebra_14 -> [AgdaAny] -> AgdaAny
du_sum'7515'_250 v0 v1
  = case coe v1 of
      [] -> coe d_inject_216 v0 (0 :: Integer)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
             (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                (coe d_Value'45'CommutativeMonoid_126 (coe v0)))
             v2 (coe du_sum'7515'_250 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
