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

module MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra where

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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Ledger.Conway.Conformance.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_10 :: () -> ()
d_MemoryEstimate_10 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra
d_TokenAlgebra_12 a0 = ()
data T_TokenAlgebra_12
  = C_TokenAlgebra'46'constructor_2011 MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
                                       (AgdaAny -> Integer) (Integer -> AgdaAny)
                                       (AgdaAny -> [AgdaAny]) (AgdaAny -> Integer) AgdaAny
                                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       (AgdaAny ->
                                        AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.Conformance.TokenAlgebra._.rawMonoid
d_rawMonoid_28 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_28 ~v0 ~v1 v2 = du_rawMonoid_28 v2
du_rawMonoid_28 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
du_rawMonoid_28 v0
  = let v1
          = coe
              MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_34 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_44 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_44 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_48 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_48 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.Value
d_Value_122 :: T_TokenAlgebra_12 -> ()
d_Value_122 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_124 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_124 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_126 ::
  () ->
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_126 ~v0 v1
  = du_Value'45'CommutativeMonoid_126 v1
du_Value'45'CommutativeMonoid_126 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du_Value'45'CommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
      (coe d_Value'45'IsCommutativeMonoid''_124 (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._._∙_
d__'8729'__130 ::
  () -> T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__130 ~v0 v1 = du__'8729'__130 v1
du__'8729'__130 ::
  T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__130 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe du_Value'45'CommutativeMonoid_126 (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._._≈_
d__'8776'__132 ::
  () -> T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__132 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.monoid
d_monoid_134 ::
  () ->
  T_TokenAlgebra_12 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_134 ~v0 v1 = du_monoid_134 v1
du_monoid_134 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_882
du_monoid_134 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe du_Value'45'CommutativeMonoid_126 (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.rawMonoid
d_rawMonoid_136 ::
  () ->
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_136 ~v0 v1 = du_rawMonoid_136 v1
du_rawMonoid_136 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
du_rawMonoid_136 v0
  = let v1 = coe du_Value'45'CommutativeMonoid_126 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.ε
d_ε_138 :: () -> T_TokenAlgebra_12 -> AgdaAny
d_ε_138 ~v0 v1 = du_ε_138 v1
du_ε_138 :: T_TokenAlgebra_12 -> AgdaAny
du_ε_138 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_984
      (coe du_Value'45'CommutativeMonoid_126 (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_142 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_144 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_146 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_150 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_156 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_158 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_162 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_168 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_168 ~v0 ~v1 = du_isMagmaIsomorphism_168
du_isMagmaIsomorphism_168 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_168 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_170 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_170 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_170 v3
du_isMagmaMonomorphism_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_178 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_178 ~v0 ~v1 ~v2 v3 = du_isRelIsomorphism_178 v3
du_isRelIsomorphism_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_180 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_180 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_180 v3
du_isRelMonomorphism_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_180 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_184 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_186 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_190 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_196 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_196 ~v0 ~v1 = du_isMagmaMonomorphism_196
du_isMagmaMonomorphism_196 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_196 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_198 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_202 ::
  () ->
  T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_202 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_202 v3
du_isRelMonomorphism_202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_202 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_204 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_206 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.coin
d_coin_208 :: T_TokenAlgebra_12 -> AgdaAny -> Integer
d_coin_208 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.inject
d_inject_210 :: T_TokenAlgebra_12 -> Integer -> AgdaAny
d_inject_210 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.policies
d_policies_212 :: T_TokenAlgebra_12 -> AgdaAny -> [AgdaAny]
d_policies_212 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.size
d_size_214 :: T_TokenAlgebra_12 -> AgdaAny -> Integer
d_size_214 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra._≤ᵗ_
d__'8804''7511'__216 ::
  T_TokenAlgebra_12 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__216 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.AssetName
d_AssetName_218 :: T_TokenAlgebra_12 -> ()
d_AssetName_218 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.specialAsset
d_specialAsset_220 :: T_TokenAlgebra_12 -> AgdaAny
d_specialAsset_220 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.property
d_property_222 ::
  T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_222 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_224 ::
  T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_224 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_226 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_226 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_228 ::
  T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_228 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_2011 v2 v3 v4 v5 v6 v9 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.addValue
d_addValue_230 ::
  () -> T_TokenAlgebra_12 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_230 ~v0 v1 = du_addValue_230 v1
du_addValue_230 ::
  T_TokenAlgebra_12 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_230 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__982
         (coe du_Value'45'CommutativeMonoid_126 (coe v0)))
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_236 ::
  () ->
  T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_236 = erased
-- Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.sumᵛ
d_sum'7515'_248 :: () -> T_TokenAlgebra_12 -> [AgdaAny] -> AgdaAny
d_sum'7515'_248 ~v0 v1 v2 = du_sum'7515'_248 v1 v2
du_sum'7515'_248 :: T_TokenAlgebra_12 -> [AgdaAny] -> AgdaAny
du_sum'7515'_248 v0 v1
  = case coe v1 of
      [] -> coe d_inject_210 v0 (0 :: Integer)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Algebra.Bundles.d__'8729'__982
             (coe du_Value'45'CommutativeMonoid_126 (coe v0)) v2
             (coe du_sum'7515'_248 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
