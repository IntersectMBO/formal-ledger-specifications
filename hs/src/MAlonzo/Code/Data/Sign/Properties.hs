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

module MAlonzo.Code.Data.Sign.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Sign.Properties._.IsAbelianGroup
d_IsAbelianGroup_8 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_12 a0 = ()
-- Data.Sign.Properties._.IsBand
d_IsBand_16 a0 = ()
-- Data.Sign.Properties._.IsBooleanRing
d_IsBooleanRing_20 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsBooleanSemiring
d_IsBooleanSemiring_24 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_28 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsCommutativeBand
d_IsCommutativeBand_32 a0 = ()
-- Data.Sign.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_36 a0 = ()
-- Data.Sign.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_40 a0 a1 = ()
-- Data.Sign.Properties._.IsCommutativeRing
d_IsCommutativeRing_44 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_48 a0 = ()
-- Data.Sign.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_52 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_56 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_60 a0 = ()
-- Data.Sign.Properties._.IsGroup
d_IsGroup_64 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_68 a0 a1 = ()
-- Data.Sign.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_72 a0 = ()
-- Data.Sign.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_76 a0 a1 = ()
-- Data.Sign.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_80 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_84 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_88 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_92 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_96 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsLoop
d_IsLoop_100 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsMagma
d_IsMagma_104 a0 = ()
-- Data.Sign.Properties._.IsMedialMagma
d_IsMedialMagma_108 a0 = ()
-- Data.Sign.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_112 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsMonoid
d_IsMonoid_116 a0 a1 = ()
-- Data.Sign.Properties._.IsMoufangLoop
d_IsMoufangLoop_120 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsNearSemiring
d_IsNearSemiring_124 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsNearring
d_IsNearring_128 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_132 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsQuasigroup
d_IsQuasigroup_136 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsQuasiring
d_IsQuasiring_140 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsRightBolLoop
d_IsRightBolLoop_144 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsRing
d_IsRing_148 a0 a1 a2 a3 a4 = ()
-- Data.Sign.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_152 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_156 a0 = ()
-- Data.Sign.Properties._.IsSemigroup
d_IsSemigroup_160 a0 = ()
-- Data.Sign.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_164 a0 = ()
-- Data.Sign.Properties._.IsSemiring
d_IsSemiring_168 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_172 a0 a1 a2 a3 = ()
-- Data.Sign.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_176 a0 a1 a2 = ()
-- Data.Sign.Properties._.IsSuccessorSet
d_IsSuccessorSet_180 a0 a1 = ()
-- Data.Sign.Properties._.IsUnitalMagma
d_IsUnitalMagma_184 a0 a1 = ()
-- Data.Sign.Properties._.IsAbelianGroup._//_
d__'47''47'__190 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__190 v0 ~v1 v2 ~v3 = du__'47''47'__190 v0 v2
du__'47''47'__190 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__190 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsAbelianGroup.assoc
d_assoc_192 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_192 = erased
-- Data.Sign.Properties._.IsAbelianGroup.comm
d_comm_194 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_194 = erased
-- Data.Sign.Properties._.IsAbelianGroup.identity
d_identity_196 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Sign.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_198 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_198 = erased
-- Data.Sign.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_200 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_200 = erased
-- Data.Sign.Properties._.IsAbelianGroup.inverse
d_inverse_202 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_204 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_204 = erased
-- Data.Sign.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_206 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_206 = erased
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_208 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_208 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_208 v3
du_isCommutativeMagma_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_208 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_210 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246 v3
-- Data.Sign.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_212 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_212 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_212 v3
du_isCommutativeSemigroup_212 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_214 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))))
-- Data.Sign.Properties._.IsAbelianGroup.isGroup
d_isGroup_216 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_216 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Data.Sign.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_218 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_218 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_218 v3
du_isInvertibleMagma_218 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_218 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_220 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_220 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_220 v3
du_isInvertibleUnitalMagma_220 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isMagma
d_isMagma_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))))
-- Data.Sign.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_224 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Sign.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_226 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_226 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_226 v3
du_isPartialEquivalence_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_226 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Sign.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_228 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Sign.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_230 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_230 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_230 v3
du_isUnitalMagma_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_230 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Data.Sign.Properties._.IsAbelianGroup.refl
d_refl_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_232 = erased
-- Data.Sign.Properties._.IsAbelianGroup.reflexive
d_reflexive_234 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_234 = erased
-- Data.Sign.Properties._.IsAbelianGroup.setoid
d_setoid_236 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_236 ~v0 ~v1 ~v2 v3 = du_setoid_236 v3
du_setoid_236 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_236 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Sign.Properties._.IsAbelianGroup.sym
d_sym_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_238 = erased
-- Data.Sign.Properties._.IsAbelianGroup.trans
d_trans_240 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_240 = erased
-- Data.Sign.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_242 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_242 = erased
-- Data.Sign.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_244 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_244 = erased
-- Data.Sign.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_246 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_248 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_250 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_250 = erased
-- Data.Sign.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_252 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_252 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.alter
d_alter_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_256 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_302 (coe v0)
-- Data.Sign.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_258 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_258 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_260 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_260 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_262 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Sign.Properties._.IsAlternativeMagma.isMagma
d_isMagma_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_264 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Sign.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_266 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_266 ~v0 v1 = du_isPartialEquivalence_266 v1
du_isPartialEquivalence_266 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_266 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsAlternativeMagma.refl
d_refl_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_268 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.reflexive
d_reflexive_270 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_270 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.setoid
d_setoid_272 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_272 ~v0 v1 = du_setoid_272 v1
du_setoid_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Sign.Properties._.IsAlternativeMagma.sym
d_sym_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_274 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.trans
d_trans_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_276 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_278 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_280 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_280 = erased
-- Data.Sign.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_282 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_282 = erased
-- Data.Sign.Properties._.IsBand.assoc
d_assoc_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_286 = erased
-- Data.Sign.Properties._.IsBand.idem
d_idem_288 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_288 = erased
-- Data.Sign.Properties._.IsBand.isEquivalence
d_isEquivalence_290 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)))
-- Data.Sign.Properties._.IsBand.isMagma
d_isMagma_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0))
-- Data.Sign.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_294 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_294 ~v0 v1 = du_isPartialEquivalence_294 v1
du_isPartialEquivalence_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_294 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Sign.Properties._.IsBand.isSemigroup
d_isSemigroup_296 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_296 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)
-- Data.Sign.Properties._.IsBand.refl
d_refl_298 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_298 = erased
-- Data.Sign.Properties._.IsBand.reflexive
d_reflexive_300 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_300 = erased
-- Data.Sign.Properties._.IsBand.setoid
d_setoid_302 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_302 ~v0 v1 = du_setoid_302 v1
du_setoid_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_302 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Sign.Properties._.IsBand.sym
d_sym_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_304 = erased
-- Data.Sign.Properties._.IsBand.trans
d_trans_306 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_306 = erased
-- Data.Sign.Properties._.IsBand.∙-cong
d_'8729''45'cong_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_308 = erased
-- Data.Sign.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_310 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_310 = erased
-- Data.Sign.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_312 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_312 = erased
-- Data.Sign.Properties._.IsBooleanRing._//_
d__'47''47'__316 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__316 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__316 v0 v2
du__'47''47'__316 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__316 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsBooleanRing.*-assoc
d_'42''45'assoc_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_318 = erased
-- Data.Sign.Properties._.IsBooleanRing.*-comm
d_'42''45'comm_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_320 = erased
-- Data.Sign.Properties._.IsBooleanRing.*-cong
d_'42''45'cong_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_322 = erased
-- Data.Sign.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_324 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_324 = erased
-- Data.Sign.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_326 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_326 = erased
-- Data.Sign.Properties._.IsBooleanRing.*-idem
d_'42''45'idem_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_328 = erased
-- Data.Sign.Properties._.IsBooleanRing.*-identity
d_'42''45'identity_330 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Sign.Properties._.IsBooleanRing.identityʳ
d_identity'691'_332 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_332 = erased
-- Data.Sign.Properties._.IsBooleanRing.identityˡ
d_identity'737'_334 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_334 = erased
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_336 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_336 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_336 v0 v1 v2 v3 v5
du_isCommutativeMagma_336 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_336 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
                  (coe v7)))))
-- Data.Sign.Properties._.IsBooleanRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_338 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_338 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_338 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_338 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_338 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsBooleanRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_340 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_340 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_340 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_340 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_340 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
               (coe v6))))
-- Data.Sign.Properties._.IsBooleanRing.*-isMagma
d_'42''45'isMagma_342 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_342 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_342 v0 v1 v2 v3 v5
du_'42''45'isMagma_342 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_342 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Data.Sign.Properties._.IsBooleanRing.*-isMonoid
d_'42''45'isMonoid_344 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_344 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_344 v0 v1 v2 v3 v5
du_'42''45'isMonoid_344 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_344 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Sign.Properties._.IsBooleanRing.*-isSemigroup
d_'42''45'isSemigroup_346 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_346 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_346 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_346 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_346 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Data.Sign.Properties._.IsBooleanRing.assoc
d_assoc_348 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_348 = erased
-- Data.Sign.Properties._.IsBooleanRing.comm
d_comm_350 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_350 = erased
-- Data.Sign.Properties._.IsBooleanRing.∙-cong
d_'8729''45'cong_352 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_352 = erased
-- Data.Sign.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_354 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_354 = erased
-- Data.Sign.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_356 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_356 = erased
-- Data.Sign.Properties._.IsBooleanRing.identity
d_identity_358 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_358 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_358 v5
du_identity_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_358 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_identity_726
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v2))))))
-- Data.Sign.Properties._.IsBooleanRing.identityʳ
d_identity'691'_360 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_360 = erased
-- Data.Sign.Properties._.IsBooleanRing.identityˡ
d_identity'737'_362 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_362 = erased
-- Data.Sign.Properties._.IsBooleanRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_364 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_366 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_366 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_366 v5
du_isCommutativeMagma_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_366 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                        (coe v5)))))))
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeMonoid
d_isCommutativeMonoid_368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_368 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_368 v5
du_isCommutativeMonoid_368 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_368 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                  (coe v3)))))
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeSemigroup
d_isCommutativeSemigroup_370 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_370 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_370 v5
du_isCommutativeSemigroup_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_370 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                     (coe v4))))))
-- Data.Sign.Properties._.IsBooleanRing.isGroup
d_isGroup_372 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_372 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_372 v5
du_isGroup_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_372 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v2))))
-- Data.Sign.Properties._.IsBooleanRing.isInvertibleMagma
d_isInvertibleMagma_374 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_374 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_374 v5
du_isInvertibleMagma_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_374 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4))))))
-- Data.Sign.Properties._.IsBooleanRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_376 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_376 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_376 v5
du_isInvertibleUnitalMagma_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_376 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4))))))
-- Data.Sign.Properties._.IsBooleanRing.isMagma
d_isMagma_378 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_378 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_378 v5
du_isMagma_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_378 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                        (coe v2)))))))
-- Data.Sign.Properties._.IsBooleanRing.isMonoid
d_isMonoid_380 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_380 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_380 v5
du_isMonoid_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_380 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v2)))))
-- Data.Sign.Properties._.IsBooleanRing.isSemigroup
d_isSemigroup_382 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_382 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_382 v5
du_isSemigroup_382 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_382 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v2))))))
-- Data.Sign.Properties._.IsBooleanRing.isUnitalMagma
d_isUnitalMagma_384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_384 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_384 v5
du_isUnitalMagma_384 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_384 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5)))))))
-- Data.Sign.Properties._.IsBooleanRing.⁻¹-cong
d_'8315''185''45'cong_386 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_386 = erased
-- Data.Sign.Properties._.IsBooleanRing.inverse
d_inverse_388 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_388 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_388 v5
du_inverse_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_388 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_inverse_1092
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v2)))))
-- Data.Sign.Properties._.IsBooleanRing.inverseʳ
d_inverse'691'_390 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_390 = erased
-- Data.Sign.Properties._.IsBooleanRing.inverseˡ
d_inverse'737'_392 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_392 = erased
-- Data.Sign.Properties._.IsBooleanRing.distrib
d_distrib_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Sign.Properties._.IsBooleanRing.distribʳ
d_distrib'691'_396 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_396 = erased
-- Data.Sign.Properties._.IsBooleanRing.distribˡ
d_distrib'737'_398 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_398 = erased
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_isCommutativeRing_400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeSemiring
d_isCommutativeSemiring_402 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_402 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiring_402 v0 v1 v2 v3 v5
du_isCommutativeSemiring_402 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v4))
-- Data.Sign.Properties._.IsBooleanRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_404 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_404 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_404 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_404 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_404 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsBooleanRing.isEquivalence
d_isEquivalence_406 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_406 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_406 v5
du_isEquivalence_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_406 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                           (coe v2))))))))
-- Data.Sign.Properties._.IsBooleanRing.isNearSemiring
d_isNearSemiring_408 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_408 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_408 v0 v1 v2 v3 v5
du_isNearSemiring_408 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_408 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
               (coe v6))))
-- Data.Sign.Properties._.IsBooleanRing.isPartialEquivalence
d_isPartialEquivalence_410 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_410 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_410 v5
du_isPartialEquivalence_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_410 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe v8))))))))))
-- Data.Sign.Properties._.IsBooleanRing.isRing
d_isRing_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_3032
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0))
-- Data.Sign.Properties._.IsBooleanRing.isRingWithoutOne
d_isRingWithoutOne_414 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_414 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_414 v5
du_isRingWithoutOne_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_414 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Sign.Properties._.IsBooleanRing.isSemiring
d_isSemiring_416 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_416 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_416 v0 v1 v2 v3 v5
du_isSemiring_416 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_416 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Sign.Properties._.IsBooleanRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_418 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_418 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_418 v5
du_isSemiringWithoutAnnihilatingZero_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_418 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Sign.Properties._.IsBooleanRing.isSemiringWithoutOne
d_isSemiringWithoutOne_420 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_420 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_420 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_420 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_420 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Sign.Properties._.IsBooleanRing.refl
d_refl_422 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_422 = erased
-- Data.Sign.Properties._.IsBooleanRing.reflexive
d_reflexive_424 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_424 = erased
-- Data.Sign.Properties._.IsBooleanRing.setoid
d_setoid_426 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_426 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_426 v5
du_setoid_426 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_426 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_204
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v7)))))))))
-- Data.Sign.Properties._.IsBooleanRing.sym
d_sym_428 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_428 = erased
-- Data.Sign.Properties._.IsBooleanRing.trans
d_trans_430 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_430 = erased
-- Data.Sign.Properties._.IsBooleanRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_432 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_432 = erased
-- Data.Sign.Properties._.IsBooleanRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_434 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_434 = erased
-- Data.Sign.Properties._.IsBooleanRing.zero
d_zero_436 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_436 v0 v1 v2 v3 ~v4 v5 = du_zero_436 v0 v1 v2 v3 v5
du_zero_436 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_436 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
            (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
               (coe v6))))
-- Data.Sign.Properties._.IsBooleanRing.zeroʳ
d_zero'691'_438 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_438 = erased
-- Data.Sign.Properties._.IsBooleanRing.zeroˡ
d_zero'737'_440 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_440 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.*-assoc
d_'42''45'assoc_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_444 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.*-cong
d_'42''45'cong_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_446 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_448 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_448 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_450 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_450 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.*-idem
d_'42''45'idem_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_452 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.*-identity
d_'42''45'identity_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Sign.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_456 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_456 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_458 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_458 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.isBand
d_isBand_460 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_460 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_460 v4
du_isBand_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
         (coe v0))
-- Data.Sign.Properties._.IsBooleanSemiring.*-isIdempotentMonoid
d_'42''45'isIdempotentMonoid_462 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_'42''45'isIdempotentMonoid_462 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
      v4
-- Data.Sign.Properties._.IsBooleanSemiring.*-isMagma
d_'42''45'isMagma_464 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_464 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_464 v4
du_'42''45'isMagma_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_464 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsBooleanSemiring.*-isMonoid
d_'42''45'isMonoid_466 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_466 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_466 v4
du_'42''45'isMonoid_466 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_466 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsBooleanSemiring.*-isSemigroup
d_'42''45'isSemigroup_468 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_468 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_468 v4
du_'42''45'isSemigroup_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_468 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsBooleanSemiring.assoc
d_assoc_470 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_470 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.+-cancel
d_'43''45'cancel_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel_472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'cancel_2388 (coe v0)
-- Data.Sign.Properties._.IsBooleanSemiring.+-cancelʳ
d_'43''45'cancel'691'_474 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691'_474 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.+-cancelˡ
d_'43''45'cancel'737'_476 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737'_476 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.comm
d_comm_478 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_478 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.∙-cong
d_'8729''45'cong_480 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_480 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_482 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_482 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_484 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_484 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.identity
d_identity_486 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Sign.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_488 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_488 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_490 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_490 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.isCommutativeMagma
d_isCommutativeMagma_492 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_492 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_492 v4
du_isCommutativeMagma_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_492 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Sign.Properties._.IsBooleanSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Sign.Properties._.IsBooleanSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_496 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_496 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_496 v4
du_isCommutativeSemigroup_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_496 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Sign.Properties._.IsBooleanSemiring.isMagma
d_isMagma_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))))))
-- Data.Sign.Properties._.IsBooleanSemiring.isMonoid
d_isMonoid_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_500 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))))
-- Data.Sign.Properties._.IsBooleanSemiring.isSemigroup
d_isSemigroup_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_502 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Sign.Properties._.IsBooleanSemiring.isUnitalMagma
d_isUnitalMagma_504 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_504 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_504 v4
du_isUnitalMagma_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_504 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Sign.Properties._.IsBooleanSemiring.distrib
d_distrib_506 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Sign.Properties._.IsBooleanSemiring.distribʳ
d_distrib'691'_508 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_508 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.distribˡ
d_distrib'737'_510 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_510 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.isEquivalence
d_isEquivalence_512 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))))
-- Data.Sign.Properties._.IsBooleanSemiring.isNearSemiring
d_isNearSemiring_514 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_514 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_514 v4
du_isNearSemiring_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_514 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Sign.Properties._.IsBooleanSemiring.isPartialEquivalence
d_isPartialEquivalence_516 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_516 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_516 v4
du_isPartialEquivalence_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_516 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Sign.Properties._.IsBooleanSemiring.isSemiring
d_isSemiring_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_518 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)
-- Data.Sign.Properties._.IsBooleanSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Sign.Properties._.IsBooleanSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_522 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_522 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_522 v4
du_isSemiringWithoutOne_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Sign.Properties._.IsBooleanSemiring.refl
d_refl_524 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_524 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.reflexive
d_reflexive_526 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_526 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.setoid
d_setoid_528 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_528 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_528 v4
du_setoid_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_528 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Sign.Properties._.IsBooleanSemiring.sym
d_sym_530 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_530 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.trans
d_trans_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_532 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.zero
d_zero_534 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Sign.Properties._.IsBooleanSemiring.zeroʳ
d_zero'691'_536 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_536 = erased
-- Data.Sign.Properties._.IsBooleanSemiring.zeroˡ
d_zero'737'_538 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_538 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_542 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_542 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_544 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_544 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_546 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_546 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_548 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_548 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_550 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_552 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_552 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_554 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_554 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_558 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_558 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_560 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_560 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_562 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_562 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_562 v4
du_isCommutativeMagma_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_562 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_564 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_564 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_564 v4
du_'42''45'isCommutativeMonoid_564 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_564 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_566 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_566 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_566 v4
du_'42''45'isCommutativeSemigroup_566 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_566 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
            (coe v1)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_568 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_568 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_568 v4
du_'42''45'isMagma_568 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_568 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_570 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_570 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_570 v4
du_'42''45'isMonoid_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_570 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_572 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_572 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_572 v4
du_'42''45'isSemigroup_572 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_572 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_574 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_574 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_576 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_578 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_580 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_580 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_582 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_582 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_584 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                     (coe v0))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_586 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_586 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_588 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_588 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_590 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_590 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_590 v4
du_isCommutativeMagma_590 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_590 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_594 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_594 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_594 v4
du_isCommutativeSemigroup_594 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_594 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v3)))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_596 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                        (coe v0)))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_598 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                  (coe v0)))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_600 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                     (coe v0))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_602 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_602 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_602 v4
du_isUnitalMagma_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_602 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_606 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_606 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_608 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_608 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
      (coe v0)
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_612 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_612 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_612 v4
du_isCommutativeSemiringWithoutOne_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_614 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                           (coe v0))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_616 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_616 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_616 v4
du_isNearSemiring_616 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_616 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
               (coe v2))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_618 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_618 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_618 v4
du_isPartialEquivalence_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_618 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_620 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_624 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_624 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_624 v4
du_isSemiringWithoutOne_624 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_624 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_626 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_628 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_628 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_630 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_630 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_630 v4
du_setoid_630 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_630 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_632 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_634 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_634 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_636 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_638 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_638 = erased
-- Data.Sign.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_640 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_640 = erased
-- Data.Sign.Properties._.IsCommutativeBand.assoc
d_assoc_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_644 = erased
-- Data.Sign.Properties._.IsCommutativeBand.comm
d_comm_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_646 = erased
-- Data.Sign.Properties._.IsCommutativeBand.idem
d_idem_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_648 = erased
-- Data.Sign.Properties._.IsCommutativeBand.isBand
d_isBand_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Sign.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_652 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_652 ~v0 v1 = du_isCommutativeMagma_652 v1
du_isCommutativeMagma_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_654 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_654 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656 v1
-- Data.Sign.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeBand.isMagma
d_isMagma_658 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_658 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_660 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_660 ~v0 v1 = du_isPartialEquivalence_660 v1
du_isPartialEquivalence_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_660 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Sign.Properties._.IsCommutativeBand.refl
d_refl_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_664 = erased
-- Data.Sign.Properties._.IsCommutativeBand.reflexive
d_reflexive_666 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_666 = erased
-- Data.Sign.Properties._.IsCommutativeBand.setoid
d_setoid_668 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_668 ~v0 v1 = du_setoid_668 v1
du_setoid_668 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_668 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeBand.sym
d_sym_670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_670 = erased
-- Data.Sign.Properties._.IsCommutativeBand.trans
d_trans_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_672 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_674 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_676 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_676 = erased
-- Data.Sign.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_678 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_678 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.comm
d_comm_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_682 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_684 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_684 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMagma.isMagma
d_isMagma_686 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_686 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Sign.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_688 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_688 ~v0 v1 = du_isPartialEquivalence_688 v1
du_isPartialEquivalence_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_688 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsCommutativeMagma.refl
d_refl_690 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_690 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.reflexive
d_reflexive_692 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_692 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.setoid
d_setoid_694 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_694 ~v0 v1 = du_setoid_694 v1
du_setoid_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_694 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMagma.sym
d_sym_696 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_696 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.trans
d_trans_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_698 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_700 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_702 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_702 = erased
-- Data.Sign.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_704 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_704 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.assoc
d_assoc_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_708 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.comm
d_comm_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_710 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.identity
d_identity_712 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_712 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_714 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_714 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_716 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_716 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_718 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_718 ~v0 ~v1 v2 = du_isCommutativeMagma_718 v2
du_isCommutativeMagma_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_720 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_720 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816 v2
-- Data.Sign.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_726 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Data.Sign.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_728 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_728 ~v0 ~v1 v2
  = du_isPartialEquivalence_728 v2
du_isPartialEquivalence_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_728 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_730 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_732 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_732 ~v0 ~v1 v2 = du_isUnitalMagma_732 v2
du_isUnitalMagma_732 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Sign.Properties._.IsCommutativeMonoid.refl
d_refl_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_734 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_736 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_736 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.setoid
d_setoid_738 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_738 ~v0 ~v1 v2 = du_setoid_738 v2
du_setoid_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_738 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeMonoid.sym
d_sym_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_740 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.trans
d_trans_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_742 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_744 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_746 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_746 = erased
-- Data.Sign.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_748 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_748 = erased
-- Data.Sign.Properties._.IsCommutativeRing._//_
d__'47''47'__752 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__752 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__752 v0 v2
du__'47''47'__752 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__752 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_754 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_754 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_756 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_758 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_760 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_760 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_762 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_762 = erased
-- Data.Sign.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_766 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_766 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_768 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_768 = erased
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_770 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_770 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_770 v0 v1 v2 v3 v5
du_isCommutativeMagma_770 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_770 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
               (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_772 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_772 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_772 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_772 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_772 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_774 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_774 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_774 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_774 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_774 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
            (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_776 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_776 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_776 v0 v1 v2 v3 v5
du_'42''45'isMagma_776 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_776 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_778 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_778 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_778 v0 v1 v2 v3 v5
du_'42''45'isMonoid_778 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_778 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_780 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_780 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_780 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_780 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_780 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Sign.Properties._.IsCommutativeRing.assoc
d_assoc_782 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_782 = erased
-- Data.Sign.Properties._.IsCommutativeRing.comm
d_comm_784 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_784 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_786 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_786 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_788 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_788 = erased
-- Data.Sign.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_790 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_790 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identity
d_identity_792 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_792 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_792 v5
du_identity_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_792 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v1)))))
-- Data.Sign.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_794 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_794 = erased
-- Data.Sign.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_796 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_796 = erased
-- Data.Sign.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_800 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_800 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_800 v5
du_isCommutativeMagma_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_800 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_802 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_802 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_802 v5
du_isCommutativeMonoid_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_802 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_804 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_804 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_804 v5
du_isCommutativeSemigroup_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_804 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                  (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isGroup
d_isGroup_806 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_806 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_806 v5
du_isGroup_806 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_806 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_808 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_808 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_808 v5
du_isInvertibleMagma_808 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_808 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_810 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_810 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_810 v5
du_isInvertibleUnitalMagma_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_810 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeRing.isMagma
d_isMagma_812 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_812 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_812 v5
du_isMagma_812 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_812 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v1))))))
-- Data.Sign.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_814 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_814 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_814 v5
du_isMonoid_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_814 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v1))))
-- Data.Sign.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_816 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_816 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_816 v5
du_isSemigroup_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_816 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v1)))))
-- Data.Sign.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_818 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_818 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_818 v5
du_isUnitalMagma_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_818 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_820 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_820 = erased
-- Data.Sign.Properties._.IsCommutativeRing.inverse
d_inverse_822 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_822 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_822 v5
du_inverse_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_822 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1092
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v1))))
-- Data.Sign.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_824 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_824 = erased
-- Data.Sign.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_826 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_826 = erased
-- Data.Sign.Properties._.IsCommutativeRing.distrib
d_distrib_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_830 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_830 = erased
-- Data.Sign.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_832 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_832 = erased
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_834 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_834 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146 v0 v1
      v2 v3 v5
-- Data.Sign.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_836 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_836 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_836 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_836 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_836 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_838 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_838 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_838 v5
du_isEquivalence_838 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_838 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                        (coe v1)))))))
-- Data.Sign.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_840 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_840 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_840 v0 v1 v2 v3 v5
du_isNearSemiring_840 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_840 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_842 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_842 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_842 v5
du_isPartialEquivalence_842 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_842 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsCommutativeRing.isRing
d_isRing_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_844 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0)
-- Data.Sign.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_846 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_846 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_846 v5
du_isRingWithoutOne_846 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_848 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_848 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_848 v0 v1 v2 v3 v5
du_isSemiring_848 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_848 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_850 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_850 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_850 v5
du_isSemiringWithoutAnnihilatingZero_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Sign.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_852 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_852 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_852 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_852 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_852 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.refl
d_refl_854 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_854 = erased
-- Data.Sign.Properties._.IsCommutativeRing.reflexive
d_reflexive_856 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_856 = erased
-- Data.Sign.Properties._.IsCommutativeRing.setoid
d_setoid_858 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_858 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_858 v5
du_setoid_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_858 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Sign.Properties._.IsCommutativeRing.sym
d_sym_860 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_860 = erased
-- Data.Sign.Properties._.IsCommutativeRing.trans
d_trans_862 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_862 = erased
-- Data.Sign.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_864 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_864 = erased
-- Data.Sign.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_866 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_866 = erased
-- Data.Sign.Properties._.IsCommutativeRing.zero
d_zero_868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_868 v0 v1 v2 v3 ~v4 v5 = du_zero_868 v0 v1 v2 v3 v5
du_zero_868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_868 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Sign.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_870 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_870 = erased
-- Data.Sign.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_872 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_872 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.assoc
d_assoc_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_876 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.comm
d_comm_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_878 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_880 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_880 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608 v1
-- Data.Sign.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_882 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_886 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_886 ~v0 v1 = du_isPartialEquivalence_886 v1
du_isPartialEquivalence_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_886 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_888 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemigroup.refl
d_refl_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_890 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_892 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_892 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.setoid
d_setoid_894 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_894 ~v0 v1 = du_setoid_894 v1
du_setoid_894 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_894 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemigroup.sym
d_sym_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_896 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.trans
d_trans_898 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_898 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_900 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_900 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_902 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_902 = erased
-- Data.Sign.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_904 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_904 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_908 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_908 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_910 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_910 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_912 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_912 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_914 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_914 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_916 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_916 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_920 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_920 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_922 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_922 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_924 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_924 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_924 v4
du_isCommutativeMagma_924 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_924 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_926 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_926 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      v4
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_928 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_928 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_928 v4
du_'42''45'isCommutativeSemigroup_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_930 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_930 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_930 v4
du_'42''45'isMagma_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_930 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_932 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_932 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_932 v4
du_'42''45'isMonoid_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_932 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_934 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_934 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_934 v4
du_'42''45'isSemigroup_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_934 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.assoc
d_assoc_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_936 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.comm
d_comm_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_938 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_940 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_942 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_942 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_944 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_944 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identity
d_identity_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_948 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_948 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_950 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_950 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_952 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_952 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_952 v4
du_isCommutativeMagma_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_956 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_956 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_956 v4
du_isCommutativeSemigroup_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_956 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_960 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_962 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_964 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_964 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_964 v4
du_isUnitalMagma_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_964 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Sign.Properties._.IsCommutativeSemiring.distrib
d_distrib_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_968 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_968 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_970 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_970 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_972 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_972 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      v4
-- Data.Sign.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_976 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_976 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_976 v4
du_isNearSemiring_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_976 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_978 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_978 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_978 v4
du_isPartialEquivalence_978 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_978 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_980 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_982 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_984 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_984 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_984 v4
du_isSemiringWithoutOne_984 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.refl
d_refl_986 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_986 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_988 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_988 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.setoid
d_setoid_990 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_990 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_990 v4
du_setoid_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_990 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Sign.Properties._.IsCommutativeSemiring.sym
d_sym_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_992 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.trans
d_trans_994 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_994 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.zero
d_zero_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_998 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_998 = erased
-- Data.Sign.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_1000 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1000 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1004 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1006 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1006 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1008 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1010 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1010 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1012 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1012 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1014 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1014 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1014 v3
du_isCommutativeMagma_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1016 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1016 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      v3
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1018 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1018 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_1018 v3
du_'42''45'isMagma_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1018 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1020 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1020 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_1020 v3
du_'42''45'isSemigroup_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1022 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_1024 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1024 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_1026 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1026 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1028 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1028 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1030 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1030 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1032 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
               (coe v0))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_1034 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1034 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_1036 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1036 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1038 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1038 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1038 v3
du_isCommutativeMagma_1038 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1038 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_1042 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1042 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_1042 v3
du_isCommutativeSemigroup_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1042 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v1)))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
            (coe v0)))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_1046 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_1048 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1048 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_1050 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1050 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_1052 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
                     (coe v0))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1054 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1054 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_1054 v3
du_isNearSemiring_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_1056 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1056 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1056 v3
du_isPartialEquivalence_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1056 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                        (coe v1)))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1058 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
      (coe v0)
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_1060 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1060 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_1062 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1062 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_1064 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1064 ~v0 ~v1 ~v2 v3 = du_setoid_1064 v3
du_setoid_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1064 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1066 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1068 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_1072 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1072 = erased
-- Data.Sign.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_1074 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1074 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.flex
d_flex_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_1078 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_1080 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Sign.Properties._.IsFlexibleMagma.isMagma
d_isMagma_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1082 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0)
-- Data.Sign.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_1084 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1084 ~v0 v1
  = du_isPartialEquivalence_1084 v1
du_isPartialEquivalence_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1084 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsFlexibleMagma.refl
d_refl_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1086 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.reflexive
d_reflexive_1088 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1088 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.setoid
d_setoid_1090 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1090 ~v0 v1 = du_setoid_1090 v1
du_setoid_1090 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Sign.Properties._.IsFlexibleMagma.sym
d_sym_1092 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1092 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.trans
d_trans_1094 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1094 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1096 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_1098 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1098 = erased
-- Data.Sign.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_1100 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1100 = erased
-- Data.Sign.Properties._.IsGroup._-_
d__'45'__1104 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'45'__1104 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1144 v0 v2
-- Data.Sign.Properties._.IsGroup._//_
d__'47''47'__1106 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__1106 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 v0 v2 v4 v5
-- Data.Sign.Properties._.IsGroup._\\_
d__'92''92'__1108 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'92''92'__1108 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1132 v0 v2 v4 v5
-- Data.Sign.Properties._.IsGroup.assoc
d_assoc_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1110 = erased
-- Data.Sign.Properties._.IsGroup.identity
d_identity_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Sign.Properties._.IsGroup.identityʳ
d_identity'691'_1114 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1114 = erased
-- Data.Sign.Properties._.IsGroup.identityˡ
d_identity'737'_1116 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1116 = erased
-- Data.Sign.Properties._.IsGroup.inverse
d_inverse_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1118 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1092 (coe v0)
-- Data.Sign.Properties._.IsGroup.inverseʳ
d_inverse'691'_1120 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1120 = erased
-- Data.Sign.Properties._.IsGroup.inverseˡ
d_inverse'737'_1122 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1122 = erased
-- Data.Sign.Properties._.IsGroup.isEquivalence
d_isEquivalence_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))))
-- Data.Sign.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_1126 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1126 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162 v3
-- Data.Sign.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1128 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164 v3
-- Data.Sign.Properties._.IsGroup.isMagma
d_isMagma_1130 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)))
-- Data.Sign.Properties._.IsGroup.isMonoid
d_isMonoid_1132 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1132 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)
-- Data.Sign.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_1134 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1134 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1134 v3
du_isPartialEquivalence_1134 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1134 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsGroup.isSemigroup
d_isSemigroup_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Sign.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_1138 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1138 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1138 v3
du_isUnitalMagma_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Sign.Properties._.IsGroup.refl
d_refl_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1140 = erased
-- Data.Sign.Properties._.IsGroup.reflexive
d_reflexive_1142 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1142 = erased
-- Data.Sign.Properties._.IsGroup.setoid
d_setoid_1144 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1144 ~v0 ~v1 ~v2 v3 = du_setoid_1144 v3
du_setoid_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1144 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsGroup.sym
d_sym_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1146 = erased
-- Data.Sign.Properties._.IsGroup.trans
d_trans_1148 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1148 = erased
-- Data.Sign.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1150 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1150 = erased
-- Data.Sign.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1152 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1152 = erased
-- Data.Sign.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1154 = erased
-- Data.Sign.Properties._.IsGroup.∙-cong
d_'8729''45'cong_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1156 = erased
-- Data.Sign.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_1158 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1158 = erased
-- Data.Sign.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_1160 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1160 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_1164 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1164 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1166 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1168 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_1172 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1172 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_1174 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1174 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_1176 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1176 ~v0 ~v1 v2 = du_isBand_1176 v2
du_isBand_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_1178 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1178 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 v2
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_1180 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1180 ~v0 ~v1 v2
  = du_isCommutativeMagma_1180 v2
du_isCommutativeMagma_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1180 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_1182 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0)
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_1184 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1184 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1184 v2
du_isCommutativeSemigroup_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
                  (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_1188 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1188 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 v2
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
               (coe v0))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1194 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1194 ~v0 ~v1 v2
  = du_isPartialEquivalence_1194 v2
du_isPartialEquivalence_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1194 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1198 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1198 ~v0 ~v1 v2 = du_isUnitalMagma_1198 v2
du_isUnitalMagma_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1198 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1200 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1202 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1202 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1204 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1204 ~v0 ~v1 v2 = du_setoid_1204 v2
du_setoid_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1204 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1206 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1206 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1208 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1210 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1212 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1212 = erased
-- Data.Sign.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1214 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1214 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.idem
d_idem_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1218 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1220 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1222 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1222 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0)
-- Data.Sign.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1224 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1224 ~v0 v1
  = du_isPartialEquivalence_1224 v1
du_isPartialEquivalence_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1224 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsIdempotentMagma.refl
d_refl_1226 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1226 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1228 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1228 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.setoid
d_setoid_1230 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1230 ~v0 v1 = du_setoid_1230 v1
du_setoid_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMagma.sym
d_sym_1232 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1232 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.trans
d_trans_1234 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1234 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1236 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1238 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1238 = erased
-- Data.Sign.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1240 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1240 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.assoc
d_assoc_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1244 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.idem
d_idem_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1246 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.identity
d_identity_1248 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1250 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1250 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1252 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1252 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.isBand
d_isBand_1254 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1254 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_878 v2
-- Data.Sign.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_1256 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))))
-- Data.Sign.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1260 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)
-- Data.Sign.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1262 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1262 ~v0 ~v1 v2
  = du_isPartialEquivalence_1262 v2
du_isPartialEquivalence_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1262 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1266 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1266 ~v0 ~v1 v2 = du_isUnitalMagma_1266 v2
du_isUnitalMagma_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Sign.Properties._.IsIdempotentMonoid.refl
d_refl_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1268 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1270 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1270 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.setoid
d_setoid_1272 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1272 ~v0 ~v1 v2 = du_setoid_1272 v2
du_setoid_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1272 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsIdempotentMonoid.sym
d_sym_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1274 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.trans
d_trans_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1276 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1278 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1280 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1280 = erased
-- Data.Sign.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1282 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1282 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1286 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1288 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1290 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1290 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1292 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1292 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1294 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1296 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1296 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1298 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1298 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1300 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1300 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1300 v4
du_'42''45'isMagma_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1300 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1302 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1302 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1302 v4
du_'42''45'isMonoid_1302 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1302 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1304 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1304 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1304 v4
du_'42''45'isSemigroup_1304 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1304 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.assoc
d_assoc_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1306 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.comm
d_comm_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1308 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1310 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1310 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1312 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1312 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1314 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1314 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1316 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1316 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identity
d_identity_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1320 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1320 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1322 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1322 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.isBand
d_isBand_1324 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1324 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1324 v4
du_isBand_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1324 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isBand_878
         (coe
            MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1326 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1326 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1326 v4
du_isCommutativeBand_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1328 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1328 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1328 v4
du_isCommutativeMagma_1328 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1328 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1332 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1332 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1332 v4
du_isCommutativeSemigroup_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1332 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Sign.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1334 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      v4
-- Data.Sign.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1336 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1336 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1336 v4
du_isIdempotentMonoid_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1342 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1344 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1344 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1344 v4
du_isUnitalMagma_1344 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1344 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Sign.Properties._.IsIdempotentSemiring.distrib
d_distrib_1346 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Sign.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1348 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1348 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1350 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1350 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1354 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1354 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1354 v4
du_isNearSemiring_1354 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1354 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Sign.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1356 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1356 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1356 v4
du_isPartialEquivalence_1356 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1356 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1358 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1360 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1362 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1362 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1362 v4
du_isSemiringWithoutOne_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.refl
d_refl_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1364 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1366 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1366 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.setoid
d_setoid_1368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1368 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1368 v4
du_setoid_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1368 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Sign.Properties._.IsIdempotentSemiring.sym
d_sym_1370 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1370 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.trans
d_trans_1372 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1372 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.zero
d_zero_1374 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Sign.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1376 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1376 = erased
-- Data.Sign.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1378 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1378 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.inverse
d_inverse_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1382 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_976 (coe v0)
-- Data.Sign.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1384 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1386 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1386 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Sign.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1390 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0)
-- Data.Sign.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1392 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1392 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1392 v3
du_isPartialEquivalence_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1392 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsInvertibleMagma.refl
d_refl_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1394 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1396 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1396 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.setoid
d_setoid_1398 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1398 ~v0 ~v1 ~v2 v3 = du_setoid_1398 v3
du_setoid_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Sign.Properties._.IsInvertibleMagma.sym
d_sym_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1400 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.trans
d_trans_1402 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1402 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1404 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1406 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1408 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1408 = erased
-- Data.Sign.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1410 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1410 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1414 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1414 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_1028 (coe v0)
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1416 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1416 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1418 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1418 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1420 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_976
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1422 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1422 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1424 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1424 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_974
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_974
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1432 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1432 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1432 v3
du_isPartialEquivalence_1432 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1432 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1434 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1434 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1066 v3
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1436 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1438 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1438 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1440 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1440 ~v0 ~v1 ~v2 v3 = du_setoid_1440 v3
du_setoid_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1440 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v1)))
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1442 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1444 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1446 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1446 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1448 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1450 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1450 = erased
-- Data.Sign.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1452 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1452 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1456 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1458 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1460 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1460 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1462 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1462 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1464 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1466 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1466 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1468 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1468 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1470 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1470 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1470 v5
du_'42''45'isMagma_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1470 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1472 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1472 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1472 v5
du_'42''45'isMonoid_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1472 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1474 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1474 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1474 v5
du_'42''45'isSemigroup_1474 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1474 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.assoc
d_assoc_1476 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1476 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.comm
d_comm_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1478 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1480 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1482 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1482 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1484 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1484 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1486 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identity
d_identity_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                     (coe v0))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1490 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1490 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1492 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1492 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.isBand
d_isBand_1494 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1494 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1494 v5
du_isBand_1494 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1494 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isBand_878
            (coe
               MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1496 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1496 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1496 v5
du_isCommutativeBand_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1496 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1498 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1498 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1498 v5
du_isCommutativeMagma_1498 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1498 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1500 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1502 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1502 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1502 v5
du_isCommutativeSemigroup_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1502 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v3)))))
-- Data.Sign.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1504 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1504 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1504 v5
du_'43''45'isIdempotentCommutativeMonoid_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
du_'43''45'isIdempotentCommutativeMonoid_1504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Sign.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1506 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1506 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1506 v5
du_isIdempotentMonoid_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1506 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1508 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                        (coe v0)))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1510 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1510 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                  (coe v0)))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1512 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                     (coe v0))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1514 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1514 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1514 v5
du_isUnitalMagma_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1514 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.distrib
d_distrib_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Sign.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1518 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1518 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1520 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1520 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                           (coe v0))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000
d_isIdempotentSemiring_1524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
      (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1526 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1526 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1526 v5
du_isNearSemiring_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1526 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
               (coe v2))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1528 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1528 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1528 v5
du_isPartialEquivalence_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1528 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Sign.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1534 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1534 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1534 v5
du_isSemiringWithoutOne_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1534 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1)))
-- Data.Sign.Properties._.IsKleeneAlgebra.refl
d_refl_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1536 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1538 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1538 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.setoid
d_setoid_1540 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1540 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1540 v5
du_setoid_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1540 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1542 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2146 (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1544 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1544 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1546 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1546 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1548 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1548 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2144 (coe v0)
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1550 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1550 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1552 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1552 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.sym
d_sym_1554 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1554 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.trans
d_trans_1556 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1556 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.zero
d_zero_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Sign.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1560 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1560 = erased
-- Data.Sign.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1562 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1562 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1566 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1568 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1568 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1570 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1570 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1572 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1574 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1574 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1576 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1576 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.identity
d_identity_1578 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Sign.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1580 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1580 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1582 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1582 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1584 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))))
-- Data.Sign.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1586 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1586 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)
-- Data.Sign.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1590 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1590 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1590 v4
du_isPartialEquivalence_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1590 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Sign.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1594 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1596 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1598 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1598 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1600 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1600 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.refl
d_refl_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1602 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1604 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1604 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Sign.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1608 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1608 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1610 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1610 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.setoid
d_setoid_1612 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1612 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1612 v4
du_setoid_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1612 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Sign.Properties._.IsLeftBolLoop.sym
d_sym_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1614 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.trans
d_trans_1616 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1616 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1618 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1620 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1620 = erased
-- Data.Sign.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1622 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1622 = erased
-- Data.Sign.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1626 = erased
-- Data.Sign.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1628 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1628 = erased
-- Data.Sign.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1630 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1630 = erased
-- Data.Sign.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1632 = erased
-- Data.Sign.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1634 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1634 = erased
-- Data.Sign.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1636 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1636 = erased
-- Data.Sign.Properties._.IsLoop.identity
d_identity_1638 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1638 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3422 (coe v0)
-- Data.Sign.Properties._.IsLoop.identityʳ
d_identity'691'_1640 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1640 = erased
-- Data.Sign.Properties._.IsLoop.identityˡ
d_identity'737'_1642 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1642 = erased
-- Data.Sign.Properties._.IsLoop.isEquivalence
d_isEquivalence_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)))
-- Data.Sign.Properties._.IsLoop.isMagma
d_isMagma_1646 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Sign.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1648 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1648 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1648 v4
du_isPartialEquivalence_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1648 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Sign.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)
-- Data.Sign.Properties._.IsLoop.leftDivides
d_leftDivides_1652 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Sign.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1654 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1654 = erased
-- Data.Sign.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1656 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1656 = erased
-- Data.Sign.Properties._.IsLoop.refl
d_refl_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1658 = erased
-- Data.Sign.Properties._.IsLoop.reflexive
d_reflexive_1660 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1660 = erased
-- Data.Sign.Properties._.IsLoop.rightDivides
d_rightDivides_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Sign.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1664 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1664 = erased
-- Data.Sign.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1666 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1666 = erased
-- Data.Sign.Properties._.IsLoop.setoid
d_setoid_1668 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1668 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1668 v4
du_setoid_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1668 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v1)))
-- Data.Sign.Properties._.IsLoop.sym
d_sym_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1670 = erased
-- Data.Sign.Properties._.IsLoop.trans
d_trans_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1672 = erased
-- Data.Sign.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1674 = erased
-- Data.Sign.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1676 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1676 = erased
-- Data.Sign.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1678 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1678 = erased
-- Data.Sign.Properties._.IsMagma.isEquivalence
d_isEquivalence_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1682 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Data.Sign.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1684 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1684 ~v0 v1
  = du_isPartialEquivalence_1684 v1
du_isPartialEquivalence_1684 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1684 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0))
-- Data.Sign.Properties._.IsMagma.refl
d_refl_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1686 = erased
-- Data.Sign.Properties._.IsMagma.reflexive
d_reflexive_1688 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1688 = erased
-- Data.Sign.Properties._.IsMagma.setoid
d_setoid_1690 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1690 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 v1
-- Data.Sign.Properties._.IsMagma.sym
d_sym_1692 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1692 = erased
-- Data.Sign.Properties._.IsMagma.trans
d_trans_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1694 = erased
-- Data.Sign.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1696 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1696 = erased
-- Data.Sign.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1698 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1698 = erased
-- Data.Sign.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1700 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1700 = erased
-- Data.Sign.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Sign.Properties._.IsMedialMagma.isMagma
d_isMagma_1706 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1706 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0)
-- Data.Sign.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1708 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1708 ~v0 v1
  = du_isPartialEquivalence_1708 v1
du_isPartialEquivalence_1708 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1708 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsMedialMagma.medial
d_medial_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1710 = erased
-- Data.Sign.Properties._.IsMedialMagma.refl
d_refl_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1712 = erased
-- Data.Sign.Properties._.IsMedialMagma.reflexive
d_reflexive_1714 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1714 = erased
-- Data.Sign.Properties._.IsMedialMagma.setoid
d_setoid_1716 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1716 ~v0 v1 = du_setoid_1716 v1
du_setoid_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Sign.Properties._.IsMedialMagma.sym
d_sym_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1718 = erased
-- Data.Sign.Properties._.IsMedialMagma.trans
d_trans_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1720 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1722 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1724 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1724 = erased
-- Data.Sign.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1726 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1726 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1730 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1732 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1732 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1734 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1734 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1736 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1738 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1738 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1740 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1740 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.identity
d_identity_1742 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Sign.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1744 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1744 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1746 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1746 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))))
-- Data.Sign.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1750 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)
-- Data.Sign.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1754 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1754 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1754 v4
du_isPartialEquivalence_1754 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1754 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1756 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1760 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1760 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1762 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1762 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1764 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.refl
d_refl_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1766 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1768 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1768 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1772 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1772 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1774 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1774 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.setoid
d_setoid_1776 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1776 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1776 v4
du_setoid_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1776 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Sign.Properties._.IsMiddleBolLoop.sym
d_sym_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1778 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.trans
d_trans_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1780 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1782 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1784 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1784 = erased
-- Data.Sign.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1786 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1786 = erased
-- Data.Sign.Properties._.IsMonoid.assoc
d_assoc_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1790 = erased
-- Data.Sign.Properties._.IsMonoid.identity
d_identity_1792 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1792 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Data.Sign.Properties._.IsMonoid.identityʳ
d_identity'691'_1794 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1794 = erased
-- Data.Sign.Properties._.IsMonoid.identityˡ
d_identity'737'_1796 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1796 = erased
-- Data.Sign.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)))
-- Data.Sign.Properties._.IsMonoid.isMagma
d_isMagma_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0))
-- Data.Sign.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1802 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1802 ~v0 ~v1 v2
  = du_isPartialEquivalence_1802 v2
du_isPartialEquivalence_1802 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1802 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Sign.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1804 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Data.Sign.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1806 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1806 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758 v2
-- Data.Sign.Properties._.IsMonoid.refl
d_refl_1808 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1808 = erased
-- Data.Sign.Properties._.IsMonoid.reflexive
d_reflexive_1810 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1810 = erased
-- Data.Sign.Properties._.IsMonoid.setoid
d_setoid_1812 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1812 ~v0 ~v1 v2 = du_setoid_1812 v2
du_setoid_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1812 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Sign.Properties._.IsMonoid.sym
d_sym_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1814 = erased
-- Data.Sign.Properties._.IsMonoid.trans
d_trans_1816 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1816 = erased
-- Data.Sign.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1818 = erased
-- Data.Sign.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1820 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1820 = erased
-- Data.Sign.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1822 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1822 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1826 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1828 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1828 = erased
-- Data.Sign.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1830 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1830 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1832 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1832 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1834 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1834 = erased
-- Data.Sign.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1836 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1836 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identical
d_identical_1838 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1838 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identity
d_identity_1840 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Sign.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1842 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1842 = erased
-- Data.Sign.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1844 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1844 = erased
-- Data.Sign.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1846 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLoop_3500
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))))
-- Data.Sign.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486
d_isLeftBolLoop_1848 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)
-- Data.Sign.Properties._.IsMoufangLoop.isLoop
d_isLoop_1850 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3500
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))
-- Data.Sign.Properties._.IsMoufangLoop.isMagma
d_isMagma_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1854 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1854 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1854 v4
du_isPartialEquivalence_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1854 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Sign.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1856 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Sign.Properties._.IsMoufangLoop.leftBol
d_leftBol_1858 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1858 = erased
-- Data.Sign.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1860 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1862 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1862 = erased
-- Data.Sign.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1864 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1864 = erased
-- Data.Sign.Properties._.IsMoufangLoop.refl
d_refl_1866 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1866 = erased
-- Data.Sign.Properties._.IsMoufangLoop.reflexive
d_reflexive_1868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1868 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightBol
d_rightBol_1870 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1870 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1872 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Sign.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_1874 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1874 = erased
-- Data.Sign.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_1876 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1876 = erased
-- Data.Sign.Properties._.IsMoufangLoop.setoid
d_setoid_1878 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1878 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1878 v4
du_setoid_1878 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1878 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v3)))))
-- Data.Sign.Properties._.IsMoufangLoop.sym
d_sym_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1880 = erased
-- Data.Sign.Properties._.IsMoufangLoop.trans
d_trans_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1882 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1884 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_1886 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1886 = erased
-- Data.Sign.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_1888 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1888 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1892 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1894 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1894 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1896 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1896 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1898 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1898 = erased
-- Data.Sign.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1900 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1900 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326 v3
-- Data.Sign.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1902 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1902 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328 v3
-- Data.Sign.Properties._.IsNearSemiring.assoc
d_assoc_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1904 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1906 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1906 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1908 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1908 = erased
-- Data.Sign.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1910 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1910 = erased
-- Data.Sign.Properties._.IsNearSemiring.identity
d_identity_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.identityʳ
d_identity'691'_1914 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1914 = erased
-- Data.Sign.Properties._.IsNearSemiring.identityˡ
d_identity'737'_1916 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1916 = erased
-- Data.Sign.Properties._.IsNearSemiring.isMagma
d_isMagma_1918 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)))
-- Data.Sign.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1920 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_1920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)
-- Data.Sign.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_1924 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1924 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1924 v3
du_isUnitalMagma_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Sign.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1926 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1926 = erased
-- Data.Sign.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))))
-- Data.Sign.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_1930 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1930 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1930 v3
du_isPartialEquivalence_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1930 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsNearSemiring.refl
d_refl_1932 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1932 = erased
-- Data.Sign.Properties._.IsNearSemiring.reflexive
d_reflexive_1934 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1934 = erased
-- Data.Sign.Properties._.IsNearSemiring.setoid
d_setoid_1936 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1936 ~v0 ~v1 ~v2 v3 = du_setoid_1936 v3
du_setoid_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1936 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsNearSemiring.sym
d_sym_1938 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1938 = erased
-- Data.Sign.Properties._.IsNearSemiring.trans
d_trans_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1940 = erased
-- Data.Sign.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1942 = erased
-- Data.Sign.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1946 = erased
-- Data.Sign.Properties._.IsNearring.*-cong
d_'42''45'cong_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1948 = erased
-- Data.Sign.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1950 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1950 = erased
-- Data.Sign.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1952 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1952 = erased
-- Data.Sign.Properties._.IsNearring.*-identity
d_'42''45'identity_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_1956 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1956 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_1958 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1958 = erased
-- Data.Sign.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_1960 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1960 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1960 v5
du_'42''45'isMagma_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_1962 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1962 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1962 v5
du_'42''45'isMonoid_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_1964 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1964 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1964 v5
du_'42''45'isSemigroup_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.assoc
d_assoc_1966 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1966 = erased
-- Data.Sign.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1968 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1968 = erased
-- Data.Sign.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1970 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1970 = erased
-- Data.Sign.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1972 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1972 = erased
-- Data.Sign.Properties._.IsNearring.identity
d_identity_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_1976 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1976 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_1978 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1978 = erased
-- Data.Sign.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1980 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2774 (coe v0)
-- Data.Sign.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_1982 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_1982 = erased
-- Data.Sign.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_1984 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_1984 = erased
-- Data.Sign.Properties._.IsNearring.isMagma
d_isMagma_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))))
-- Data.Sign.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1988 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_1988 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.isSemigroup
d_isSemigroup_1990 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1990 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Sign.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_1992 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1992 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1992 v5
du_isUnitalMagma_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1992 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v1)))
-- Data.Sign.Properties._.IsNearring.distrib
d_distrib_1994 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1994 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2292
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.distribʳ
d_distrib'691'_1996 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1996 = erased
-- Data.Sign.Properties._.IsNearring.distribˡ
d_distrib'737'_1998 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1998 = erased
-- Data.Sign.Properties._.IsNearring.identityʳ
d_identity'691'_2000 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2000 = erased
-- Data.Sign.Properties._.IsNearring.identityˡ
d_identity'737'_2002 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2002 = erased
-- Data.Sign.Properties._.IsNearring.isEquivalence
d_isEquivalence_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2004 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))))
-- Data.Sign.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_2006 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2006 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2006 v5
du_isPartialEquivalence_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2006 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Sign.Properties._.IsNearring.isQuasiring
d_isQuasiring_2008 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262
d_isQuasiring_2008 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)
-- Data.Sign.Properties._.IsNearring.refl
d_refl_2010 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2010 = erased
-- Data.Sign.Properties._.IsNearring.reflexive
d_reflexive_2012 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2012 = erased
-- Data.Sign.Properties._.IsNearring.setoid
d_setoid_2014 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2014 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2014 v5
du_setoid_2014 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2014 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Sign.Properties._.IsNearring.sym
d_sym_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2016 = erased
-- Data.Sign.Properties._.IsNearring.trans
d_trans_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2018 = erased
-- Data.Sign.Properties._.IsNearring.zero
d_zero_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2294
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Sign.Properties._.IsNearring.zeroʳ
d_zero'691'_2022 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2022 = erased
-- Data.Sign.Properties._.IsNearring.zeroˡ
d_zero'737'_2024 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2024 = erased
-- Data.Sign.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2026 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing._//_
d__'47''47'__2030 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__2030 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2030 v0 v2
du__'47''47'__2030 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__2030 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2032 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2034 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2034 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2036 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2036 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2038 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2648 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2040 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2040 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2042 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2042 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2044 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2044 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2728 v5
-- Data.Sign.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2046 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_'42''45'isUnitalMagma_2046 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734 v5
-- Data.Sign.Properties._.IsNonAssociativeRing.assoc
d_assoc_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2048 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.comm
d_comm_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2050 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2052 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2054 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2054 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2056 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2056 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.identity
d_identity_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Sign.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_2060 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2060 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_2062 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2062 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2064 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
      (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_2066 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2066 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2066 v5
du_isCommutativeMagma_2066 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2066 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_2068 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2068 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2068 v5
du_isCommutativeMonoid_2068 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Sign.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2070 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2070 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2070 v5
du_isCommutativeSemigroup_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2070 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_2072 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2072 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Sign.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_2074 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2074 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2074 v5
du_isInvertibleMagma_2074 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2074 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2076 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2076 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2076 v5
du_isInvertibleUnitalMagma_2076 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2076 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
                  (coe v0)))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Sign.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_2082 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2082 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_2084 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2084 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2084 v5
du_isUnitalMagma_2084 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2084 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Data.Sign.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2086 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.inverse
d_inverse_2088 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Sign.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_2090 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2090 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_2092 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2092 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.distrib
d_distrib_2094 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2094 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2650 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_2096 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2096 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_2098 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2098 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
                     (coe v0))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_2102 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2102 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2102 v5
du_isPartialEquivalence_2102 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2102 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.refl
d_refl_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2104 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_2106 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2106 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.setoid
d_setoid_2108 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2108 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2108 v5
du_setoid_2108 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2108 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Sign.Properties._.IsNonAssociativeRing.sym
d_sym_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2110 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.trans
d_trans_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2112 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2114 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2114 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2116 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2116 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.zero
d_zero_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2118 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2652 (coe v0)
-- Data.Sign.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_2120 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2120 = erased
-- Data.Sign.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_2122 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2122 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_2126 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2126 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_2128 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2128 = erased
-- Data.Sign.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_2130 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2130 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_2132 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2132 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_2134 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2134 = erased
-- Data.Sign.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_2136 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2136 = erased
-- Data.Sign.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_2138 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Sign.Properties._.IsQuasigroup.isMagma
d_isMagma_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2140 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_2142 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2142 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2142 v3
du_isPartialEquivalence_2142 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2142 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsQuasigroup.leftDivides
d_leftDivides_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2144 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3346 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_2146 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2146 = erased
-- Data.Sign.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_2148 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2148 = erased
-- Data.Sign.Properties._.IsQuasigroup.refl
d_refl_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2150 = erased
-- Data.Sign.Properties._.IsQuasigroup.reflexive
d_reflexive_2152 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2152 = erased
-- Data.Sign.Properties._.IsQuasigroup.rightDivides
d_rightDivides_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2154 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3348 (coe v0)
-- Data.Sign.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_2156 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2156 = erased
-- Data.Sign.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_2158 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2158 = erased
-- Data.Sign.Properties._.IsQuasigroup.setoid
d_setoid_2160 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2160 ~v0 ~v1 ~v2 v3 = du_setoid_2160 v3
du_setoid_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2160 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Sign.Properties._.IsQuasigroup.sym
d_sym_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2162 = erased
-- Data.Sign.Properties._.IsQuasigroup.trans
d_trans_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2164 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2166 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_2168 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2168 = erased
-- Data.Sign.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_2170 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2170 = erased
-- Data.Sign.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_2174 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2174 = erased
-- Data.Sign.Properties._.IsQuasiring.*-cong
d_'42''45'cong_2176 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2176 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2178 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2178 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2180 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2180 = erased
-- Data.Sign.Properties._.IsQuasiring.*-identity
d_'42''45'identity_2182 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2182 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_2184 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2184 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_2186 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2186 = erased
-- Data.Sign.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_2188 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2188 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344 v4
-- Data.Sign.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2190 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2190 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348 v4
-- Data.Sign.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2192 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2192 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346 v4
-- Data.Sign.Properties._.IsQuasiring.assoc
d_assoc_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2194 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2196 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2198 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2198 = erased
-- Data.Sign.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2200 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2200 = erased
-- Data.Sign.Properties._.IsQuasiring.identity
d_identity_2202 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_2204 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2204 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_2206 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2206 = erased
-- Data.Sign.Properties._.IsQuasiring.isMagma
d_isMagma_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)))
-- Data.Sign.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2214 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2214 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2214 v4
du_isUnitalMagma_2214 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Sign.Properties._.IsQuasiring.distrib
d_distrib_2216 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2216 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2292 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2218 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2218 = erased
-- Data.Sign.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2220 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2220 = erased
-- Data.Sign.Properties._.IsQuasiring.identityʳ
d_identity'691'_2222 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2222 = erased
-- Data.Sign.Properties._.IsQuasiring.identityˡ
d_identity'737'_2224 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2224 = erased
-- Data.Sign.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))))
-- Data.Sign.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2228 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2228 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2228 v4
du_isPartialEquivalence_2228 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2228 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsQuasiring.refl
d_refl_2230 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2230 = erased
-- Data.Sign.Properties._.IsQuasiring.reflexive
d_reflexive_2232 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2232 = erased
-- Data.Sign.Properties._.IsQuasiring.setoid
d_setoid_2234 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2234 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2234 v4
du_setoid_2234 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2234 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Sign.Properties._.IsQuasiring.sym
d_sym_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2236 = erased
-- Data.Sign.Properties._.IsQuasiring.trans
d_trans_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2238 = erased
-- Data.Sign.Properties._.IsQuasiring.zero
d_zero_2240 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2240 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2294 (coe v0)
-- Data.Sign.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2242 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2242 = erased
-- Data.Sign.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2244 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2244 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2248 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2248 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2250 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2250 = erased
-- Data.Sign.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2252 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2252 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2254 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2254 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2256 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2256 = erased
-- Data.Sign.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2258 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2258 = erased
-- Data.Sign.Properties._.IsRightBolLoop.identity
d_identity_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Sign.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2262 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2262 = erased
-- Data.Sign.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2264 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2264 = erased
-- Data.Sign.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))))
-- Data.Sign.Properties._.IsRightBolLoop.isLoop
d_isLoop_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_2268 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)
-- Data.Sign.Properties._.IsRightBolLoop.isMagma
d_isMagma_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2272 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2272 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2272 v4
du_isPartialEquivalence_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2272 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Sign.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_2274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Sign.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2278 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2278 = erased
-- Data.Sign.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2280 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2280 = erased
-- Data.Sign.Properties._.IsRightBolLoop.refl
d_refl_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2282 = erased
-- Data.Sign.Properties._.IsRightBolLoop.reflexive
d_reflexive_2284 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2284 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightBol
d_rightBol_2286 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2286 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Sign.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2290 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2290 = erased
-- Data.Sign.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2292 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2292 = erased
-- Data.Sign.Properties._.IsRightBolLoop.setoid
d_setoid_2294 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2294 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2294 v4
du_setoid_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2294 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Sign.Properties._.IsRightBolLoop.sym
d_sym_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2296 = erased
-- Data.Sign.Properties._.IsRightBolLoop.trans
d_trans_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2298 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2300 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2302 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2302 = erased
-- Data.Sign.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2304 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2304 = erased
-- Data.Sign.Properties._.IsRing._//_
d__'47''47'__2308 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__2308 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2308 v0 v2
du__'47''47'__2308 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__2308 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsRing.*-assoc
d_'42''45'assoc_2310 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2310 = erased
-- Data.Sign.Properties._.IsRing.*-cong
d_'42''45'cong_2312 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2312 = erased
-- Data.Sign.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2314 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2314 = erased
-- Data.Sign.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2316 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2316 = erased
-- Data.Sign.Properties._.IsRing.*-identity
d_'42''45'identity_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Data.Sign.Properties._.IsRing.identityʳ
d_identity'691'_2320 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2320 = erased
-- Data.Sign.Properties._.IsRing.identityˡ
d_identity'737'_2322 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2322 = erased
-- Data.Sign.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2324 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2324 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2324 v0 v1 v2 v3 v5
du_'42''45'isMagma_2324 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2324 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2326 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2326 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 v0 v1 v2
      v3 v5
-- Data.Sign.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2328 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2328 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2328 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2328 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2328 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Sign.Properties._.IsRing.assoc
d_assoc_2330 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2330 = erased
-- Data.Sign.Properties._.IsRing.comm
d_comm_2332 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2332 = erased
-- Data.Sign.Properties._.IsRing.∙-cong
d_'8729''45'cong_2334 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2334 = erased
-- Data.Sign.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2336 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2336 = erased
-- Data.Sign.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2338 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2338 = erased
-- Data.Sign.Properties._.IsRing.identity
d_identity_2340 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2340 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2340 v5
du_identity_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Sign.Properties._.IsRing.identityʳ
d_identity'691'_2342 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2342 = erased
-- Data.Sign.Properties._.IsRing.identityˡ
d_identity'737'_2344 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2344 = erased
-- Data.Sign.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2346 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Data.Sign.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2348 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2348 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2348 v5
du_isCommutativeMagma_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2348 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Sign.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2350 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2350 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2350 v5
du_isCommutativeMonoid_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2350 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v1)))
-- Data.Sign.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2352 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2352 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2352 v5
du_isCommutativeSemigroup_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2352 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
               (coe v2))))
-- Data.Sign.Properties._.IsRing.isGroup
d_isGroup_2354 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2354 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2354 v5
du_isGroup_2354 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_2354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
         (coe v0))
-- Data.Sign.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2356 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2356 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2356 v5
du_isInvertibleMagma_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2356 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2))))
-- Data.Sign.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2358 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2358 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2358 v5
du_isInvertibleUnitalMagma_2358 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2358 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2))))
-- Data.Sign.Properties._.IsRing.isMagma
d_isMagma_2360 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2360 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2360 v5
du_isMagma_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_2360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v0)))))
-- Data.Sign.Properties._.IsRing.isMonoid
d_isMonoid_2362 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2362 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2362 v5
du_isMonoid_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_2362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Sign.Properties._.IsRing.isSemigroup
d_isSemigroup_2364 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2364 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2364 v5
du_isSemigroup_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_2364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Sign.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2366 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2366 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2366 v5
du_isUnitalMagma_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2366 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3)))))
-- Data.Sign.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2368 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2368 = erased
-- Data.Sign.Properties._.IsRing.inverse
d_inverse_2370 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2370 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2370 v5
du_inverse_2370 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2370 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Sign.Properties._.IsRing.inverseʳ
d_inverse'691'_2372 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2372 = erased
-- Data.Sign.Properties._.IsRing.inverseˡ
d_inverse'737'_2374 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2374 = erased
-- Data.Sign.Properties._.IsRing.distrib
d_distrib_2376 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2376 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Data.Sign.Properties._.IsRing.distribʳ
d_distrib'691'_2378 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2378 = erased
-- Data.Sign.Properties._.IsRing.distribˡ
d_distrib'737'_2380 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2380 = erased
-- Data.Sign.Properties._.IsRing.isEquivalence
d_isEquivalence_2382 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2382 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2382 v5
du_isEquivalence_2382 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_2382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v0))))))
-- Data.Sign.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2384 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2384 v0 v1 v2 v3 v5
du_isNearSemiring_2384 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2384 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Sign.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2386 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2386 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2386 v5
du_isPartialEquivalence_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2386 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Sign.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2388 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_2388 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 v5
-- Data.Sign.Properties._.IsRing.isSemiring
d_isSemiring_2390 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_2390 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 v0 v1 v2 v3 v5
-- Data.Sign.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2392 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2392 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      v5
-- Data.Sign.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2394 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2394 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2394 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2394 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2394 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRing.refl
d_refl_2396 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2396 = erased
-- Data.Sign.Properties._.IsRing.reflexive
d_reflexive_2398 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2398 = erased
-- Data.Sign.Properties._.IsRing.setoid
d_setoid_2400 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2400 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2400 v5
du_setoid_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2400 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Sign.Properties._.IsRing.sym
d_sym_2402 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2402 = erased
-- Data.Sign.Properties._.IsRing.trans
d_trans_2404 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2404 = erased
-- Data.Sign.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2406 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2406 = erased
-- Data.Sign.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2408 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2408 = erased
-- Data.Sign.Properties._.IsRing.zero
d_zero_2410 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2410 v0 v1 v2 v3 ~v4 v5 = du_zero_2410 v0 v1 v2 v3 v5
du_zero_2410 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2410 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Sign.Properties._.IsRing.zeroʳ
d_zero'691'_2412 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2412 = erased
-- Data.Sign.Properties._.IsRing.zeroˡ
d_zero'737'_2414 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2414 = erased
-- Data.Sign.Properties._.IsRingWithoutOne._//_
d__'47''47'__2418 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
d__'47''47'__2418 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2418 v0 v2
du__'47''47'__2418 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6
du__'47''47'__2418 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Sign.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2420 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2422 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2422 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2424 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2424 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2426 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2426 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2428 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2428 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2430 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2430 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Sign.Properties._.IsRingWithoutOne.assoc
d_assoc_2432 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2432 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.comm
d_comm_2434 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2434 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2436 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2438 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2438 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2440 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2440 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.identity
d_identity_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Sign.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2444 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2444 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2446 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2446 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
      (coe v0)
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2450 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2450 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2450 v4
du_isCommutativeMagma_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2450 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2452 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2452 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2452 v4
du_isCommutativeMonoid_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Sign.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2454 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2454 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2454 v4
du_isCommutativeSemigroup_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2454 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Sign.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2458 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2458 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2458 v4
du_isInvertibleMagma_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2458 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2460 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2460 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2460 v4
du_isInvertibleUnitalMagma_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2460 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Sign.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2462 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                  (coe v0)))))
-- Data.Sign.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Sign.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2466 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Sign.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2468 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2468 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2468 v4
du_isUnitalMagma_2468 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2468 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Data.Sign.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2470 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2470 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.inverse
d_inverse_2472 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Sign.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2474 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2474 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2476 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2476 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.distrib
d_distrib_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2478 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2520 (coe v0)
-- Data.Sign.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2480 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2480 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2482 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2482 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2484 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                     (coe v0))))))
-- Data.Sign.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2486 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2486
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598
-- Data.Sign.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2488 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2488 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2488 v4
du_isPartialEquivalence_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2488 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Sign.Properties._.IsRingWithoutOne.refl
d_refl_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2490 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2492 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2492 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.setoid
d_setoid_2494 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2494 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2494 v4
du_setoid_2494 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2494 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Sign.Properties._.IsRingWithoutOne.sym
d_sym_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2496 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.trans
d_trans_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2498 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2500 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2500 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2502 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2502 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.zero
d_zero_2504 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2504 = coe MAlonzo.Code.Algebra.Structures.du_zero_2596
-- Data.Sign.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2506 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2506 = erased
-- Data.Sign.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2508 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2508 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2512 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Sign.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2514 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0)
-- Data.Sign.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2516 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2516 ~v0 v1
  = du_isPartialEquivalence_2516 v1
du_isPartialEquivalence_2516 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2516 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsSelectiveMagma.refl
d_refl_2518 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2518 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2520 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2520 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.sel
d_sel_2522 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2522 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_462 (coe v0)
-- Data.Sign.Properties._.IsSelectiveMagma.setoid
d_setoid_2524 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2524 ~v0 v1 = du_setoid_2524 v1
du_setoid_2524 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Sign.Properties._.IsSelectiveMagma.sym
d_sym_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2526 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.trans
d_trans_2528 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2528 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2530 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2530 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2532 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2532 = erased
-- Data.Sign.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2534 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2534 = erased
-- Data.Sign.Properties._.IsSemigroup.assoc
d_assoc_2538 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2538 = erased
-- Data.Sign.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2540 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Sign.Properties._.IsSemigroup.isMagma
d_isMagma_2542 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2542 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Data.Sign.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2544 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2544 ~v0 v1
  = du_isPartialEquivalence_2544 v1
du_isPartialEquivalence_2544 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2544 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsSemigroup.refl
d_refl_2546 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2546 = erased
-- Data.Sign.Properties._.IsSemigroup.reflexive
d_reflexive_2548 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2548 = erased
-- Data.Sign.Properties._.IsSemigroup.setoid
d_setoid_2550 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2550 ~v0 v1 = du_setoid_2550 v1
du_setoid_2550 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2550 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Sign.Properties._.IsSemigroup.sym
d_sym_2552 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2552 = erased
-- Data.Sign.Properties._.IsSemigroup.trans
d_trans_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2554 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2556 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2556 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2558 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2558 = erased
-- Data.Sign.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2560 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2560 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2564 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2564 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Sign.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2566 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2566 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0)
-- Data.Sign.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2568 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2568 ~v0 v1
  = du_isPartialEquivalence_2568 v1
du_isPartialEquivalence_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2568 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsSemimedialMagma.refl
d_refl_2570 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2570 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2572 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2572 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2574 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2574 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_420 (coe v0)
-- Data.Sign.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2576 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2576 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2578 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2578 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.setoid
d_setoid_2580 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2580 ~v0 v1 = du_setoid_2580 v1
du_setoid_2580 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Sign.Properties._.IsSemimedialMagma.sym
d_sym_2582 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2582 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.trans
d_trans_2584 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2584 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2586 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2586 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2588 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2588 = erased
-- Data.Sign.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2590 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2590 = erased
-- Data.Sign.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2594 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2594 = erased
-- Data.Sign.Properties._.IsSemiring.*-cong
d_'42''45'cong_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2596 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2598 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2598 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2600 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2600 = erased
-- Data.Sign.Properties._.IsSemiring.*-identity
d_'42''45'identity_2602 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.identityʳ
d_identity'691'_2604 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2604 = erased
-- Data.Sign.Properties._.IsSemiring.identityˡ
d_identity'737'_2606 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2606 = erased
-- Data.Sign.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2608 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2608 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2608 v4
du_'42''45'isMagma_2608 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2610 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2610 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2610 v4
du_'42''45'isMonoid_2610 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_2610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2612 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2612 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2612 v4
du_'42''45'isSemigroup_2612 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.assoc
d_assoc_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2614 = erased
-- Data.Sign.Properties._.IsSemiring.comm
d_comm_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2616 = erased
-- Data.Sign.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2618 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2618 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2620 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2620 = erased
-- Data.Sign.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2622 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2622 = erased
-- Data.Sign.Properties._.IsSemiring.identity
d_identity_2624 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Sign.Properties._.IsSemiring.identityʳ
d_identity'691'_2626 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2626 = erased
-- Data.Sign.Properties._.IsSemiring.identityˡ
d_identity'737'_2628 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2628 = erased
-- Data.Sign.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2630 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2630 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2630 v4
du_isCommutativeMagma_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2630 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Sign.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2632 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2634 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2634 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2634 v4
du_isCommutativeSemigroup_2634 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2634 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v1)))
-- Data.Sign.Properties._.IsSemiring.isMagma
d_isMagma_2636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiring.isMonoid
d_isMonoid_2638 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v0)))
-- Data.Sign.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2640 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Sign.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2642 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2642 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2642 v4
du_isUnitalMagma_2642 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2642 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2))))
-- Data.Sign.Properties._.IsSemiring.distrib
d_distrib_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.distribʳ
d_distrib'691'_2646 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2646 = erased
-- Data.Sign.Properties._.IsSemiring.distribˡ
d_distrib'737'_2648 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2648 = erased
-- Data.Sign.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe v0))))))
-- Data.Sign.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2652 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2652 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2652 v4
du_isNearSemiring_2652 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe v0))
-- Data.Sign.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2654 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2654 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2654 v4
du_isPartialEquivalence_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2654 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Sign.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe v0)
-- Data.Sign.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2658 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2658 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732 v4
-- Data.Sign.Properties._.IsSemiring.refl
d_refl_2660 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2660 = erased
-- Data.Sign.Properties._.IsSemiring.reflexive
d_reflexive_2662 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2662 = erased
-- Data.Sign.Properties._.IsSemiring.setoid
d_setoid_2664 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2664 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2664 v4
du_setoid_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2664 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Sign.Properties._.IsSemiring.sym
d_sym_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2666 = erased
-- Data.Sign.Properties._.IsSemiring.trans
d_trans_2668 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2668 = erased
-- Data.Sign.Properties._.IsSemiring.zero
d_zero_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2670 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1658 (coe v0)
-- Data.Sign.Properties._.IsSemiring.zeroʳ
d_zero'691'_2672 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2672 = erased
-- Data.Sign.Properties._.IsSemiring.zeroˡ
d_zero'737'_2674 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2674 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2678 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2680 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2680 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2682 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2682 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2684 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2684 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2686 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2686 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2688 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2688 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2690 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2690 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2692 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2692 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2694 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2694 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2696 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2696 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618 v4
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2698 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2700 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2700 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2702 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2702 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2704 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2704 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2706 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2706 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2708 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2710 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2710 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2712 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2712 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2714 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2714 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2714 v4
du_isCommutativeMagma_2714 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2714 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2716 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2718 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2718 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2718 v4
du_isCommutativeSemigroup_2718 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2720 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v0))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2722 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2724 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2726 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2726 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2726 v4
du_isUnitalMagma_2726 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2726 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2728 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1566 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2730 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2730 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2732 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2732 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2734 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2736 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2736 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2736 v4
du_isPartialEquivalence_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2736 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2738 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2738 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2740 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2740 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2742 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2742 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2742 v4
du_setoid_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2742 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2744 = erased
-- Data.Sign.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2746 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2746 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2750 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2752 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2752 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2754 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2754 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2756 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2756 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2758 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2758 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2760 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2760 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2762 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2762 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.comm
d_comm_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2764 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2766 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2768 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2768 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2770 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2770 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.identity
d_identity_2772 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v0)))
-- Data.Sign.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2774 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2774 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2776 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2776 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2778 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2778 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2778 v3
du_isCommutativeMagma_2778 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2778 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Sign.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2780 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2782 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2782 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2782 v3
du_isCommutativeSemigroup_2782 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2782 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2784 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Sign.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2786 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1368 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2788 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2788 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2790 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2790 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                  (coe v0)))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2794 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2794 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430 v3
-- Data.Sign.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2796 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2796 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2796 v3
du_isPartialEquivalence_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2796 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                     (coe v0))))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.refl
d_refl_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2798 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2800 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2800 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2802 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2802 ~v0 ~v1 ~v2 v3 = du_setoid_2802 v3
du_setoid_2802 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2802 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Sign.Properties._.IsSemiringWithoutOne.sym
d_sym_2804 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2804 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.trans
d_trans_2806 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2806 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.zero
d_zero_2808 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2808 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1370 (coe v0)
-- Data.Sign.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2810 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2810 = erased
-- Data.Sign.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2812 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2812 = erased
-- Data.Sign.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2816 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2816 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0)
-- Data.Sign.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2818 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2818 ~v0 ~v1 v2
  = du_isPartialEquivalence_2818 v2
du_isPartialEquivalence_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2818 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0))
-- Data.Sign.Properties._.IsSuccessorSet.refl
d_refl_2820 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2820 = erased
-- Data.Sign.Properties._.IsSuccessorSet.reflexive
d_reflexive_2822 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2822 = erased
-- Data.Sign.Properties._.IsSuccessorSet.setoid
d_setoid_2824 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2824 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_174 v2
-- Data.Sign.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2826 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2826 = erased
-- Data.Sign.Properties._.IsSuccessorSet.sym
d_sym_2828 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2828 = erased
-- Data.Sign.Properties._.IsSuccessorSet.trans
d_trans_2830 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2830 = erased
-- Data.Sign.Properties._.IsUnitalMagma.identity
d_identity_2834 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2834 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_680 (coe v0)
-- Data.Sign.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2836 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2836 = erased
-- Data.Sign.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2838 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2838 = erased
-- Data.Sign.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2840 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Sign.Properties._.IsUnitalMagma.isMagma
d_isMagma_2842 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2842 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0)
-- Data.Sign.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2844 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2844 ~v0 ~v1 v2
  = du_isPartialEquivalence_2844 v2
du_isPartialEquivalence_2844 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2844 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Sign.Properties._.IsUnitalMagma.refl
d_refl_2846 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2846 = erased
-- Data.Sign.Properties._.IsUnitalMagma.reflexive
d_reflexive_2848 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2848 = erased
-- Data.Sign.Properties._.IsUnitalMagma.setoid
d_setoid_2850 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2850 ~v0 ~v1 v2 = du_setoid_2850 v2
du_setoid_2850 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Sign.Properties._.IsUnitalMagma.sym
d_sym_2852 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2852 = erased
-- Data.Sign.Properties._.IsUnitalMagma.trans
d_trans_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2854 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2856 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2856 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2858 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2858 = erased
-- Data.Sign.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2860 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2860 = erased
-- Data.Sign.Properties._._Absorbs_
d__Absorbs__2864 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__Absorbs__2864 = erased
-- Data.Sign.Properties._._DistributesOver_
d__DistributesOver__2866 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver__2866 = erased
-- Data.Sign.Properties._._DistributesOverʳ_
d__DistributesOver'691'__2868 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver'691'__2868 = erased
-- Data.Sign.Properties._._DistributesOverˡ_
d__DistributesOver'737'__2870 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__DistributesOver'737'__2870 = erased
-- Data.Sign.Properties._._IdempotentOn_
d__IdempotentOn__2872 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d__IdempotentOn__2872 = erased
-- Data.Sign.Properties._._MiddleFourExchange_
d__MiddleFourExchange__2874 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d__MiddleFourExchange__2874 = erased
-- Data.Sign.Properties._.Absorptive
d_Absorptive_2876 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Absorptive_2876 = erased
-- Data.Sign.Properties._.AlmostCancellative
d_AlmostCancellative_2878 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostCancellative_2878 = erased
-- Data.Sign.Properties._.AlmostLeftCancellative
d_AlmostLeftCancellative_2880 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostLeftCancellative_2880 = erased
-- Data.Sign.Properties._.AlmostRightCancellative
d_AlmostRightCancellative_2882 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_AlmostRightCancellative_2882 = erased
-- Data.Sign.Properties._.Alternative
d_Alternative_2884 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Alternative_2884 = erased
-- Data.Sign.Properties._.Associative
d_Associative_2886 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Associative_2886 = erased
-- Data.Sign.Properties._.Cancellative
d_Cancellative_2888 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Cancellative_2888 = erased
-- Data.Sign.Properties._.Central
d_Central_2890 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_Central_2890 = erased
-- Data.Sign.Properties._.Commutative
d_Commutative_2892 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Commutative_2892 = erased
-- Data.Sign.Properties._.Congruent₁
d_Congruent'8321'_2894 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Congruent'8321'_2894 = erased
-- Data.Sign.Properties._.Congruent₂
d_Congruent'8322'_2896 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Congruent'8322'_2896 = erased
-- Data.Sign.Properties._.Conical
d_Conical_2898 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Conical_2898 = erased
-- Data.Sign.Properties._.Flexible
d_Flexible_2900 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Flexible_2900 = erased
-- Data.Sign.Properties._.Idempotent
d_Idempotent_2902 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Idempotent_2902 = erased
-- Data.Sign.Properties._.IdempotentFun
d_IdempotentFun_2904 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_IdempotentFun_2904 = erased
-- Data.Sign.Properties._.Identical
d_Identical_2906 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Identical_2906 = erased
-- Data.Sign.Properties._.Identity
d_Identity_2908 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Identity_2908 = erased
-- Data.Sign.Properties._.Interchangable
d_Interchangable_2910 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Interchangable_2910 = erased
-- Data.Sign.Properties._.Inverse
d_Inverse_2912 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Inverse_2912 = erased
-- Data.Sign.Properties._.Invertible
d_Invertible_2914 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_Invertible_2914 = erased
-- Data.Sign.Properties._.Involutive
d_Involutive_2916 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Involutive_2916 = erased
-- Data.Sign.Properties._.LeftAlternative
d_LeftAlternative_2918 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftAlternative_2918 = erased
-- Data.Sign.Properties._.LeftBol
d_LeftBol_2920 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftBol_2920 = erased
-- Data.Sign.Properties._.LeftCancellative
d_LeftCancellative_2922 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftCancellative_2922 = erased
-- Data.Sign.Properties._.LeftCongruent
d_LeftCongruent_2924 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftCongruent_2924 = erased
-- Data.Sign.Properties._.LeftConical
d_LeftConical_2926 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftConical_2926 = erased
-- Data.Sign.Properties._.LeftDivides
d_LeftDivides_2928 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides_2928 = erased
-- Data.Sign.Properties._.LeftDividesʳ
d_LeftDivides'691'_2930 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides'691'_2930 = erased
-- Data.Sign.Properties._.LeftDividesˡ
d_LeftDivides'737'_2932 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftDivides'737'_2932 = erased
-- Data.Sign.Properties._.LeftIdentity
d_LeftIdentity_2934 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftIdentity_2934 = erased
-- Data.Sign.Properties._.LeftInverse
d_LeftInverse_2936 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftInverse_2936 = erased
-- Data.Sign.Properties._.LeftInvertible
d_LeftInvertible_2938 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_LeftInvertible_2938 = erased
-- Data.Sign.Properties._.LeftSemimedial
d_LeftSemimedial_2940 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftSemimedial_2940 = erased
-- Data.Sign.Properties._.LeftZero
d_LeftZero_2942 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_LeftZero_2942 = erased
-- Data.Sign.Properties._.Medial
d_Medial_2944 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Medial_2944 = erased
-- Data.Sign.Properties._.MiddleBol
d_MiddleBol_2946 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_MiddleBol_2946 = erased
-- Data.Sign.Properties._.RightAlternative
d_RightAlternative_2948 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightAlternative_2948 = erased
-- Data.Sign.Properties._.RightBol
d_RightBol_2950 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightBol_2950 = erased
-- Data.Sign.Properties._.RightCancellative
d_RightCancellative_2952 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightCancellative_2952 = erased
-- Data.Sign.Properties._.RightCongruent
d_RightCongruent_2954 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightCongruent_2954 = erased
-- Data.Sign.Properties._.RightConical
d_RightConical_2956 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightConical_2956 = erased
-- Data.Sign.Properties._.RightDivides
d_RightDivides_2958 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides_2958 = erased
-- Data.Sign.Properties._.RightDividesʳ
d_RightDivides'691'_2960 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides'691'_2960 = erased
-- Data.Sign.Properties._.RightDividesˡ
d_RightDivides'737'_2962 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightDivides'737'_2962 = erased
-- Data.Sign.Properties._.RightIdentity
d_RightIdentity_2964 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightIdentity_2964 = erased
-- Data.Sign.Properties._.RightInverse
d_RightInverse_2966 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightInverse_2966 = erased
-- Data.Sign.Properties._.RightInvertible
d_RightInvertible_2968 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> ()
d_RightInvertible_2968 = erased
-- Data.Sign.Properties._.RightSemimedial
d_RightSemimedial_2970 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightSemimedial_2970 = erased
-- Data.Sign.Properties._.RightZero
d_RightZero_2972 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_RightZero_2972 = erased
-- Data.Sign.Properties._.Selective
d_Selective_2974 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Selective_2974 = erased
-- Data.Sign.Properties._.SelfInverse
d_SelfInverse_2976 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_SelfInverse_2976 = erased
-- Data.Sign.Properties._.Semimedial
d_Semimedial_2978 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Semimedial_2978 = erased
-- Data.Sign.Properties._.StarDestructive
d_StarDestructive_2980 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarDestructive_2980 = erased
-- Data.Sign.Properties._.StarExpansive
d_StarExpansive_2982 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarExpansive_2982 = erased
-- Data.Sign.Properties._.StarLeftDestructive
d_StarLeftDestructive_2984 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarLeftDestructive_2984 = erased
-- Data.Sign.Properties._.StarLeftExpansive
d_StarLeftExpansive_2986 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarLeftExpansive_2986 = erased
-- Data.Sign.Properties._.StarRightDestructive
d_StarRightDestructive_2988 ::
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarRightDestructive_2988 = erased
-- Data.Sign.Properties._.StarRightExpansive
d_StarRightExpansive_2990 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_StarRightExpansive_2990 = erased
-- Data.Sign.Properties._.Zero
d_Zero_2992 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  (MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
   MAlonzo.Code.Data.Sign.Base.T_Sign_6) ->
  ()
d_Zero_2992 = erased
-- Data.Sign.Properties._≟_
d__'8799'__2994 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2994 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sign.Base.C_'45'_8
        -> case coe v1 of
             MAlonzo.Code.Data.Sign.Base.C_'45'_8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Data.Sign.Base.C_'43'_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sign.Base.C_'43'_10
        -> case coe v1 of
             MAlonzo.Code.Data.Sign.Base.C_'45'_8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Sign.Base.C_'43'_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sign.Properties.≡-setoid
d_'8801''45'setoid_2996 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''45'setoid_2996
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Sign.Properties.≡-decSetoid
d_'8801''45'decSetoid_2998 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8801''45'decSetoid_2998
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2994)
-- Data.Sign.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_3000 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_'8801''45'isDecEquivalence_3000
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isDecEquivalence_398
      (coe d__'8799'__2994)
-- Data.Sign.Properties.opposite-selfInverse
d_opposite'45'selfInverse_3002 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'selfInverse_3002 = erased
-- Data.Sign.Properties.opposite-involutive
d_opposite'45'involutive_3004 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'involutive_3004 = erased
-- Data.Sign.Properties.opposite-injective
d_opposite'45'injective_3006 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'45'injective_3006 = erased
-- Data.Sign.Properties.s≢opposite[s]
d_s'8802'opposite'91's'93'_3010 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_s'8802'opposite'91's'93'_3010 = erased
-- Data.Sign.Properties.s*s≡+
d_s'42's'8801''43'_3014 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'42's'8801''43'_3014 = erased
-- Data.Sign.Properties.*-identityˡ
d_'42''45'identity'737'_3016 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_3016 = erased
-- Data.Sign.Properties.*-identityʳ
d_'42''45'identity'691'_3018 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_3018 = erased
-- Data.Sign.Properties.*-identity
d_'42''45'identity_3020 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_3020
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-comm
d_'42''45'comm_3022 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_3022 = erased
-- Data.Sign.Properties.*-assoc
d_'42''45'assoc_3024 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_3024 = erased
-- Data.Sign.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_3026 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_3026 = erased
-- Data.Sign.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_3032 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_3032 = erased
-- Data.Sign.Properties.*-cancel-≡
d_'42''45'cancel'45''8801'_3038 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''8801'_3038
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-inverse
d_'42''45'inverse_3040 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'inverse_3040
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Sign.Properties.*-isMagma
d_'42''45'isMagma_3042 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_3042
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Sign.Properties.*-magma
d_'42''45'magma_3044 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'42''45'magma_3044
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Sign.Base.d__'42'__14 d_'42''45'isMagma_3042
-- Data.Sign.Properties.*-isSemigroup
d_'42''45'isSemigroup_3046 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_3046
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'42''45'isMagma_3042) erased
-- Data.Sign.Properties.*-semigroup
d_'42''45'semigroup_3048 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'42''45'semigroup_3048
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Sign.Base.d__'42'__14 d_'42''45'isSemigroup_3046
-- Data.Sign.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_3050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_3050
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe d_'42''45'isSemigroup_3046) erased
-- Data.Sign.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_3052 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'42''45'commutativeSemigroup_3052
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      d_'42''45'isCommutativeSemigroup_3050
-- Data.Sign.Properties.*-isMonoid
d_'42''45'isMonoid_3054 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_3054
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'42''45'isSemigroup_3046) (coe d_'42''45'identity_3020)
-- Data.Sign.Properties.*-monoid
d_'42''45'monoid_3056 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_3056
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) d_'42''45'isMonoid_3054
-- Data.Sign.Properties.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3058 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_3058
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'42''45'isMonoid_3054) erased
-- Data.Sign.Properties.*-commutativeMonoid
d_'42''45'commutativeMonoid_3060 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_3060
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10)
      d_'42''45'isCommutativeMonoid_3058
-- Data.Sign.Properties.*-isGroup
d_'42''45'isGroup_3062 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_'42''45'isGroup_3062
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1166
      (coe d_'42''45'isMonoid_3054) (coe d_'42''45'inverse_3040)
      (coe (\ v0 v1 v2 -> v2))
-- Data.Sign.Properties.*-group
d_'42''45'group_3064 :: MAlonzo.Code.Algebra.Bundles.T_Group_1564
d_'42''45'group_3064
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1676
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) (\ v0 -> v0)
      d_'42''45'isGroup_3062
-- Data.Sign.Properties.*-isAbelianGroup
d_'42''45'isAbelianGroup_3066 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'42''45'isAbelianGroup_3066
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1254
      (coe d_'42''45'isGroup_3062) erased
-- Data.Sign.Properties.*-abelianGroup
d_'42''45'abelianGroup_3068 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_'42''45'abelianGroup_3068
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1808
      MAlonzo.Code.Data.Sign.Base.d__'42'__14
      (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) (\ v0 -> v0)
      d_'42''45'isAbelianGroup_3066
-- Data.Sign.Properties.s*opposite[s]≡-
d_s'42'opposite'91's'93''8801''45'_3072 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'42'opposite'91's'93''8801''45'_3072 = erased
-- Data.Sign.Properties.opposite[s]*s≡-
d_opposite'91's'93''42's'8801''45'_3076 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_opposite'91's'93''42's'8801''45'_3076 = erased
